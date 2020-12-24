<%@ include file="config.jsp" %>    
<%@ include file="user.jsp" %>
<%@ include file="new.jsp" %>
<%@ include file="lanmu.jsp" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
           <%

           //🚀第一步，声明配置文件
           Conf setting=new Conf();

           //🔥User model的使用
           User u = new User();
            // out.println(u.get_data(setting.getUrl(),setting.getUname(),setting.getPwd()));
                
            //🔥News model的使用
            New n = new New();
            //out.println(n.get_data(setting.getUrl(),setting.getUname(),setting.getPwd()));

            Lanmu l =new Lanmu();
            out.println(l.get_data(setting.getUrl(),setting.getUname(),setting.getPwd()));
           %>