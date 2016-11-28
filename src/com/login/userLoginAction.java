package com.login;  

import java.io.IOException;  
import java.io.PrintWriter;  
import java.util.ArrayList;  
import java.util.List;  
  
import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
  
public class userLoginAction extends HttpServlet {  
  
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private LoginService service;  
    /** 
     * Constructor of the object. 
     */  
    public userLoginAction() {  
        super();  
    }  
  
    /** 
     * Destruction of the servlet. <br> 
     */  
    public void destroy() {  
        super.destroy(); // Just puts "destroy" string in log  
        // Put your code here  
    }  
  
    /** 
     * The doGet method of the servlet. <br> 
     * 
     * This method is called when a form has its tag value method equals to get. 
     *  
     * @param request the request send by the client to the server 
     * @param response the response send by the server to the client 
     * @throws ServletException if an error occurred 
     * @throws IOException if an error occurred 
     */  
    public void doGet(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
        this.doPost(request, response);  
          
    }  
  
    /** 
     * The doPost method of the servlet. <br> 
     * 
     * This method is called when a form has its tag value method equals to post. 
     *  
     * @param request the request send by the client to the server 
     * @param response the response send by the server to the client 
     * @throws ServletException if an error occurred 
     * @throws IOException if an error occurred 
     */  
    public void doPost(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
  
        response.setContentType("text/html;charset=utf-8");  
        PrintWriter out = response.getWriter();  
          
        String path = request.getContextPath();  
        String username = request.getParameter("username");  
        String pswd = request.getParameter("pswd");  
//        String confirmpswd = request.getParameter("confirmpswd"); 
//        String sex = request.getParameter("sex");
//        String tel = request.getParameter("tel");  
//        String email = request.getParameter("email");  
//        String address = request.getParameter("address");  
        List<Object> params = new ArrayList<Object>();  
        params.add(username);  
        params.add(pswd);
//        params.add(confirmpswd);
//        params.add(sex);  
//        params.add(tel); 
//        params.add(email);  
//        params.add(address);
    
        UserLongInfoVO vo = service.userlogin(params);  
          
        if (vo!=null) {  
            
        	String id = String.valueOf(vo.getId());
            request.getSession().setAttribute("username", vo.getUsername());  
            request.getSession().setAttribute("pswd", vo.getPswd()); 
            request.getSession().setAttribute("sex", vo.getSex()); 
            request.getSession().setAttribute("confirmpswd", vo.getConfirmpswd()); 
            request.getSession().setAttribute("tel", vo.getTel()); 
            request.getSession().setAttribute("email", vo.getEmail()); 
            request.getSession().setAttribute("address", vo.getAddress()); 
            request.getSession().setAttribute("id", id); 
            response.sendRedirect(path+"/index.jsp");  
            System.out.println("用户缓存成功！！"); 
        }else{  
                          
            response.sendRedirect(path+"/error.jsp"); 
            System.out.println("用户缓存失败！！"); 
        }  
          
          
          
          
        out.flush();  
        out.close();  
    }  
  
    /** 
     * Initialization of the servlet. <br> 
     * 
     * @throws ServletException if an error occurs 
     */  
    public void init() throws ServletException {  
        // Put your code here  
        service = new userLoginDao();  
    }  
  
}  