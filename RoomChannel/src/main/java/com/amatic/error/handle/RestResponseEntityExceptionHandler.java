package com.amatic.error.handle;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;

@ControllerAdvice
public class RestResponseEntityExceptionHandler extends
		ResponseEntityExceptionHandler {

	@ExceptionHandler(value = { IllegalArgumentException.class,
			IllegalStateException.class })
	protected ResponseEntity<Object> handleConflict(RuntimeException ex,
			WebRequest request) {
		String bodyOfResponse = "This should be application specific";
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
