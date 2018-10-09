package com.treeware.member.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.treeware.config.mybatis.Configuration;
import com.treeware.member.model.CmtDto;
import com.treeware.member.model.EmpDto;

public class MemberDaoImpl implements MemberDao {

	@Override
	public EmpDto login(Map<String, String> map) {
		EmpDto empDto = null;
		SqlSession sqlSession = Configuration.getSqlSession();
		try {
			empDto = sqlSession.selectOne("com.treeware.member.dao.MemberDao.login", map);
		} finally {
			sqlSession.close();
		}
		return empDto;
	}

	@Override
	public CmtDto getCommuteList(String EMP_SQ) {
		CmtDto cmtDto = null;
		SqlSession sqlSession = Configuration.getSqlSession();
		try {
			cmtDto = sqlSession.selectOne("com.treeware.member.dao.MemberDao.getCommuteList", EMP_SQ);
		} finally {
			sqlSession.close();
		}
		return cmtDto;
	}

}
