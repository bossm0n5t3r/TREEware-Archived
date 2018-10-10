package com.treeware.commute.dao;

import org.apache.ibatis.session.SqlSession;

import com.treeware.commute.model.CmtDto;
import com.treeware.config.mybatis.Configuration;

public class CommuteDaoImpl implements CommuteDao {

	@Override
	public CmtDto getCommute(String EMP_SQ) {
		CmtDto cmtDto = null;
		SqlSession sqlSession = Configuration.getSqlSession();
		try {
			cmtDto = sqlSession.selectOne("com.treeware.commute.dao.CommuteDao.getCommute", EMP_SQ);
		} finally {
			sqlSession.close();
		}
		return cmtDto;
	}

}
