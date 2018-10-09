package com.treeware.admin.member.service;

import com.treeware.admin.member.dao.MemberDao;
import com.treeware.admin.member.model.MemberDto;

public class MemberServiceImpl implements MemberService {

	private MemberDao adminMemberDao;
	
	public void setAdminMemberDao(MemberDao adminMemberDao) {
		this.adminMemberDao = adminMemberDao;
	}

	@Override
	public int compareMemberNum(String memberNum) {
		return adminMemberDao.compareMemberNum(memberNum);
	}

	@Override
	public void register(MemberDto memberDto) {
		adminMemberDao.register(memberDto);
	}

}



