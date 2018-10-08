package com.treeware.member.service;

import java.util.Map;

import com.treeware.member.dao.MemberDao;

public class MemberServiceImpl implements MemberService {

	private MemberDao memberDao;

	public void setMemberDao(MemberDao memberDao) {
		this.memberDao = memberDao;
	}

	@Override
	public int login(Map<String, String> map) {
		return memberDao.login(map);
	}

}
