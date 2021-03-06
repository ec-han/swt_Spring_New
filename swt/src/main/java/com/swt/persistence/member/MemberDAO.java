package com.swt.persistence.member;

import java.util.List;

import com.swt.domain.member.MemberDTO;

public interface MemberDAO {
	public int idCheck(String id);
	public int create(MemberDTO mDto);
	public MemberDTO login(MemberDTO mDto);
	public MemberDTO viewMember(String id);
	public void pwUpdate(MemberDTO mDto);
	public int memUpdate(MemberDTO mDto);
	public int delete(String id);
	public List<MemberDTO> memberList();
}
