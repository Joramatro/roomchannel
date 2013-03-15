package com.amatic.rc.main.test;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.mockito.Mockito.mock;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.amatic.rc.dto.Theme;
import com.amatic.rc.service.ThemeService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:/com/amatic/resources/test/app-context-test.xml")
public class MainChannelControllerTest {

	@Resource(name = "channelKey")
	private String channelKey; // the component under test

	@Test
	public void testIsValid() throws Exception {
		assertEquals(channelKey, "xyz");
	}

	@Test
	public void willbeNameOnTheme() {
		ThemeService ts = mock(ThemeService.class);
		Theme theme = mock(Theme.class);
		theme.setName("testName");
		assertNotNull(theme);
		assertNotNull(channelKey);
	}

}
