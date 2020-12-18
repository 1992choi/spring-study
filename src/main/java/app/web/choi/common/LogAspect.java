package app.web.choi.common;


import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.util.StopWatch;

@Aspect
@Component
public class LogAspect {

	private static final Logger logger = LoggerFactory.getLogger(LogAspect.class);

	@Before("execution(* app.web.choi.controller.MainController.*(..))")
	public void beforeAdvice() {
		logger.info("[beforeAdvice]");
	}
	
	@After("execution(* app.web.choi.controller.MainController.*(..))")
	public void afterAdvice() {
		logger.info("[afterAdvice]");
	}

	@Around("execution(* app.web.choi.dao.*.*(..))")
	public Object aroundAdvice(ProceedingJoinPoint pjp) throws Throwable {
		// before advice
		StopWatch sw = new StopWatch();
		sw.start();
		
		Object result = pjp.proceed();
		
		// after advice
		sw.stop();
		Long total = sw.getTotalTimeMillis();
		
		String className = pjp.getTarget().getClass().getName();
		String methodName = pjp.getSignature().getName();
		String taskName = className + "." + methodName;
		
		logger.info("[aroundAdvice] " + taskName + ", " + total + "(ms)");
		return result;
	}

}