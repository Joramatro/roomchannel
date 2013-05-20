package com.amatic.rc.dao;

import java.util.List;

import com.amatic.rc.dto.Channel;

public interface UChannelDao {

	public long create(Channel channel);

	public void delete(Channel channel);

	public Channel get(String name);

	public List<Channel> getLastChannels();

	public void update(Channel channel);

}
