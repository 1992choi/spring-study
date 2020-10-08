package app.web.choi.common;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;

import org.apache.lucene.analysis.standard.StandardAnalyzer;
import org.apache.lucene.document.Document;
import org.apache.lucene.document.Field;
import org.apache.lucene.document.TextField;
import org.apache.lucene.index.IndexWriter;
import org.apache.lucene.index.IndexWriterConfig;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.FSDirectory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
 
public class Indexer {
	
	private static final Logger logger = LoggerFactory.getLogger(Indexer.class);
	
	private IndexWriter writer;
    
    //루씬의 IndexWriter 생성
    public Indexer(String indexDir) throws IOException {
        Directory dir = FSDirectory.open(new File(indexDir).toPath());
        writer = new IndexWriter(dir, new IndexWriterConfig(new StandardAnalyzer()));
    }
    
    public void close() throws IOException {
        writer.close();
    }
    
    public int index(String dataDir, FileFilter filter) throws IOException {
        File[] files = new File(dataDir).listFiles();
        
        for (File f : files) {
            if (!f.isDirectory() && !f.isHidden() && f.exists() && f.canRead() && (filter == null || filter.accept(f))) {                
                indexFile(f);
            }
        }
        
        //색인된 문서건수 리턴
        return writer.numDocs();
    }
    
    public void indexFile(File file) throws IOException {
        Document doc = getDocument(file);
        writer.addDocument(doc);
    }
    
    public Document getDocument(File file) throws IOException {
    	String fileContent = "";
    	
    	try {
			fileContent = readFileToString(file, "utf-8", " ");
		} catch (IOException e) {
			logger.error("[Indexer_getDocument] IOException : " + e.toString());
		} catch (Exception e) {
			logger.error("[Indexer_getDocument] Exception : " + e.toString());
		}
    	
        Document doc = new Document();        
        doc.add(new TextField("filename", String.valueOf(file.getName()), Field.Store.YES));
        doc.add(new TextField("contents", String.valueOf(fileContent), Field.Store.YES));        

        return doc;
    }
    
    //FileFilter를 이용하여 해당 확장자만 걸러낸다.
    public static class TextFilesFilter implements FileFilter {
        public boolean accept(File path) {
            return true;
        	// return path.getName().toLowerCase().endsWith(".txt");
        }
    }
    
    public static String readFileToString(File file, String encode, String delimiter) throws IOException, Exception {
        StringBuffer buff = new StringBuffer();
        ArrayList<String> strList = readFile(file, encode);
        
        if (strList != null && strList.size() > 0) {
            int listCount = strList.size();
            for (int i = 0; i < listCount; i++) {
                buff.append(strList.get(i));
                buff.append(delimiter);
            }
        }
        
        return buff.toString();
    }
    
    public static ArrayList<String> readFile(File file, String encode) throws IOException, Exception {
        if (file == null || !file.exists()) {
            return null;
        }

        ArrayList<String> resultList = null;
        FileInputStream fileInputStream = null;
        InputStreamReader inputStreamReader = null;
        BufferedReader bufferedReader = null;

        try {
            fileInputStream = new FileInputStream(file);
            inputStreamReader = new InputStreamReader(fileInputStream, encode);
            bufferedReader = new BufferedReader(inputStreamReader);

            String oneLine = null;
            while ((oneLine = bufferedReader.readLine()) != null) {
                if (resultList == null) {
                    resultList = new ArrayList<String>();
                }

                resultList.add(oneLine);
            }

        } catch (IOException e) {
        	logger.error("[Indexer_readFile] IOException : " + e.toString());
        } catch (Exception e) {
        	logger.error("[Indexer_readFile] Exception : " + e.toString());
        } finally {
            try {
                if (bufferedReader != null) {
                    bufferedReader.close();
                }
            } catch (Exception e) {
                bufferedReader = null;
            }

            try {
                if (inputStreamReader != null) {
                    inputStreamReader.close();
                }
            } catch (Exception e) {
                inputStreamReader = null;
            }

            try {
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
            } catch (Exception e) {
                fileInputStream = null;
            }
        }

        return resultList;
    }
 
}