
package com.user;  

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.util.DividePage;
import com.util.UUIDTools;
public class AdminAction extends HttpServlet {  
  
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private AdminService service;  
    /** 
     * Constructor of the object. 
     */  
    public AdminAction() {  
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
        request.setCharacterEncoding("utf-8");  
        response.setCharacterEncoding("utf-8");  
        PrintWriter out = response.getWriter();  
          
        String action_flag = request.getParameter("action_flag");  
       if (action_flag.equals("search")) {  
            listAdmin(request,response);  
        }else if (action_flag.equals("del")) {  
            delAdmin(request,response);  
		} else if (action_flag.equals("view")) {
			viewAdmin(request, response);
		} 
          
		
        out.flush();  
        out.close();  
    }  
  
    
  
    /**批量删除产品 
     * @param request 
     * @param response 
     */  
    private void delAdmin(HttpServletRequest request,  
            HttpServletResponse response) {  
        // TODO Auto-generated method stub  
          
        System.out.println("进入del");  
        //获得复选框的值  
        String[] ids = request.getParameterValues("ids");  
        for (int i = 0; i < ids.length; i++) {  
            System.out.println("ids["+i+"]="+ids[i]);  
        }  
        boolean flag = service.delAdmin(ids);  
        System.out.println("删除flag:"+flag);  
        if (flag) {  
            try {  
                request.getRequestDispatcher("/mngAdmin.jsp").forward(request, response);  
            } catch (Exception e) {  
                // TODO Auto-generated catch block  
                e.printStackTrace();  
            }  
        }         
    }  
  
    private void listAdmin(HttpServletRequest request,  
            HttpServletResponse response) {  
        // TODO Auto-generated method stub  
          
        String userName = request.getParameter("username");     
        String pageNum = request.getParameter("pageNum");  
        System.out.println("参数 pageNum :"+pageNum);  
        if (userName == null) {  
          userName = "";  
        }  
          
          
          
        int totalRecord = service.getItemCount(userName); //获取总的记录数  
        int currentPage = 1;  
        DividePage dividePage = new DividePage(5, totalRecord);//默认第一页开始  
        if (pageNum != null) {  
              
              
            currentPage = Integer.parseInt(pageNum);  
              
            dividePage.setCurrentPage(currentPage);  
        }  
          
        //记录从第几行开始  
        int start = dividePage.fromIndex();  
        //显示几条记录  
        int end = dividePage.toIndex();       
          
        System.out.println("currentPageNum :"+ dividePage.getCurrentPage() +", start = "+start +", end = "+end);  
          
        List<Map<String, Object>> list = null;  
        try {  
            list = service.listAdmin(userName , start , end);  
            request.setAttribute("listAdmin", list);  
            request.setAttribute("dividePage", dividePage);  
            request.setAttribute("userName",userName );  
            request.getRequestDispatcher("/mngAdmin.jsp").forward(request, response);  
        } catch (Exception e) {  
            // TODO: handle exception  
            e.printStackTrace();  
        }         
          
    }  
  
    
    private void viewAdmin(HttpServletRequest request,
			HttpServletResponse response) {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");
		Map<String, Object> map = service.viewAdmin(id);
		request.setAttribute("AdminMap", map);
		try {
			request.getRequestDispatcher("/viewAdmin.jsp").forward(request,
					response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

 
    /** 
     * Initialization of the servlet. <br> 
     * 
     * @throws ServletException if an error occurs 
     */  
    public void init() throws ServletException {  
        // Put your code here  
        service = new AdminDao();  
    }  
  
}  
