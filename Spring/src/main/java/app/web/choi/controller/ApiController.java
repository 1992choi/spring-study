package app.web.choi.controller;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Date;
import java.util.Random;

import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

import org.apache.commons.codec.binary.Base32;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ApiController {
	
	private static final Logger logger = LoggerFactory.getLogger(ApiController.class);

	@Value("${kakao.js.key}")
	private String kakaoJsKey;
	
	@Value("${naver.client.id}")
	private String clientId;
	
	@Value("${naver.client.secret}")
	private String clientSecret;

	@RequestMapping(value = "/api/navi.do", method = RequestMethod.GET)
	public ModelAndView navi() {
		ModelAndView mav = new ModelAndView("api/navi");
		mav.addObject("kakaoJsKey", kakaoJsKey);
		return mav;
	}

	@RequestMapping(value = "/api/otp.do", method = RequestMethod.GET)
	public ModelAndView otp() {
		byte[] buffer = new byte[5 + 5 * 5];
		new Random().nextBytes(buffer);
		Base32 codec = new Base32();
		byte[] secretKey = Arrays.copyOf(buffer, 10);
		byte[] bEncodedKey = codec.encode(secretKey);
		String encodedKey = new String(bEncodedKey);

		String userName = "choi";
		String hostName = "test.com";
		String url = getQRBarcodeURL(userName, hostName, encodedKey); // Google OTP 앱에 userName@hostName 으로 저장됨 (양식은 상관없음) 
																	  // key를 입력하거나 생성된 QR코드를 바코드 스캔하여 등록

		ModelAndView mav = new ModelAndView("api/otp");
		mav.addObject("encodedKey", encodedKey);
		mav.addObject("url", url);
		return mav;
	}

	@RequestMapping(value = "/api/otpCheck.do", method = RequestMethod.GET)
	public ModelAndView otpCheck(@RequestParam("otpKey") String otpKey, @RequestParam("encodedKey") String encodedKey) {

		boolean isValid = false;
		long userCode = Integer.parseInt(otpKey);
		long l = new Date().getTime();
		long ll = l / 30000;
		
		try {
			// 키, 코드, 시간으로 일회용 비밀번호가 맞는지 일치 여부 확인.
			isValid = checkCode(encodedKey, userCode, ll);
		} catch (InvalidKeyException e) {
			e.printStackTrace();
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}

		ModelAndView mav = new ModelAndView("jsonView");
		mav.addObject("isValid", isValid);
		return mav;
	}
	
	@RequestMapping(value = "/api/translate.do", method = RequestMethod.GET)
	public ModelAndView translate() {
		ModelAndView mav = new ModelAndView("api/translate");
		return mav;
	}
	
	@RequestMapping(value = "/api/translateJson.do", method = RequestMethod.POST)
	public ModelAndView translateJson(@RequestParam("sourceText") String sourceText) {
		
		StringBuffer response = new StringBuffer();
         
		try {
            String text = URLEncoder.encode(sourceText, "UTF-8");
            URL url = new URL("https://openapi.naver.com/v1/papago/n2mt");
            HttpURLConnection con = (HttpURLConnection)url.openConnection();
            con.setRequestMethod("POST");
            con.setRequestProperty("X-Naver-Client-Id", clientId);
            con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
            
            String postParams = "source=ko&target=en&text=" + text;
            con.setDoOutput(true);
            DataOutputStream wr = new DataOutputStream(con.getOutputStream());
            wr.writeBytes(postParams);
            wr.flush();
            wr.close();
            
            BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream()));
            String inputLine;
            while ((inputLine = br.readLine()) != null) {
                response.append(inputLine);
            }
            br.close();
        } catch (Exception e) {
        	logger.error(e.toString());
        }
        
		ModelAndView mav = new ModelAndView("jsonView");
		mav.addObject("res", response.toString());
		return mav;
	}

	public static String getQRBarcodeURL(String user, String host, String secret) { // QR코드 주소 생성
		String url = "http://chart.apis.google.com/chart?cht=qr&chs=200x200&chl=otpauth://totp/%s@%s%%3Fsecret%%3D%s&chld=H|0";
		return String.format(url, user, host, secret);
	}

	private static boolean checkCode(String secret, long code, long t)
			throws NoSuchAlgorithmException, InvalidKeyException {
		Base32 codec = new Base32();
		byte[] decodedKey = codec.decode(secret);

		// Window is used to check codes generated in the near past.
		// You can use this value to tune how far you're willing to go.
		int window = 3;
		for (int i = -window; i <= window; ++i) {
			long hash = verifyCode(decodedKey, t + i);

			if (hash == code) {
				return true;
			}
		}

		// The validation code is invalid.
		return false;
	}

	private static int verifyCode(byte[] key, long t) throws NoSuchAlgorithmException, InvalidKeyException {
		byte[] data = new byte[8];
		long value = t;
		for (int i = 8; i-- > 0; value >>>= 8) {
			data[i] = (byte)value;
		}

		SecretKeySpec signKey = new SecretKeySpec(key, "HmacSHA1");
		Mac mac = Mac.getInstance("HmacSHA1");
		mac.init(signKey);
		byte[] hash = mac.doFinal(data);

		int offset = hash[20 - 1] & 0xF;

		// We're using a long because Java hasn't got unsigned int.
		long truncatedHash = 0;
		for (int i = 0; i < 4; ++i) {
			truncatedHash <<= 8;
			// We are dealing with signed bytes:
			// we just keep the first byte.
			truncatedHash |= (hash[offset + i] & 0xFF);
		}

		truncatedHash &= 0x7FFFFFFF;
		truncatedHash %= 1000000;

		return (int)truncatedHash;
	}
}
