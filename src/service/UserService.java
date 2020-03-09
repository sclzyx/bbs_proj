package service;

import Dao.UserDao;
import pojo.User;

public class UserService {
	// 创建数据库处理对象
			private static  UserDao userDao = new UserDao();
		/**
		 * 把账户添加到数据库
		 * @param user
		 * @return 0-失败 1-成功
		 */
		public static int addUser(User user) {
			return userDao.addUser(user);
		}
		/**
		 * 根据账户看是否存在账户
		 * @param userId
		 * @return 成功返回用户对象，失败返回null
		 */
		public static User findUserByIdAndPsw(String userId) {
			return userDao.findUserByIdAndPsw(userId);
		}
		/**
		 * 根据账户得到密码
		 * @param userName
		 * @return 成功返回用户对象，失败返回null
		 *//*
		public static boolean findUserPsw(String userPassword) {
			return userDao.findUserPsw(userPassword);
		}*/
}
