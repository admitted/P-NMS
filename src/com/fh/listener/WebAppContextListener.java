package com.fh.listener;

import com.fh.util.Const;
import org.springframework.web.context.support.WebApplicationContextUtils;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 * 类名称：WebAppContextListener.java
 * @author ：CUI
 * @date: 2017/1/2
 * @version 1.0
 */
public class WebAppContextListener implements ServletContextListener {

    public void contextDestroyed(ServletContextEvent event) {
        // TODO Auto-generated method stub
    }

    public void contextInitialized(ServletContextEvent event) {
        // TODO Auto-generated method stub
        Const.WEB_APP_CONTEXT = WebApplicationContextUtils.getWebApplicationContext(event.getServletContext());
        //System.out.println("========获取Spring WebApplicationContext");
    }

}
