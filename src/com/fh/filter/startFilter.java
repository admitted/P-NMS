package com.fh.filter;

import com.fh.controller.base.BaseController;

import javax.servlet.*;
import java.io.IOException;
import java.util.Calendar;
import java.util.Date;
import java.util.Timer;
import java.util.TimerTask;

/**
 * 启动tomcat时运行此类
 * @author cui
 * @date： 2015/12/17
 * @version 1.2
 */
public class startFilter extends BaseController implements Filter{
	
	/**
	 * 初始化
	 */
	public void init(FilterConfig fc) throws ServletException {
		
	}
	


	/**
	 * 计时器(废弃)用quartz代替
	 */
	public void timer() {
		Calendar calendar = Calendar.getInstance();
		calendar.set(Calendar.HOUR_OF_DAY, 9);  // 控制时
		calendar.set(Calendar.MINUTE, 0); 		// 控制分
		calendar.set(Calendar.SECOND, 0); 		// 控制秒
		Date time = calendar.getTime(); 		// 得出执行任务的时间
		Timer timer = new Timer();
		timer.scheduleAtFixedRate(new TimerTask() {
			public void run() {
				//PersonService personService = (PersonService)ApplicationContext.getBean("personService");
				//System.out.println("-------设定要指定任务--------");
			}
		}, time, 1000*60*60*24);// 这里设定将延时每天固定执行
	}
	
	public void destroy() {
		// TODO Auto-generated method stub
	}
	
	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain arg2) throws IOException, ServletException {
		// TODO Auto-generated method stub
	}
	
}
