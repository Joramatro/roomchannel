package com.amatic.rc.dao.impl;

import static com.googlecode.objectify.ObjectifyService.ofy;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.amatic.rc.dao.UChannelDao;
import com.amatic.rc.dto.Channel;
import com.googlecode.objectify.Key;
import com.googlecode.objectify.Result;

@Repository
public class UChannelDaoImpl implements UChannelDao {

	public void copyChannel(Channel updateChannel, Channel channel) {
		updateChannel.setlImages(channel.getlImages());
		updateChannel.setKey(channel.getKey());
		updateChannel.setNbrViewers(channel.getNbrViewers());
		updateChannel.setName(channel.getName());
	}

	@Override
	public long create(Channel channel) {
		channel.setDateCreated(new Date());
		Result<Key<Channel>> result = ofy().save().entity(channel);

		assert channel.id == null;

		result.now();

		assert channel.id != null;

		return channel.getId();
	}

	@Override
	public Channel get(String name) {

		Channel channel = ofy().load().type(Channel.class).filter("name", name)
				.first().get();

		return channel;
	}

	@Override
	public List<Channel> getLastChannels() {

		List<Channel> lastChannels = ofy().load().type(Channel.class)
				.order("-dateCreated").list();

		if (lastChannels.size() > 10) {
			lastChannels = lastChannels.subList(0, 10);
		}

		return lastChannels;
	}

	@Override
	public void update(Channel channel) {
		Channel channelUpd = ofy().load().type(Channel.class)
				.id(channel.getId()).safeGet();

		copyChannel(channelUpd, channel);

		ofy().save().entity(channelUpd);

	}
}