package com.treeware.member.model;

public class CmtDto {
	private int CMT_SQ; // 출퇴근번호
	private String EMP_SQ; // 사원번호
	private String CMT_IP; // IP
	private String CMT_STR_TM; // 출근시간
	private String CMT_END_TM; // 퇴근시간
	private String CMT_WOUT_TM; // 외근
	private String CMT_GOUT_TM; // 외출
	private String CMT_CB_TM; // 복귀
	private String CMT_MSG; // 메시지

	public int getCMT_SQ() {
		return CMT_SQ;
	}

	public void setCMT_SQ(int cMT_SQ) {
		CMT_SQ = cMT_SQ;
	}

	public String getEMP_SQ() {
		return EMP_SQ;
	}

	public void setEMP_SQ(String eMP_SQ) {
		EMP_SQ = eMP_SQ;
	}

	public String getCMT_IP() {
		return CMT_IP;
	}

	public void setCMT_IP(String cMT_IP) {
		CMT_IP = cMT_IP;
	}

	public String getCMT_STR_TM() {
		return CMT_STR_TM;
	}

	public void setCMT_STR_TM(String cMT_STR_TM) {
		CMT_STR_TM = cMT_STR_TM;
	}

	public String getCMT_END_TM() {
		return CMT_END_TM;
	}

	public void setCMT_END_TM(String cMT_END_TM) {
		CMT_END_TM = cMT_END_TM;
	}

	public String getCMT_WOUT_TM() {
		return CMT_WOUT_TM;
	}

	public void setCMT_WOUT_TM(String cMT_WOUT_TM) {
		CMT_WOUT_TM = cMT_WOUT_TM;
	}

	public String getCMT_GOUT_TM() {
		return CMT_GOUT_TM;
	}

	public void setCMT_GOUT_TM(String cMT_GOUT_TM) {
		CMT_GOUT_TM = cMT_GOUT_TM;
	}

	public String getCMT_CB_TM() {
		return CMT_CB_TM;
	}

	public void setCMT_CB_TM(String cMT_CB_TM) {
		CMT_CB_TM = cMT_CB_TM;
	}

	public String getCMT_MSG() {
		return CMT_MSG;
	}

	public void setCMT_MSG(String cMT_MSG) {
		CMT_MSG = cMT_MSG;
	}

}
