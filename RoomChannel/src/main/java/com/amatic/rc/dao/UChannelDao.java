package com.amatic.rc.dao;

import com.amatic.rc.dto.Channel;

public interface UChannelDao {

	public long create(Channel channel);

	public Channel get(String name);

	public void update(Channel channel);

}
