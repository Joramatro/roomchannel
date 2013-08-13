package com.amatic.rc.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.logging.Logger;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.amatic.rc.constants.WebConstants;
import com.amatic.rc.dto.Channel;
import com.amatic.rc.dto.Theme;
import com.amatic.rc.dto.User;
import com.amatic.rc.service.ThemeService;
import com.amatic.rc.service.UChannelService;
import com.amatic.rc.service.UserService;
import com.dyuproject.openid.OpenIdUser;
import com.google.appengine.api.channel.ChannelService;
import com.google.appengine.api.channel.ChannelServiceFactory;

@Controller
public class ChannelController {

	Logger logger = Logger.getLogger(ChannelController.class.getName());

	List<Integer> sessions = new ArrayList<Integer>();

	@Autowired
	private ThemeService themeService;

	@Autowired
	private UChannelService uChannelService;

	@Resource(name = "OIdUserBean")
	OpenIdUser oIdUserBean;

	@Autowired
	private UserService userService;
	
	private static ConcurrentHashMap<String, String> mapToken = new ConcurrentHashMap<String, String>();


	@RequestMapping(value = { "/ch/{name}" }, method = RequestMethod.GET)
	public String loadChannel(ModelMap model, @PathVariable String name,
			HttpServletRequest request, HttpServletResponse response)
			throws IOException {

		ChannelService channelService = ChannelServiceFactory
				.getChannelService();

		HttpSession session = request.getSession();
		User user = (User) session
				.getAttribute(WebConstants.SessionConstants.RC_USER);
		if (user != null) {
			// loading <Ref> attributes
			user = userService.findUser(user.getMail());
		}

		// load channel
		String nameurl = name.replaceAll("-", " ");
		Channel channel = uChannelService.getChannel(nameurl);
		if (channel == null) {
			return "channelNotFound";
		}
		// incremeanting number viewers
		channel.setNbrViewers(channel.getNbrViewers() + 1);
		uChannelService.update(channel);

		session.setAttribute("channelKey", channel.getKey());
		String token;
		if(mapToken.get(channel.getKey())==null){
			token = channelService.createChannel(channel.getKey());
			mapToken.put(channel.getKey(), token);
		}else{
			token = mapToken.get(channel.getKey());
		}
			
//		ChToken chToken;
//		if(mapToken.get(channel.getKey())==null){
//			String token = channelService.createChannel(channel.getKey());
//			long age = new Date().getTime();
//			chToken = new ChToken(token, age);
//			mapToken.put(channel.getKey(), chToken);
//		}else{
//			chToken = mapToken.get(channel.getKey());
//			long currentAge = new Date().getTime();
//			long age = currentAge - chToken.getAge();
//			if(age > TWO_HOURS){
//				String token = channelService.createChannel(channel.getKey());
//				long newage = new Date().getTime();
//				chToken = new ChToken(token, newage);
//				mapToken.put(channel.getKey(), chToken);
//			}
//		}
		// load channel images

		logger.info("channel definitions done");

		model.addAttribute("token", token);

		model.addAttribute("user", user);

		model.addAttribute("channel", channel);

		// Getting first 32 elements
		List<Theme> listThemes = themeService.loadAllThemes();

		model.addAttribute("lastPlayedList", listThemes);

		User userCh = userService.findUser(channel.getUserDeref().getMail());

		List<Channel> userChannels = userCh.getChannelsDeref();

		model.addAttribute("userChannels", userChannels);

		return "channel";
		// return "mainChannel";
	}
}