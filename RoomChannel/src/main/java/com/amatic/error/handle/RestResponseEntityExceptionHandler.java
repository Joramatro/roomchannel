package com.amatic.error.handle;

import java.util.logging.Logger;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;

import com.amatic.rc.dao.impl.ThemeDaoImpl;
import com.google.appengine.labs.repackaged.com.google.common.base.Throwables;

@ControllerAdvice
public class RestResponseEntityExceptionHandler extends
		ResponseEntityExceptionHandler {

	Logger logger = Logger.getLogger(RestResponseEntityExceptionHandler.class.getName());
	
	@ExceptionHandler(value = Exception.class)
	protected ResponseEntity<Object> handleConflict(RuntimeException ex,
			WebRequest request) {
		String bodyOfResponse = "This should be application specific";
		logger.severe(Throwables.getStackTraceAsString(ex));
		return handleExceptionInternal(ex, bodyOfResponse, new HttpHeaders(),
				HttpStatus.CONFLICT, request);
	}

	/*
	 * @ExceptionHandler(ServletRequestBindingException.class) public
	 * ResponseEntity<String> handleServletRequestBindingException(
	 * ServletRequestBindingException ex) { return new
	 * ResponseEntity<String>("MISSING REQUIRED HEADER",
	 * HttpStatus.PRECONDITION_REQUIRED); }
	 */
}
