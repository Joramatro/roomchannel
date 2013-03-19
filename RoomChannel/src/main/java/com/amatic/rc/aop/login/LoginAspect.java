package com.amatic.rc.aop.login;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;

@Aspect
public class LoginAspect {

	@Pointcut(value = "execution(* com.amatic.rc..*.*(..))")
	public void channelMethods() {
	}

	@Around("channelMethods()")
	public Object checkUserLogged(ProceedingJoinPoint pjp) throws Throwable {
		Object retVal = pjp.proceed();
		// stop stopwatch
		return retVal;
		// throw new Exception();
	}
}
