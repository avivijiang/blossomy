package com.filter;  
  
import java.io.IOException;  
  
import javax.servlet.Filter;  
import javax.servlet.FilterChain;  
import javax.servlet.FilterConfig;  
import javax.servlet.ServletException;  
import javax.servlet.ServletRequest;  
import javax.servlet.ServletResponse;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
  
public class MyFilter implements Filter {  
  
    public MyFilter() {  
        // TODO Auto-generated constructor stub  
    }  
  
    public void destroy() {  
        // TODO Auto-generated method stub  
  
    }  
  
    public void doFilter(ServletRequest request, ServletResponse response,  
            FilterChain filterChain) throws IOException, ServletException {  
        // �����û������ж��Ƿ��¼  
        HttpServletRequest httpServletRequest = (HttpServletRequest)request;  
        HttpServletResponse httpServletResponse = (HttpServletResponse)response;  
          
        httpServletRequest.setCharacterEncoding("utf-8");  
        httpServletResponse.setCharacterEncoding("utf-8");  
        response.setContentType("text/html; charset=UTF-8");
          
        String username = (String)httpServletRequest.getSession().getAttribute("username");  
          
        if (username == null) {  
            String path = httpServletRequest.getContextPath();  
            httpServletResponse.sendRedirect(path+"/index.jsp");  
        }         
        filterChain.doFilter(httpServletRequest, httpServletResponse);  
    }  
  
    public void init(FilterConfig arg0) throws ServletException {  
        // TODO Auto-generated method stub  
  
    }  
  
}  