package com.login;  
  
import java.util.List;
import java.util.Map;

import com.jdbc.JdbcUtils;
import com.login.UserLongInfoVO;
  
public class userLoginDao implements LoginService {  
  
    private JdbcUtils jdbcUtils;  
    public userLoginDao() {  
        // TODO Auto-generated constructor stub  
        jdbcUtils = new JdbcUtils();  
    }  
  
    public UserLongInfoVO userlogin(List<Object> params) {  
        // TODO Auto-generated method stub  
        @SuppressWarnings("unused")
		boolean flag = false;  
        UserLongInfoVO vo = new UserLongInfoVO();
        try {  
            jdbcUtils.getConnection();          
            String sql = "select * from user where username = ? and pswd = ? ";  
            Map<String, Object> map = jdbcUtils.findSimpleResult(sql, params);  
            flag = !map.isEmpty()?true:false;  
//            vo.setId((String) map.get("id"));
            Integer id = (Integer) map.get("id");
            vo.setId(String.valueOf(id));
            vo.setAddress((String) map.get("address"));
            vo.setConfirmpswd((String) map.get("confirmpswd"));
            vo.setEmail((String) map.get("email"));
            vo.setPswd((String) map.get("pswd"));
            vo.setTel((String) map.get("tel"));
            vo.setSex((String) map.get("sex"));
            vo.setUsername((String) map.get("username"));
            
            System.out.println("用户登录成功！！"); 
        } catch (Exception e) {  
            // TODO: handle exception  
            e.printStackTrace();  
        }finally{  
              
      
        jdbcUtils.releaseConn();  
              
        }  
          
        return vo;  
    }     
    
    public boolean login(List<Object> params) {  
        // TODO Auto-generated method stub  
        boolean flag = false;  
          
        try {  
            jdbcUtils.getConnection();          
            String sql = "select * from user where username = ? and pswd = ? ";  
            Map<String, Object> map = jdbcUtils.findSimpleResult(sql, params);  
            flag = !map.isEmpty()?true:false;             
            System.out.println("用户登录成功！！"); 
        } catch (Exception e) {  
            // TODO: handle exception  
            e.printStackTrace();  
        }finally{  
              
      
        jdbcUtils.releaseConn();  
              
        }  
          
        return flag;  
    }  
  
}  