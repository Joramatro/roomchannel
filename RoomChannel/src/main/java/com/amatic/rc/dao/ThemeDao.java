package com.amatic.rc.dao;

import java.util.List;

import com.amatic.rc.dto.Theme;

public interface ThemeDao {

	public Theme add(Theme theme);

	public List<Theme> loadAll();

}
