package com.amatic.rc.main.test;

import static org.junit.Assert.assertEquals;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:/com/amatic/resources/test/app-context-test.xml")
public class MainChannelControllerTest {

	@Resource(name = "channelKey")
	private String channelKey; // the component under test

	@Test
	public void testIsValid() throws Exception {
		assertEquals(channelKey, "xyz");
	}

}
