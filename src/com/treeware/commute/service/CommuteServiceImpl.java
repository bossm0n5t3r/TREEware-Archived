package com.treeware.commute.service;

import com.treeware.commute.dao.CommuteDao;
import com.treeware.commute.model.CmtDto;

public class CommuteServiceImpl implements CommuteService {

	private CommuteDao commuteDao;

	public void setCommuteDao(CommuteDao commuteDao) {
		this.commuteDao = commuteDao;
	}

	@Override
	public CmtDto getCommute(String EMP_SQ) {
		return commuteDao.getCommute(EMP_SQ);
	}

}
