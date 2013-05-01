package com.amatic.rc.main;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
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
import org.springframework.web.bind.annotation.RequestParam;

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
import com.googlecode.objectify.Key;
import com.googlecode.objectify.Ref;

@Controller
public class MainChannelController {

	Logger logger = Logger.getLogger(MainChannelController.class.getName());

	List<Integer> sessions = new ArrayList<Integer>();

	@Autowired
	private ThemeService themeService;

	@Autowired
	private UChannelService uChannelService;

	@Resource(name = "OIdUserBean")
	OpenIdUser oIdUserBean;

	@Autowired
	private UserService userService;

	@RequestMapping(value = { "/ch/{name}" }, method = RequestMethod.GET)
	public String loadChannel(ModelMap model, @PathVariable String name,
			HttpServletRequest request, HttpServletResponse response)
			throws IOException {

		ChannelService channelService = ChannelServiceFactory
				.getChannelService();

		HttpSession session = request.getSession();
		User user = (User) session
				.getAttribute(WebConstants.SessionConstants.RC_USER);

		// load channel
		Channel channel = uChannelService.getChannel(name);
		if (channel == null) {
			return "channelNotFound";
		}
		String token = channelService.createChannel(channel.getKey());

		// load channel images

		logger.info("channel definitions done");

		model.addAttribute("token", token);

		model.addAttribute("user", user);

		// Getting first 32 elements
		List<Theme> listThemes = themeService.loadAllThemes();

		model.addAttribute("lastPlayedList", listThemes);

		return "loggedChannel";
		// return "mainChannel";
	}

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

		// Getting first 32 elements
		List<Theme> listThemes = themeService.loadAllThemes();

		model.addAttribute("lastPlayedList", listThemes);

		// Saltando Uservalidation
		HttpSession session = request.getSession();
		User user = (User) session
				.getAttribute(WebConstants.SessionConstants.RC_USER);
		if (user == null) {
			user = new User();
			user.setMail((String) oIdUserBean.getAttribute("email"));
			user.setName((String) oIdUserBean.getAttribute("nickname"));

			session.setAttribute(WebConstants.SessionConstants.RC_USER, user);

			try {
				user = this.userService.findUser(user.getMail());
			} catch (com.googlecode.objectify.NotFoundException nf) {
				this.userService.create(user, false);
			}

			user.setNewUser(true);
		}
		// return "loggedChannel";
		return "mainChannel";
	}

	@RequestMapping(value = { "/newChannel" }, method = { RequestMethod.GET,
			RequestMethod.POST })
	public void newChannel(ModelMap model,
			@RequestParam("channelName") String chName,
			HttpServletRequest request, HttpServletResponse response)
			throws IOException {

		HttpSession session = request.getSession();
		User user = (User) session
				.getAttribute(WebConstants.SessionConstants.RC_USER);

		Channel channel = new Channel();

		channel.setKey(user.getMail());
		channel.setNbrViewers(1);
		channel.setOwner(user.getMail());
		channel.setName(chName);
		channel.setUser(Ref.create(Key.create(User.class, user.getMail())));
		uChannelService.addChannel(channel);

		List<Ref<Channel>> lChannels = user.getChannels();
		lChannels.add(Ref.create(Key.create(Channel.class, channel.getId())));
		// user.setChannels(lChannels);
		user = this.userService.update(user);
		request.getSession().setAttribute(
				WebConstants.SessionConstants.RC_USER, user);

		request.getSession().setAttribute("newChannel", chName);

		return;
		// response.sendRedirect("/ch/" + chName);

	}

}
