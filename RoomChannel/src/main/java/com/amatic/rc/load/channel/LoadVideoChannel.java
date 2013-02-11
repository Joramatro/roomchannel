package com.amatic.rc.load.channel;

import java.io.IOException;
import java.util.logging.Logger;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.appengine.api.channel.ChannelMessage;
import com.google.appengine.api.channel.ChannelService;
import com.google.appengine.api.channel.ChannelServiceFactory;
import com.google.appengine.labs.repackaged.org.json.JSONException;
import com.google.appengine.labs.repackaged.org.json.JSONObject;

@Controller
public class LoadVideoChannel {

	Logger logger = Logger.getLogger(LoadVideoChannel.class.getName());

	@RequestMapping(value = "/loadVideoChannel", method = RequestMethod.GET)
	public void loadText(@RequestParam("url") String url, ModelMap model,
			HttpServletRequest request, HttpServletResponse response)
			throws IOException, JSONException {
		ChannelService channelService = ChannelServiceFactory
				.getChannelService();
		String channelKey = "xyz";

		String urlOembed = "<a href='" + url + "' class='oembed'></a>";
		JSONObject msg = new JSONObject();
		msg.put("urlOembed", urlOembed);

		logger.info("msg done");

		channelService.sendMessage(new ChannelMessage(channelKey, msg
				.toString()));

		return;
	}

}
