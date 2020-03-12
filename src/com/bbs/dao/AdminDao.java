package com.bbs.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.bbs.pojo.Plate;
import com.bbs.tools.BaseDao;


public class AdminDao {

	public int addPlateTitleAndPlateMessage(Plate plate) {
		/**
		 * 把板块标题和描述存入数据库中
		 * @param user
		 * @return 0-失败 1-成功
		 */
			Connection con = null;
			PreparedStatement ps = null;
			try {
				con = BaseDao.getCon();
				String sql = "insert into bbs_plate(plateId,plateTitle,"
						+ "plateMessage,isEnable) values(?,?,?,?)";
				ps = con.prepareStatement(sql);
				return BaseDao.update(ps,new Object[] {
						plate.getPlateId(),plate.getPlateTitle(),
						plate.getPlateMessage(),plate.getIsEnable()
				});
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				BaseDao.close(con, ps, null);
			}
			return 0;
		}
	/**
	 * 列出所有的信息
	 * @return 包含标题内容
	 */
	public ArrayList<Plate> listPlate(){
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		ArrayList<Plate> array = new ArrayList<>();//创建存储图书分类的列表
		try {
			conn = BaseDao.getCon();
			String sql = "select * from bbs_Plate";
			ps = conn.prepareStatement(sql);
			rs = BaseDao.query(ps,null);
			//遍历结果集，把结果集中的内容创建为Plate对象，放入ArrayList
			while(rs.next()) {
				array.add(new Plate(rs.getInt("plateId"),rs.getString("plateTitle"),rs.getString("plateMessage"),rs.getInt("isEnable")));
			}
		} catch (Exception e) {e.printStackTrace();
		} finally {
			try {
				BaseDao.close(conn, ps, rs);
			} catch (Exception e2) {e2.printStackTrace();}
		}
		return array;
	}

}
