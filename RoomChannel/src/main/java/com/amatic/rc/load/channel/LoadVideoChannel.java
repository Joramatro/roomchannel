package com.amatic.rc.load.channel;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Logger;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.amatic.rc.dto.Theme;
import com.amatic.rc.service.ThemeService;
import com.google.appengine.api.channel.ChannelMessage;
import com.google.appengine.api.channel.ChannelService;
import com.google.appengine.api.channel.ChannelServiceFactory;
import com.google.appengine.labs.repackaged.org.json.JSONException;
import com.google.appengine.labs.repackaged.org.json.JSONObject;

@Controller
public class LoadVideoChannel {

	Logger logger = Logger.getLogger(LoadVideoChannel.class.getName());

	@Autowired
	private ThemeService themeService;

	@RequestMapping(value = "/loadChatText", method = RequestMethod.POST)
	public void loadChat(@RequestParam("chatText") String chatText,
			@RequestParam("url") String url, ModelMap model,
			HttpServletRequest request, HttpServletResponse response)
			throws IOException, JSONException {
		ChannelService channelService = ChannelServiceFactory
				.getChannelService();
		String channelKey = "xyz";

		JSONObject msg = new JSONObject();
		msg.put("chatText", chatText);
		if (url != null) {
			Theme theme = new Theme(url);
			SimpleDateFormat sdf = new SimpleDateFormat("d MMM yyyy hh:mm");
			Date now = new Date();
			String strDate = sdf.format(now);
			chatText = chatText.replace("<p>", "<p>" + strDate + " ");
			chatText = chatText.replace(": </b>", " said:</b> ");
			theme.setChatLog(chatText);

			theme = this.themeService.addTheme(theme);
		}

		logger.info("chatText ready to send");

		channelService.sendMessage(new ChannelMessage(channelKey, msg
				.toString()));

		return;
	}

	@RequestMapping(value = "/loadVideoChannel", method = RequestMethod.POST)
	public void loadText(@RequestParam("url") String url, ModelMap model,
			HttpServletRequest request, HttpServletResponse response)
			throws IOException, JSONException {
		String channelKey = "xyz";

		// IF USER logged, add as Ref<User>
		Theme theme = new Theme(url);

		theme = this.themeService.addTheme(theme);

		String urlOembed = "<a href='" + theme.getUrl()
				+ "' class='oembed'></a>";
		JSONObject msg = new JSONObject();
		msg.put("urlOembed", urlOembed);
		msg.put("url", theme.getUrl());
		msg.put("chatLog", theme.getChatLog());

		logger.info("video loaded done");
		
		ChannelService channelService = ChannelServiceFactory
				.getChannelService();

		channelService.sendMessage(new ChannelMessage(channelKey, msg
				.toString()));

		return;
	}

}
