package app.web.choi.controller;

import java.awt.Graphics;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.*;
import java.util.List;
import java.util.Locale;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class EtcController {

	private static final Logger logger = LoggerFactory.getLogger(EtcController.class);

	@Value("${upload.path}")
	private String uploadPath;
	
	@RequestMapping(value = "/etc/imgResize.do", method = RequestMethod.GET)
	public ModelAndView imgResize() {

		String mainPosition = "W"; // W:너비중심, H:높이중심, X:설정한 수치로(비율무시)
		int resizeImgWidth = 200;
		int resizeImageHeight = 300;
		
		Image image;
		String originFilePath = "/root/dev/apache-tomcat-8.5.55/webapps/choi/images/about.jpg"; // 원본이미지 경로
		int originImgWidth; // 원본이미지 너비
		int originImgHeight; // 원본이미지 높이
		double ratio = 1.0; // 축소비율
		String resizeFilePath = "/root/dev/apache-tomcat-8.5.55/webapps/choi/images/about_resize.jpg"; // 리사이즈된 이미지 경로
		int w = 0; // 리사이즈할 너비
		int h = 0; // 리사이즈할 높이

		try {
			// 원본 이미지 읽기
			image = ImageIO.read(new File(originFilePath));
			originImgWidth = image.getWidth(null);
			originImgHeight = image.getHeight(null);

			if (resizeImgWidth >= originImgWidth && resizeImageHeight >= originImgHeight) { // 변경할 크기가 원본보다 큰 경우
				mainPosition = "X"; // 중심계산 안함(=원본사용)
			} else if ((originImgWidth / resizeImgWidth) > (originImgHeight / resizeImageHeight)) {
				mainPosition = "H"; // 높이중심
			} else {
				mainPosition = "W"; // 너비중심
			}

			if ("X".equals(mainPosition)) {
				w = originImgWidth;
				h = originImgHeight;
			} else {
				// 수정 이미지보다 원본이 작을 경우 처리 S
				if (resizeImgWidth > originImgWidth) {
					resizeImgWidth = originImgWidth;
					resizeImageHeight = resizeImageHeight * originImgWidth / resizeImageHeight;
				}
				if (resizeImageHeight > originImgHeight) {
					resizeImgWidth = resizeImgWidth * originImgWidth / resizeImgWidth;
					resizeImageHeight = originImgHeight;
				}
				// 수정 이미지보다 원본이 작을 경우 처리 E

				if ("W".equals(mainPosition)) { // 너비 기준
					ratio = (double) resizeImgWidth / (double) originImgWidth;
				} else if ("H".equals(mainPosition)) { // 높이 기준
					ratio = (double) resizeImageHeight / (double) originImgHeight;
				}

				w = (int) (originImgWidth * ratio);
				h = (int) (originImgHeight * ratio);
			}

			Image resizeImg = image.getScaledInstance(w, h, Image.SCALE_SMOOTH);

			// Crop & Move
			int gapWidth = 0;
			int gapHeight = 0;
			if (w > resizeImgWidth) {
				gapWidth = w - resizeImgWidth;
				w = resizeImgWidth;
			}
			if (h > resizeImageHeight) {
				gapHeight = h - resizeImageHeight;
				h = resizeImageHeight;
			}

			BufferedImage newImage = new BufferedImage(w, h, BufferedImage.TYPE_INT_RGB);
			newImage = newImage.getSubimage(0, 0, resizeImgWidth > w ? w : resizeImgWidth,
					resizeImageHeight > h ? h : resizeImageHeight); // Crop
			Graphics g = newImage.getGraphics();
			g.drawImage(resizeImg, gapWidth == 0 ? 0 : -(gapWidth / 2), gapHeight == 0 ? 0 : -(gapHeight / 2), null); // Move
			g.dispose();
			ImageIO.write(newImage, "jpg", new File(resizeFilePath));
		} catch (Exception e) {
			logger.debug("Img Resize Fail : " + e.toString());
		}
	

		ModelAndView mav = new ModelAndView("etc/imgResize");
		return mav;

	}

	@RequestMapping(value = "/etc/fileUpload.do", method = RequestMethod.GET)
	public ModelAndView fileUpload() {

		ModelAndView mav = new ModelAndView("etc/fileUpload");
		return mav;

	}

	@RequestMapping(value = "/etc/fileUploadJson.do", method = RequestMethod.POST)
	public ModelAndView fileUploadJson(MultipartHttpServletRequest request) {

		List<MultipartFile> fileList = request.getFiles("file");

		File fileDir = new File(uploadPath);
		if (!fileDir.exists()) {
			fileDir.mkdirs();
		}

		String fileName = "";
		for (MultipartFile mf : fileList) {
			String originFileName = mf.getOriginalFilename();
			try {
				mf.transferTo(new File(uploadPath, originFileName));
				fileName = originFileName;
			} catch (Exception e) {
				logger.debug("Img Upload Fail : " + e.toString());
			}
		}

		ModelAndView mav = new ModelAndView("jsonView");
		mav.addObject("fileName", fileName);
		return mav;

	}

	@RequestMapping(value = "/etc/fileDownload.do")
	public void fileDownload(HttpServletRequest request, HttpServletResponse response,
			@RequestParam("fileName") String fileName) {

		String filePath = uploadPath + "/" + fileName;

		File file = new File(filePath);
		if (!file.exists()) {
			return;
		}

		response.setContentType("application/octer-stream");
		response.setHeader("Content-Transfer-Encoding", "binary;");
		response.setHeader("Content-Disposition", "attachment; filename=\"" + fileName + "\"");

		try {
			OutputStream os = response.getOutputStream();
			FileInputStream fis = new FileInputStream(filePath);

			int ncount = 0;
			byte[] bytes = new byte[512];

			while ((ncount = fis.read(bytes)) != -1 ) {
				os.write(bytes, 0, ncount);
			}
			fis.close();
			os.close();
		} catch (FileNotFoundException ex) {
			logger.debug("fileDownload() FileNotFoundException");
		} catch (IOException ex) {
			logger.debug("fileDownload() IOException");
		}

	}

	@RequestMapping(value = "/etc/multilingue.do", method = RequestMethod.GET)
	public ModelAndView multilingue(Locale locale) {
		ModelAndView mav = new ModelAndView("etc/multilingue");
		mav.addObject("localeLang", locale.getLanguage().toLowerCase());
		
		return mav;
	}
	
	@RequestMapping(value = "/etc/chart.do", method = RequestMethod.GET)
	public ModelAndView chart() {

		ModelAndView mav = new ModelAndView("etc/chart");
		return mav;

	}
}