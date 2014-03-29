package com.codingz.simplemember.idao;

import java.util.List;

import com.codingz.simplemember.model.Member;

public interface IMemberDAO {
	public Member findById(Long id)throws Exception;
	public List<Member> findAll()throws Exception;
	public boolean save(Member member)throws Exception;
	public boolean update(Member member)throws Exception;
	public boolean delete(Member member)throws Exception;
}
