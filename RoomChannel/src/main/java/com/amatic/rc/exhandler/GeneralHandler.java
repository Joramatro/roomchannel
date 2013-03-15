package com.amatic.rc.exhandler;

import org.springframework.web.bind.ServletRequestBindingException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.mvc.multiaction.NoSuchRequestHandlingMethodException;

@ControllerAdvice
public class GeneralHandler {

	@ExceptionHandler(ServletRequestBindingException.class)
	public String handleException(NoSuchRequestHandlingMethodException ex) {
		// ModelAndView mav = new ModelAndView();

		return "mainChannel";
	}
}
