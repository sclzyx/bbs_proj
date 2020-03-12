package com.bbs.service;

import java.util.ArrayList;

import com.bbs.dao.AdminDao;
import com.bbs.pojo.Plate;


public class AdminService {
	// 创建AdminDao对象
	private AdminDao adminDao = new AdminDao();
	/**
	 * 把板块标题，板块描述存入数据库中
	 * @param title
	 * @return 0-失败 1-成功
	 */
	public int addPlateTitleAndPlateMessage(Plate plate) {
		return adminDao.addPlateTitleAndPlateMessage(plate);
	}
	/**
	 * 列出所有的信息
	 * @return 包含标题和内容
	 */
	public ArrayList<Plate> listPlate(){
		return adminDao.listPlate();
	}
}
