package com.user;  
  
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.jdbc.JdbcUtils;
  
public  class UserDao implements UserService {  
  
    private JdbcUtils jdbcUtils;  
    public UserDao() {  
        // TODO Auto-generated constructor stub  
        jdbcUtils = new JdbcUtils();  
    }  
  
   /* public boolean addUser(List<Object> params) {  
          
        boolean flag = false;  
        try {  
            jdbcUtils.getConnection();  
           // String sql = "insert into user(id,username,procategory,profiles,proprice,proaddress,proimage,prodetails1,prodetails2,prodetails3) values(?,?,?,?,?,?,?,?,?,?)";  
           // flag = jdbcUtils.updateByPreparedStatement(sql, params);  
        } catch (Exception e) {  
            // TODO: handle exception  
            e.printStackTrace();  
        }finally{  
              
            // 鍏抽棴鏁版嵁搴撹繛鎺� 
            jdbcUtils.releaseConn();  
              
        }  
          
          
        return flag;  
    }  */
  
    public List<Map<String, Object>> listUser(String username ,int start ,int end) {  
        // TODO Auto-generated method stub  
        List<Map<String, Object>> list = new ArrayList<Map<String,Object>>();  
        List<Object> params  = new ArrayList<Object>();       
        try {  
            jdbcUtils.getConnection();            
            String sql = "select * from user where 1=1 and username like ? limit ? ,?";     
            if(username.equals("")){  
                sql = "select * from user limit ? ,?";  
                params.add(start);  
                params.add(end);  
                  
            }else{                
                params.add("%"+username+"%");  
                params.add(start);  
                params.add(end);  
            }         
                      
            list = jdbcUtils.findMoreResult(sql, params);             
              
        } catch (Exception e) {  
            // TODO: handle exception  
            e.printStackTrace();  
        } finally{  
              
              
            jdbcUtils.releaseConn();  
              
        }  
          
          
        return list;  
    }  
  
    //鏌ヨ鎬昏褰曟暟  
    public int getItemCount(String username) {  
        // TODO Auto-generated method stub  
        int count = 0;  
        Map<String, Object> map = null;  
        List<Object> params = null;         
        try {  
            jdbcUtils.getConnection();            
            String sql = "select count(*) totalCount from user where 1=1 and username like ?";      
            if(username.equals("")){  
                sql = "select count(*) totalCount from user";  
                  
            }else{  
                params = new ArrayList<Object>();  
                params.add("%"+username+"%");  
            }  
        map = jdbcUtils.findSimpleResult(sql, params);  
        count = Integer.parseInt(map.get("totalCount").toString());  
              
        } catch (Exception e) {  
            // TODO: handle exception  
            e.printStackTrace();  
        } finally{  
            // 鍏抽棴鏁版嵁搴撹繛鎺� 
            jdbcUtils.releaseConn();  
        }  
          
          
        return count;  
    }  
  
    public boolean delUser(String[] ids) {  
        boolean flag = false;  
        try {  
            jdbcUtils.getConnection();  
            if (ids!=null) {  
                String[] sql = new String[ids.length];  
                for(int i = 0 ; i< ids.length; i++){  
                    sql[i] = "delete from user where id = '"+ids[i]+"'";  
                    System.out.println(sql[i]);  
                }  
                flag = jdbcUtils.deleteByBatch(sql);      
            }  
                      
              
        } catch (Exception e) {  
            // TODO: handle exception  
            e.printStackTrace();  
        } finally{  
            // 鍏抽棴鏁版嵁搴撹繛鎺� 
            jdbcUtils.releaseConn();  
        }     
          
        return flag;  
    }  
  
    public boolean updateUser(List<Object> params) {

		boolean flag = false;
		try {
			jdbcUtils.getConnection();
			String sql = "UPDATE user SET username=?,sex=?,tel=?,email=?,address=? WHERE id=?";
			flag = jdbcUtils.updateByPreparedStatement(sql, params);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			// 鍏抽棴鏁版嵁搴撹繛鎺�
			jdbcUtils.releaseConn();
		}

		return flag;
	}

    public Map<String, Object> viewUser(String id) {  
        // TODO Auto-generated method stub  
        Map<String, Object> map = null;  
        try {  
            jdbcUtils.getConnection();  
            List<Object> params = new ArrayList<Object>();  
            params.add(id);  
            String sql = "select * from user where id = ?";  
            map = jdbcUtils.findSimpleResult(sql, params);  
              
        } catch (Exception e) {  
            // TODO: handle exception  
            e.printStackTrace();  
        } finally{  
            // 鍏抽棴鏁版嵁搴撹繛鎺� 
            jdbcUtils.releaseConn();  
        }  
          
          
        return map;  
    }  
  
      
  
}  