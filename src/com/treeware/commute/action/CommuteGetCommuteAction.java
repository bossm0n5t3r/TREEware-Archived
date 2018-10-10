package com.treeware.commute.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import org.json.simple.JSONObject;

import com.treeware.action.Action;
import com.treeware.commute.model.CmtDto;
import com.treeware.commute.service.CommuteService;
import com.treeware.member.model.EmpDto;

public class CommuteGetCommuteAction implements Action {

	private CommuteService commuteService;

	public void setCommuteService(CommuteService commuteService) {
		this.commuteService = commuteService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		EmpDto empDto = (EmpDto) session.getAttribute("userInfo");
		String EMP_SQ = empDto.getEMP_SQ();
		CmtDto cmtDto = commuteService.getCommute(EMP_SQ);
		JSONObject commute = new JSONObject();
		commute.put("CMT_SRT_TM", ("0".equals(cmtDto.getCMT_STR_TM())) ? "-" : cmtDto.getCMT_STR_TM());
		commute.put("CMT_END_TM", ("0".equals(cmtDto.getCMT_END_TM())) ? "-" : cmtDto.getCMT_END_TM());
		commute.put("CMT_WOUT_TM", ("0".equals(cmtDto.getCMT_WOUT_TM())) ? "-" : cmtDto.getCMT_WOUT_TM());
		commute.put("CMT_GOUT_TM", ("0".equals(cmtDto.getCMT_GOUT_TM())) ? "-" : cmtDto.getCMT_GOUT_TM());
		commute.put("CMT_CB_TM", ("0".equals(cmtDto.getCMT_CB_TM())) ? "-" : cmtDto.getCMT_CB_TM());
		response.getWriter().print(commute);
		return null;
	}

}
