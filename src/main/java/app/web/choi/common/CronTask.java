package app.web.choi.common;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.scheduling.annotation.Scheduled;

public class CronTask {
	private static final Logger logger = LoggerFactory.getLogger(CronTask.class);
    
    @Scheduled(cron="* * * * * *")
    public void scheduleRun() {
    	logger.info("###Scheduler Run");
    }
}
