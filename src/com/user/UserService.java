package com.user;  
import java.util.List;  
import java.util.Map;  
  
public interface UserService {  
    
    //列出产品,为了分页，加上参数 start,end  
    public List<Map<String, Object>> listUser(String username , int start , int end);  
    //获取总的记录数  
    public int getItemCount(String username);  
    //批处理删除
    public boolean delUser(String[] ids);  
    //查询
    public Map<String, Object> viewUser(String id);
    //更新个人信息
	public boolean updateUser(List<Object> params);  
  
}  
