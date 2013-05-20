package com.amatic.rc.service;

import java.util.List;

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

	public void deleteChannel(Channel channel) {
		this.channelDao.delete(channel);
	}

	public Channel getChannel(String channel) {
		return this.channelDao.get(channel);
	}

	public List<Channel> getLastChannels() {
		return this.channelDao.getLastChannels();
	}

	public void update(Channel channel) {
		this.channelDao.update(channel);
	}

}
