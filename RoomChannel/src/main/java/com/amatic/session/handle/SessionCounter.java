package com.amatic.session.handle;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import com.amatic.rc.dto.Theme;
import com.google.appengine.api.channel.ChannelMessage;
import com.google.appengine.api.channel.ChannelService;
import com.google.appengine.api.channel.ChannelServiceFactory;
import com.google.appengine.labs.repackaged.org.json.JSONException;
import com.google.appengine.labs.repackaged.org.json.JSONObject;
import com.googlecode.objectify.ObjectifyService;

public class SessionCounter implements HttpSessionListener {

	static {
		ObjectifyService.register(Theme.class);
	}

	private static List sessions = new ArrayList();

	private static Integer nbrConnections = new Integer(0);

	public static void setNumberSessions(boolean lastConnected) {

		ChannelService channelService = ChannelServiceFactory
				.getChannelService();

		String channelKey = "xyz";

		JSONObject msg = new JSONObject();
		try {
			if (lastConnected) {
				msg.put("nbrUsrs", ++nbrConnections);
			} else {
				msg.put("nbrUsrs", --nbrConnections);
			}
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		channelService.sendMessage(new ChannelMessage(channelKey, msg
				.toString()));
	}

	public SessionCounter() {
	}

	@Override
	public void sessionCreated(HttpSessionEvent event) {
		HttpSession session = event.getSession();
		sessions.add(session.getId());

		// setNumberSessions();
	}

	@Override
	public void sessionDestroyed(HttpSessionEvent event) {
		HttpSession session = event.getSession();
		sessions.remove(session.getId());

		// setNumberSessions();
	}
}
