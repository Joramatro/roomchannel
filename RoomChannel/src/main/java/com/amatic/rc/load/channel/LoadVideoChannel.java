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

import com.amatic.rc.constants.WebConstants;
import com.amatic.rc.dto.Theme;
import com.amatic.rc.dto.User;
import com.amatic.rc.service.ThemeService;
import com.amatic.rc.service.UserService;
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

	@Autowired
	private UserService userService;

	@RequestMapping(value = "/loadChatText", method = RequestMethod.POST)
	public void loadChat(@RequestParam("chatText") String chatText,
			@RequestParam("url") String url, ModelMap model,
			HttpServletRequest request, HttpServletResponse response)
			throws IOException, JSONException {
		ChannelService channelService = ChannelServiceFactory
				.getChannelService();

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

		User user = (User) request.getSession().getAttribute(
				WebConstants.SessionConstants.RC_USER);
		if (user != null) {
			StringBuffer sb = new StringBuffer(chatText);
			if (user.getChatHistory() == null) {
				user.setChatHistory("<br>");
			}
			user.setChatHistory(sb.append(user.getChatHistory()).toString());
			user = this.userService.update(user);
			request.getSession().setAttribute(
					WebConstants.SessionConstants.RC_USER, user);

			logger.info("chatText saved in chatHistory for user"
					+ user.getName());
		}

		channelService.sendMessage(new ChannelMessage((String) request
				.getSession().getAttribute("channelKey"), msg.toString()));

		return;
	}

	@RequestMapping(value = "/loadVideoChannel", method = RequestMethod.POST)
	public void loadText(@RequestParam("url") String url,
			@RequestParam("videoId") String videoId, ModelMap model,
			HttpServletRequest request, HttpServletResponse response)
			throws IOException, JSONException {

		ChannelService channelService = ChannelServiceFactory
				.getChannelService();

		// IF USER logged, add as Ref<User>
		Theme theme = new Theme(url, videoId);

		theme = this.themeService.addTheme(theme);

		JSONObject msg = new JSONObject();
		msg.put("url", theme.getUrl());
		msg.put("videoId", videoId);
		msg.put("chatLog", theme.getChatLog());

		logger.info("video loaded done");

		channelService.sendMessage(new ChannelMessage((String) request
				.getSession().getAttribute("channelKey"), msg.toString()));

		return;
	}
}
