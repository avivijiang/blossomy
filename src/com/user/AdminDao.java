package com.user;  

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.jdbc.JdbcUtils;
  
public  class AdminDao implements AdminService {  
  
    private JdbcUtils jdbcUtils;  
    public AdminDao() {  
        // TODO Auto-generated constructor stub  
        jdbcUtils = new JdbcUtils();  
    }  
  
  public boolean addAdmin(List<Object> params) {  
          
        boolean flag = false;  
        try {  
        	List<Object> param_username =  new ArrayList<Object>();
        	if(params.get(0)!=null){
        		param_username.add(params.get(0));
        	}
        	jdbcUtils.getConnection();  
        	List<Map<String, Object>> map = null;  
            String sql1 = "select * from userinfo where username = ?";  
            map = jdbcUtils.findMoreResult(sql1, param_username);  
            if(!map.isEmpty()){
            	jdbcUtils.releaseConn(); 
            	return flag;
            }
        	
            String sql = "insert into userinfo(username,pswd) values(?,?)";           
            flag = jdbcUtils.updateByPreparedStatement(sql, params);  
            System.out.println("添加数据成功！！");     
              
        } catch (Exception e) {  
            // TODO: handle exception  
            e.printStackTrace();  
        }finally{  
                
            jdbcUtils.releaseConn();  
              
        }  
          
        return flag;  
    }  
  
    public List<Map<String, Object>> listAdmin(String username ,int start ,int end) {  
        // TODO Auto-generated method stub  
        List<Map<String, Object>> list = new ArrayList<Map<String,Object>>();  
        List<Object> params  = new ArrayList<Object>();       
        try {  
            jdbcUtils.getConnection();            
            String sql = "select * from userinfo where 1=1 and username like ? limit ? ,?";     
            if(username.equals("")){  
                sql = "select * from userinfo limit ? ,?";  
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
  
    //查询总记录数  
    public int getItemCount(String username) {  
        // TODO Auto-generated method stub  
        int count = 0;  
        Map<String, Object> map = null;  
        List<Object> params = null;         
        try {  
            jdbcUtils.getConnection();            
            String sql = "select count(*) totalCount from userinfo where 1=1 and username like ?";      
            if(username.equals("")){  
                sql = "select count(*) totalCount from userinfo";  
                  
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
            // 关闭数据库连接  
            jdbcUtils.releaseConn();  
        }  
          
          
        return count;  
    }  
  
    public boolean delAdmin(String[] ids) {  
        boolean flag = false;  
        try {  
            jdbcUtils.getConnection();  
            if (ids!=null) {  
                String[] sql = new String[ids.length];  
                for(int i = 0 ; i< ids.length; i++){  
                    sql[i] = "delete from userinfo where id = '"+ids[i]+"'";  
                    System.out.println(sql[i]);  
                }  
                flag = jdbcUtils.deleteByBatch(sql);      
            }  
                      
              
        } catch (Exception e) {  
            // TODO: handle exception  
            e.printStackTrace();  
        } finally{  
            // 关闭数据库连接  
            jdbcUtils.releaseConn();  
        }     
          
        return flag;  
    }  
  
    public Map<String, Object> viewAdmin(String id) {  
        // TODO Auto-generated method stub  
        Map<String, Object> map = null;  
        try {  
            jdbcUtils.getConnection();  
            List<Object> params = new ArrayList<Object>();  
            params.add(id);  
            String sql = "select * from userinfo where id = ?";  
            map = jdbcUtils.findSimpleResult(sql, params);  
              
        } catch (Exception e) {  
            // TODO: handle exception  
            e.printStackTrace();  
        } finally{  
            // 关闭数据库连接  
            jdbcUtils.releaseConn();  
        }  
          
          
        return map;  
    }

	/*@Override
	public boolean updateAdmin(List<Object> params) {
		// TODO Auto-generated method stub
		return false;
	}  
  */
      
  
}  