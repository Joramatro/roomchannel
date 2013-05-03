package com.amatic.rc.controller;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;
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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.amatic.rc.constants.WebConstants;
import com.amatic.rc.dto.Channel;
import com.amatic.rc.dto.User;
import com.amatic.rc.service.UChannelService;
import com.amatic.rc.service.UserService;
import com.amatic.rc.utils.ChannelUtils;
import com.dyuproject.openid.OpenIdUser;
import com.googlecode.objectify.Key;
import com.googlecode.objectify.Ref;

@Controller
public class OperationsChannelController {

	Logger logger = Logger.getLogger(OperationsChannelController.class
			.getName());

	List<Integer> sessions = new ArrayList<Integer>();

	@Autowired
	private UChannelService uChannelService;

	@Resource(name = "OIdUserBean")
	OpenIdUser oIdUserBean;

	@Autowired
	private UserService userService;

	@RequestMapping(value = { "/deleteChannel" }, method = { RequestMethod.GET,
			RequestMethod.POST })
	public void deleteChannel(ModelMap model,
			@RequestParam("channelName") String chName,
			HttpServletRequest request, HttpServletResponse response)
			throws IOException, NoSuchAlgorithmException {

		HttpSession session = request.getSession();
		User user = (User) session
				.getAttribute(WebConstants.SessionConstants.RC_USER);

		return;

	}

	@RequestMapping(value = { "/newChannel" }, method = { RequestMethod.GET,
			RequestMethod.POST })
	public void newChannel(ModelMap model,
			@RequestParam("channelName") String chName,
			HttpServletRequest request, HttpServletResponse response)
			throws IOException, NoSuchAlgorithmException {

		HttpSession session = request.getSession();
		User user = (User) session
				.getAttribute(WebConstants.SessionConstants.RC_USER);

		Channel channel = new Channel();

		channel.setKey(ChannelUtils.SHA1(chName));
		channel.setNbrViewers(1);
		channel.setOwner(user.getName());
		channel.setName(chName);
		channel.setUser(Ref.create(Key.create(User.class, user.getMail())));
		uChannelService.addChannel(channel);

		List<Ref<Channel>> lChannels = user.getChannels();
		lChannels.add(Ref.create(Key.create(Channel.class, channel.getId())));

		user = this.userService.update(user);
		request.getSession().setAttribute(
				WebConstants.SessionConstants.RC_USER, user);

		request.getSession().setAttribute("newChannel", chName);

		return;

	}

}
