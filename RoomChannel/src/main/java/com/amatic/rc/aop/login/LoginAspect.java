package com.amatic.rc.aop.login;

import javax.annotation.Resource;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;

import com.amatic.rc.service.UserService;
import com.dyuproject.openid.OpenIdUser;

@Aspect
public class LoginAspect {

	@Resource(name = "OIdUserBean")
	OpenIdUser oIdUserBean;

	@Autowired
	private UserService userService;

	@Pointcut(value = "execution(* com.amatic.rc..*.*(..))")
	public void channelMethods() {
	}

	@Before("channelMethods()")
	public void checkUserLogged() throws Throwable {

		// Object retVal = pjp.proceed();
		// stop stopwatch

		// throw new Exception();
		/*
		 * HttpServletRequest request = ((ServletRequestAttributes)
		 * RequestContextHolder .getRequestAttributes()).getRequest();
		 * HttpSession session = request.getSession(); User user = (User)
		 * session .getAttribute(WebConstants.SessionConstants.RC_USER);
		 * 
		 * // Saltando Uservalidation
		 * 
		 * if (user == null) { user = new User(); user.setMail((String)
		 * oIdUserBean.getAttribute("email")); user.setName((String)
		 * oIdUserBean.getAttribute("nickname"));
		 * 
		 * // session.setAttribute(WebConstants.SessionConstants.RC_USER, //
		 * user); /* try { user = this.userService.findUser(user.getMail()); }
		 * catch (com.googlecode.objectify.NotFoundException nf) {
		 * this.userService.create(user, false); }
		 */

		// user.setNewUser(true);
		// }
		// return retVal;
	}
}
