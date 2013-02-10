package com.amatic.rc;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.*;


import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainChannelController {

    List<Integer> sessions = new ArrayList<Integer>();
    
    Logger logger = LogManager.getLogger(MainChannelController.class.getName());
    @SuppressWarnings("unchecked")
    @RequestMapping(value = { "/index", "/" }, method = { RequestMethod.GET,
            RequestMethod.POST })
    public String getPostScreen(ModelMap model, HttpServletRequest request,
            HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        
        logger.trace("Entering application.");
        logger.error("checking");

        return "mainChannel";
    }

}
