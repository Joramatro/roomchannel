package com.amatic.rc.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.WordUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.amatic.rc.constants.WebConstants;
import com.amatic.rc.dto.User;
import com.amatic.rc.service.UserService;
import com.dyuproject.openid.OpenIdUser;

@Controller
public class ProfileController {

	Logger logger = Logger.getLogger(ProfileController.class.getName());

	List<Integer> sessions = new ArrayList<Integer>();

	@Resource(name = "OIdUserBean")
	OpenIdUser oIdUserBean;

	@Autowired
	private UserService userService;

	@RequestMapping(value = "/changeUserName", method = RequestMethod.POST)
	public void changeUserName(@RequestParam("userName") String userName,
			ModelMap model, HttpServletRequest request,
			HttpServletResponse response) throws IOException {

		User user = (User) request.getSession().getAttribute(
				WebConstants.SessionConstants.RC_USER);
		// check user name if already exists
		if (this.userService.existsName(WordUtils.capitalize(userName))) {
			response.getWriter().write("</html>");
		} else {
			user.setName(WordUtils.capitalize(userName));
			user = this.userService.update(user);
			request.getSession().setAttribute(
					WebConstants.SessionConstants.RC_USER, user);
		}
	}

}
