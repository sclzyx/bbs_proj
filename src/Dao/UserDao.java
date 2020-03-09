package Dao;
import pojo.User;

import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Date;
import com.tools.BaseDao;
public class UserDao {

	/**
	 * 把账户添加到数据库
	 * @param user
	 * @return 0-失败 1-成功
	 */
	public int addUser(User user) {
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn = BaseDao.getConnection();
			String sql = "insert into bbs_user(userId,userPsw,userAlice,userEmail,userSex) "
					+ "values(?,?,?,?,?)";
			ps = conn.prepareStatement(sql);
			return BaseDao.alter(ps, new Object[] {
				user.getUserId(),user.getUserPsw(),user.getUserAlice(),user.getUserEmail(),user.getUserSex()});
		} catch (Exception e) {e.printStackTrace();
		} finally {
			try {
				BaseDao.close(conn, ps, null);
			} catch (Exception e2) {e2.printStackTrace();}
		}
		return 0;
	}
	
	/**
	 * 根据userId查找对应账户
	 * @param userId
	 * @return 成功返回账户信息，失败返回null
	 */ 
	public User findUserByIdAndPsw(String userId) {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		User result = null;
		try {
			conn = BaseDao.getConnection();//获取连接
			String sql = "select * from bbs_user "
					+ "where userId=?";
			ps = conn.prepareStatement(sql);//创建执行块
			rs = BaseDao.query(ps, new Object[] {userId});// 调用BaseDao的查询方法
			if(rs.next()) {
				// 从结果集获取创建对象
				result = new User(rs.getString("userId"),rs.getString("userPsw"),
						rs.getString("userAlice"),rs.getString("userEmail"), 
						rs.getString("userSex"), rs.getString("userPhoto"),
						rs.getDouble("userScore"),rs.getInt("userLevel"),
						null, null, new Date());
			}
		} catch (Exception e) {e.printStackTrace();
		} finally {
			try {
				BaseDao.close(conn, ps, rs);
			} catch (Exception e2) {e2.printStackTrace();}
		}
		return result;
	}
}
