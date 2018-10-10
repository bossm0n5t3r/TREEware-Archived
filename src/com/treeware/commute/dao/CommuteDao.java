package com.treeware.commute.dao;

import com.treeware.commute.model.CmtDto;

public interface CommuteDao {
	CmtDto getCommute(String EMP_SQ);
}
