package Dao;
import pojo.User;

import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Date;
import com.tools.BaseDao;
public class UserDao {

	/**
	 * ���˻���ӵ����ݿ�
	 * @param user
	 * @return 0-ʧ�� 1-�ɹ�
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
	 * ����userId���Ҷ�Ӧ�˻�
	 * @param userId
	 * @return �ɹ������˻���Ϣ��ʧ�ܷ���null
	 */ 
	public User findUserByIdAndPsw(String userId) {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		User result = null;
		try {
			conn = BaseDao.getConnection();//��ȡ����
			String sql = "select * from bbs_user "
					+ "where userId=?";
			ps = conn.prepareStatement(sql);//����ִ�п�
			rs = BaseDao.query(ps, new Object[] {userId});// ����BaseDao�Ĳ�ѯ����
			if(rs.next()) {
				// �ӽ������ȡ��������
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
