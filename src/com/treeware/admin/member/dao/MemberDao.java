package com.treeware.admin.member.dao;

import com.treeware.admin.member.model.MemberDto;

public interface MemberDao {
	int compareMemberNum(String memberNum);
	void register(MemberDto memberDto);
}
