package com.amatic.rc.main;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.amatic.rc.dto.Theme;
import com.amatic.rc.service.ThemeService;
import com.google.appengine.api.channel.ChannelService;
import com.google.appengine.api.channel.ChannelServiceFactory;

@Controller
public class MainChannelController {

	Logger logger = Logger.getLogger(MainChannelController.class.getName());

	List<Integer> sessions = new ArrayList<Integer>();

	@Autowired
	private ThemeService themeService;

	@SuppressWarnings("unchecked")
	@RequestMapping(value = { "/index", "/" }, method = { RequestMethod.GET,
			RequestMethod.POST })
	public String maininit(ModelMap model, HttpServletRequest request,
			HttpServletResponse response) throws IOException {

		ChannelService channelService = ChannelServiceFactory
				.getChannelService();
		String channelKey = "xyz";
		String token = channelService.createChannel(channelKey);

		logger.info("channel definitions done");

		model.addAttribute("token", token);

		List<Theme> listThemes = themeService.loadAllThemes();

		model.addAttribute("broadcastList", listThemes);
		return "mainChannel";
	}

}
