package com.treeware.member.service;

import java.util.Map;

import com.treeware.member.model.EmpDto;

public interface MemberService {
	EmpDto login(Map<String, String> map);
}
