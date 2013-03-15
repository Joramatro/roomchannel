package com.amatic.rc.aop.login;

import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;

@Aspect
public class LoginAspect {

	@Pointcut(value = "execution(* com.amatic.rc..*.*(..))")
	public void channelMethods() {
	}

	@After("channelMethods()")
	public Object checkUserLogged() throws Throwable {

		throw new Exception();
	}
}
