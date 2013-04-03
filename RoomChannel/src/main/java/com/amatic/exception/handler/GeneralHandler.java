package com.amatic.exception.handler;

import java.util.logging.Logger;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.ServletRequestBindingException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.NoSuchRequestHandlingMethodException;
import org.springframework.web.servlet.view.json.MappingJacksonJsonView;

@ControllerAdvice
public class GeneralHandler {

	Logger logger = Logger.getLogger(GeneralHandler.class.getName());
	private final MappingJacksonJsonView jsonView = new MappingJacksonJsonView();

	private ModelAndView errorModelAndView(Exception ex) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("error");
		modelAndView.addObject("name", ex.getClass().getSimpleName());
		// modelAndView.addObject("user", userDao.readUserName());

		return modelAndView;
	}

	@ExceptionHandler(Exception.class)
	public ModelAndView handleException(Exception ex) {
		// odelAndView mav = new ModelAndView();

		logger.info("error handled");
		return errorModelAndView(ex);
	}

	@ExceptionHandler(ServletRequestBindingException.class)
	public String handleException(NoSuchRequestHandlingMethodException ex,
			HttpServletRequest request) {
		// ModelAndView mav = new ModelAndView();

		return "mainChannel";
	}
}
