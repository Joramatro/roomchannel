package com.amatic.rc.dao.impl;

import static com.googlecode.objectify.ObjectifyService.ofy;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.amatic.rc.dao.ThemeDao;
import com.amatic.rc.dto.Theme;

@Repository
public class ThemeDaoImpl implements ThemeDao {

	@Override
	public void add(Theme theme) {
		ofy().save().entity(theme);
	}

	@Override
	public List<Theme> loadAll() {
		List<Theme> themes;

		themes = ofy().load().type(Theme.class).list();

		return themes;
	}
}
