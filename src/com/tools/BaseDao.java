package com.tools;
// 鏁版嵁搴撳簳灞傜被
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
public class BaseDao {
	// 鍔犺浇鏁版嵁搴撻┍鍔�
	static {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (Exception e) {}
	}
	public final static String URL = "jdbc:mysql://localhost:3306/bbs_system?"
			+ "useUnicode=true&characterEncoding=utf-8";
	public final static String USER = "root";
	public final static String PASSWORD = "123";
	/**
	 * 鑾峰彇鏁版嵁搴撹繛鎺�
	 * @return 鏁版嵁搴撹繛鎺�
	 */
	public static Connection getConnection() throws SQLException{
		Connection conn = null;
		conn = DriverManager.getConnection(URL, USER, PASSWORD);
		return conn;
	}
	/**
	 * 鍏抽棴杩炴帴銆佹墽琛屽潡鍜岀粨鏋滈泦
	 * @param conn
	 * @param ps
	 * @param rs
	 * @throws SQLException
	 */
	public static void close(Connection conn,PreparedStatement ps,ResultSet rs) 
		throws SQLException{
		if(rs != null)
			rs.close();
		if(ps != null)
			ps.close();
		if(conn != null)
			conn.close();
	}
	/**
	 * 瀹炵幇鏌ヨ鍔熻兘
	 * @param ps
	 * @param args
	 * @return
	 * @throws SQLException
	 */
	public static ResultSet query(PreparedStatement ps,Object[] args) 
			throws SQLException{
		if(args != null) {
			for(int i=0;i<args.length;i++) {
				ps.setObject(i+1, args[i]);
			}
		}
		return ps.executeQuery();
	}
	/**
	 * 瀹炵幇澧炪�佸垹銆佹敼鍔熻兘
	 * @param ps
	 * @param args
	 * @return
	 */
	public static int alter(PreparedStatement ps,Object[] args) 
			throws SQLException{
		if(args != null) {
			for(int i=0;i<args.length;i++) {
				ps.setObject(i+1, args[i]);
			}
		}
		return ps.executeUpdate();
	}
}













