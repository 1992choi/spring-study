package app.web.choi.common;

import java.io.File;
import java.io.IOException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.scheduling.annotation.Scheduled;

import app.web.choi.common.Indexer.TextFilesFilter;

public class CronTask {
	
	private static final Logger logger = LoggerFactory.getLogger(CronTask.class);
    
	@Value("${upload.path}")
	private String uploadPath;
	
	@Value("${search.engine.index.path}")
	private String searchEngineIndexDirPath;
    
    @Scheduled(cron = "0 0 * * * *")
    public void scheduleRun() {
    	logger.info("###Scheduler Run");
    	
    	// Indexing
    	File folder = new File(searchEngineIndexDirPath);
    	if (folder.exists()) {
	    	File[] fileList = folder.listFiles(); //파일리스트 얻어오기
			
			for (int i = 0; i < fileList.length; i++) {
				fileList[i].delete(); //파일 삭제 
				System.out.println("파일이 삭제되었습니다.");
			}
    	}
		
    	Indexer indexer = null;
        int indexCnt = 0;        
        try {
	        indexer = new Indexer(searchEngineIndexDirPath);
	        indexCnt = indexer.index(uploadPath, new TextFilesFilter());
	        logger.info("Indexing SUCCESS! indexCnt : " + indexCnt);
        } catch (Exception e) {
        	logger.error("Indexing ERROR : " + e.toString());
        } finally {
            try {
				indexer.close();
			} catch (IOException e) {
				indexer = null;
			}
        }
    }
}
