package service;

import Dao.UserDao;
import pojo.User;

public class UserService {
	// �������ݿ⴦�����
			private static  UserDao userDao = new UserDao();
		/**
		 * ���˻���ӵ����ݿ�
		 * @param user
		 * @return 0-ʧ�� 1-�ɹ�
		 */
		public static int addUser(User user) {
			return userDao.addUser(user);
		}
		/**
		 * �����˻����Ƿ�����˻�
		 * @param userId
		 * @return �ɹ������û�����ʧ�ܷ���null
		 */
		public static User findUserByIdAndPsw(String userId) {
			return userDao.findUserByIdAndPsw(userId);
		}
		/**
		 * �����˻��õ�����
		 * @param userName
		 * @return �ɹ������û�����ʧ�ܷ���null
		 *//*
		public static boolean findUserPsw(String userPassword) {
			return userDao.findUserPsw(userPassword);
		}*/
}
