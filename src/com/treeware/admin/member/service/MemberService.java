package com.treeware.admin.member.service;

import com.treeware.admin.member.model.MemberDto;

public interface MemberService {
	int compareMemberNum(String memberNum);
	void register(MemberDto memberDto);
}
