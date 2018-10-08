package com.treeware.member.service;

import java.util.Map;

import com.treeware.member.dao.MemberDao;
import com.treeware.member.model.EmpDto;

public class MemberServiceImpl implements MemberService {

	private MemberDao memberDao;

	public void setMemberDao(MemberDao memberDao) {
		this.memberDao = memberDao;
	}

	@Override
	public EmpDto login(Map<String, String> map) {
		return memberDao.login(map);
	}

}
