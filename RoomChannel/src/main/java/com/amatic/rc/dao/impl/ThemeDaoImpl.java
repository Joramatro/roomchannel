package com.amatic.rc.dao.impl;

import static com.googlecode.objectify.ObjectifyService.ofy;

import java.util.Date;
import java.util.List;
import java.util.logging.Logger;

import org.springframework.stereotype.Repository;

import com.amatic.rc.dao.ThemeDao;
import com.amatic.rc.dto.Theme;
import com.google.appengine.labs.repackaged.com.google.common.base.Throwables;
import com.googlecode.objectify.Ref;
import com.googlecode.objectify.Work;

@Repository
public class ThemeDaoImpl implements ThemeDao {

	Logger logger = Logger.getLogger(ThemeDaoImpl.class.getName());

	@Override
	public Theme add(final Theme theme) {
		final Ref<Theme> myTheme = ofy().load().type(Theme.class)
				.filter("url", theme.getUrl()).first();

		Theme cTheme = ofy().transact(new Work<Theme>() {
			@Override
			public Theme run() {
				Theme currentTheme = null;
				try {
					if (myTheme.getKey() == null) {
						theme.setDate(new Date());
						ofy().save().entity(theme);
						return theme;
					}
					currentTheme = ofy().load().key(myTheme.getKey()).get();
					String chatLog = currentTheme.getChatLog();
					StringBuffer chatLogBf = null;
					if (chatLog != null) {
						chatLogBf = new StringBuffer(chatLog);
					} else {
						chatLogBf = new StringBuffer();
					}
					if (theme.getChatLog() != null) {
						chatLogBf.append(theme.getChatLog());
					}
					currentTheme.setChatLog(new String(chatLogBf.toString()));

					currentTheme.setDate(new Date());

					ofy().save().entity(currentTheme);
				} catch (Exception excep) {
					logger.warning(Throwables.getStackTraceAsString(excep));
				}
				return currentTheme;
			}
		});
		return cTheme;

	}

	@Override
	public List<Theme> loadAll() {
		List<Theme> themes;
		try {
			themes = ofy().load().type(Theme.class).order("-date").list()
					.subList(0, 32);
		} catch (java.lang.reflect.UndeclaredThrowableException e) {
			themes = ofy().load().type(Theme.class).order("-date").list();
		}

		return themes;
	}
}
