package com.register;  
  
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.jdbc.JdbcUtils;
  
public class UserRegisterDao implements RegisterService {  
  
    private JdbcUtils jdbcUtils;  
    public UserRegisterDao() {  
        // TODO Auto-generated constructor stub  
        jdbcUtils = new JdbcUtils();  
    }  
  public boolean registerUser(List<Object> params) {  
        // TODO Auto-generated method stub  
        boolean flag = false;  
        try {  
        	List<Object> param_username =  new ArrayList<Object>();
        	if(params.get(0)!=null){
        		param_username.add(params.get(0));
        	}
        	jdbcUtils.getConnection();  
        	List<Map<String, Object>> map = null;  
            String sql1 = "select * from user where username = ?";  
            map = jdbcUtils.findMoreResult(sql1, param_username);  
            if(!map.isEmpty()){
            	jdbcUtils.releaseConn(); 
            	return flag;
            }
        	
            String sql = "insert into user(username,pswd,confirmpswd,sex,tel,email,address) values(?,?,?,?,?,?,?)";           
            flag = jdbcUtils.updateByPreparedStatement(sql, params);  
            System.out.println("用户注册成功！！");   
              
        } catch (Exception e) {  
            // TODO: handle exception  
            e.printStackTrace();  
        }finally{  
                
            jdbcUtils.releaseConn();  
              
        }  
          
          
        return flag;  
    }  
  
}  