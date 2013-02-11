package com.amatic.rc;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainChannelController {

	List<Integer> sessions = new ArrayList<Integer>();

	Logger logger = Logger.getLogger(MainChannelController.class.getName());

	@SuppressWarnings("unchecked")
	@RequestMapping(value = { "/index", "/" }, method = { RequestMethod.GET,
			RequestMethod.POST })
	public String maininit(ModelMap model, HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		HttpSession session = request.getSession();

		logger.info("checking");

		return "mainChannel";
	}

}
