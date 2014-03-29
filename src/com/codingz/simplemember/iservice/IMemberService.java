package com.codingz.simplemember.iservice;

import java.util.List;

import com.codingz.simplemember.model.Member;


public interface IMemberService {
	public Member findById(Long id)throws Exception;
	public List<Member> findAll()throws Exception;
	public boolean save(Member member)throws Exception;
	public boolean update(Member member)throws Exception;
	public boolean delete(Member member)throws Exception;
}
