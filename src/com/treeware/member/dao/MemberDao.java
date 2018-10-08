package com.treeware.member.dao;

import java.util.Map;

import com.treeware.member.model.EmpDto;

public interface MemberDao {
	EmpDto login(Map<String, String> map);
}
