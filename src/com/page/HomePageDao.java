
package com.page;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.jdbc.JdbcUtils;

public class HomePageDao implements HomePageService {

	private JdbcUtils jdbcUtils;

	public HomePageDao() {
		// TODO Auto-generated constructor stub
		jdbcUtils = new JdbcUtils();
	}

	public boolean addProduct(List<Object> params) {

		boolean flag = false;
		try {
			jdbcUtils.getConnection();
			String sql = "insert into homepage(proid,proname,procategory,profiles,proprice,proaddress,proimage,prodetails1,prodetails2,prodetails3) values(?,?,?,?,?,?,?,?,?,?)";
			flag = jdbcUtils.updateByPreparedStatement(sql, params);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {

			// 关闭数据库连接
			jdbcUtils.releaseConn();

		}

		return flag;
	}

	/**
	 * 查询所有花种类
	 * 
	 * @return
	 */
	public List<Map<String, Object>> queryAllFlowerType() {
		// TODO Auto-generated method stub
		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		List<Object> params = new ArrayList<Object>();
		try {
			jdbcUtils.getConnection();
			String sql = "select * from flower_type";
			list = jdbcUtils.findMoreResult(sql, params);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			jdbcUtils.releaseConn();
		}
		return list;
	}

	public boolean updateProduct(List<Object> params) {

		boolean flag = false;
		try {
			jdbcUtils.getConnection();
			String sql = "UPDATE homepage SET proname=?,proprice=?,proaddress=?,profiles=?, proimage=?,prodetails1=?,prodetails2=?,prodetails3=? WHERE proid=?";
			flag = jdbcUtils.updateByPreparedStatement(sql, params);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			// 关闭数据库连接
			jdbcUtils.releaseConn();
		}

		return flag;
	}

	public List<Map<String, Object>> listProduct(String proname, int start, int end) {
		// TODO Auto-generated method stub
		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		List<Object> params = new ArrayList<Object>();
		try {
			jdbcUtils.getConnection();
			String sql = "select * from homepage where 1=1 and proname like ? limit ? ,?";
			if (proname.equals("")) {
				sql = "select * from homepage limit ? ,?";
				params.add(start);
				params.add(end);

			} else {
				params.add("%" + proname + "%");
				params.add(start);
				params.add(end);
			}

			list = jdbcUtils.findMoreResult(sql, params);

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {

			jdbcUtils.releaseConn();

		}

		return list;
	}

	// 查询总记录数
	public int getItemCount(String proname) {
		// TODO Auto-generated method stub
		int count = 0;
		Map<String, Object> map = null;
		List<Object> params = null;
		try {
			jdbcUtils.getConnection();
			String sql = "select count(*) totalCount from homepage where 1=1 and proname like ?";
			if (proname.equals("")) {
				sql = "select count(*) totalCount from homepage";

			} else {
				params = new ArrayList<Object>();
				params.add("%" + proname + "%");
			}
			map = jdbcUtils.findSimpleResult(sql, params);
			count = Integer.parseInt(map.get("totalCount").toString());

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			// 关闭数据库连接
			jdbcUtils.releaseConn();
		}

		return count;
	}

	public boolean delProduct(String[] ids) {
		boolean flag = false;
		try {
			jdbcUtils.getConnection();
			if (ids != null) {
				String[] sql = new String[ids.length];
				for (int i = 0; i < ids.length; i++) {
					sql[i] = "delete from homepage where proid = '" + ids[i] + "'";
					System.out.println(sql[i]);
				}
				flag = jdbcUtils.deleteByBatch(sql);
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			// 关闭数据库连接
			jdbcUtils.releaseConn();
		}

		return flag;
	}

	public Map<String, Object> viewProduct(String proid) {
		// TODO Auto-generated method stub
		Map<String, Object> map = null;
		try {
			jdbcUtils.getConnection();
			List<Object> params = new ArrayList<Object>();
			params.add(proid);
			String sql = "select * from homepage where proid = ?";
			map = jdbcUtils.findSimpleResult(sql, params);

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			// 关闭数据库连接
			jdbcUtils.releaseConn();
		}

		return map;
	}

	// 查询花总记录数
	public int flowerItemCount(String procategory) {
		// TODO Auto-generated method stub
		int count = 0;
		Map<String, Object> map = null;
		List<Object> params = null;
		try {
			jdbcUtils.getConnection();
			String sql = "select count(*) totalCount from homepage where 1=1 ";
			if (procategory.equals("鲜花")) {
				sql = "select count(*) totalCount from homepage";

			} else {
				params = new ArrayList<Object>();
				params.add("%" + procategory + "%");
			}
			map = jdbcUtils.findSimpleResult(sql, params);
			count = Integer.parseInt(map.get("totalCount").toString());

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			// 关闭数据库连接
			jdbcUtils.releaseConn();
		}

		return count;
	}

	/**
	 * 新添加的方法
	 * 
	 * @param proname
	 * @param start
	 * @param end
	 * @param procategory
	 * @return
	 */
	public List<Map<String, Object>> listProduct4one(String proname, int start, int end, String procategory) {
		// TODO Auto-generated method stub
		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		List<Object> params = new ArrayList<Object>();
		try {
			jdbcUtils.getConnection();
			String sql = "select * from homepage where 1=1 and proname like ? and procategory=? limit ? ,?";
			if (proname.equals("")) {
				sql = "select * from homepage where 1=1 and procategory=? limit ? ,?";
				if ("1".equals(procategory)) {
					params.add("1");
				} else if ("2".equals(procategory)) {
					params.add("2");
				} else if ("3".equals(procategory)) {
					params.add("3");
				} else if ("4".equals(procategory)) {
					params.add("4");
				}
				params.add(start);
				params.add(end);
			} else {
				params.add("%" + proname + "%");
				if ("1".equals(procategory)) {
					params.add("1");
				} else if ("2".equals(procategory)) {
					params.add("2");
				} else if ("3".equals(procategory)) {
					params.add("3");
				} else if ("4".equals(procategory)) {
					params.add("4");
				}
				params.add(procategory);
				params.add(start);
				params.add(end);
			}

			list = jdbcUtils.findMoreResult(sql, params);

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {

			jdbcUtils.releaseConn();

		}

		return list;
	}

}