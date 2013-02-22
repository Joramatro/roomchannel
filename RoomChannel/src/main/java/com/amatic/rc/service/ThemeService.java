package com.amatic.rc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.amatic.rc.dao.ThemeDao;
import com.amatic.rc.dto.Theme;

@Service
public class ThemeService {
	@Autowired
	private ThemeDao themeDao;

	public void addTheme(Theme theme) {
		this.themeDao.add(theme);
	}

	public List<Theme> loadAllThemes() {
		return this.themeDao.loadAll();
	}
}
