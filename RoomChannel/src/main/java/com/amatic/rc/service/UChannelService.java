package com.amatic.rc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.amatic.rc.dao.UChannelDao;
import com.amatic.rc.dto.Channel;

@Service
public class UChannelService {
	@Autowired
	private UChannelDao channelDao;

	public long addChannel(Channel channel) {
		return this.channelDao.create(channel);
	}

	public Channel getChannel(String channel) {
		return this.channelDao.get(channel);
	}

	public void update(Channel channel) {
		this.channelDao.update(channel);
	}

}
