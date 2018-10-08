package com.treeware.admin.member.dao;

import org.apache.ibatis.session.SqlSession;

import com.treeware.admin.member.model.MemberDto;
import com.treeware.config.mybatis.Configuration;

public class MemberDaoImpl implements MemberDao {
	
	@Override
	public int compareMemberNum(String memberNum) {
		int cnt = 1;
		SqlSession sqlSession = Configuration.getSqlSession();
		try {
			cnt = sqlSession.selectOne("com.kitri.member.dao.MemberDao.idCheck", memberNum);
		} finally {
			sqlSession.close();
		}
		return cnt;
	}

	@Override
	public void register(MemberDto memberDto) {
		// TODO Auto-generated method stub

	}

}
