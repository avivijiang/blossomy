package com.user;  
  
import java.util.List;  
import java.util.Map;
  
public interface AdminService {  
	//添加管理员
	public boolean addAdmin(List<Object> params);

	// 列出产品,为了分页，加上参数 start,end
	public List<Map<String, Object>> listAdmin(String username, int start, int end);

	// 获取总的记录数
	public int getItemCount(String username);

	// 批处理删除产品
	public boolean delAdmin(String[] ids);

/*
	// 更新产品信息
	public boolean updateAdmin(List<Object> params);*/

	// 查询单个产品
	public Map<String, Object> viewAdmin(String proid);

}  