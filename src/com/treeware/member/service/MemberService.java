package com.treeware.member.service;

import java.util.Map;

import com.treeware.member.model.CmtDto;
import com.treeware.member.model.EmpDto;

public interface MemberService {
	EmpDto login(Map<String, String> map);
	CmtDto getCommuteList(String EMP_SQ);
	int modify(Map<String, String> map);
	int idcheck(String id);
}
