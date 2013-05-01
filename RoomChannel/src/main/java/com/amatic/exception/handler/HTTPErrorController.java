package com.amatic.exception.handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HTTPErrorController {

	@RequestMapping(value = "/errors/404", method = { RequestMethod.GET,
			RequestMethod.POST })
	public String handle404(ModelMap model, HttpServletRequest request,
			HttpServletResponse response) {
		return "error.jsp";
	}

	// @RequestMapping(value="/errors/403.html")
	// ...

}