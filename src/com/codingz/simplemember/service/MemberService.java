package com.codingz.simplemember.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.codingz.simplemember.idao.IMemberDAO;
import com.codingz.simplemember.iservice.IMemberService;
import com.codingz.simplemember.model.Member;

@Service
@Transactional
public class MemberService implements IMemberService {
	@Autowired
	private IMemberDAO memberDAO;
	
	@Override
	public Member findById(Long id) throws Exception {
		//findById
		return memberDAO.findById(id);
	}

	@Override
	public List<Member> findAll() throws Exception {
		//findAll
		return memberDAO.findAll();
	}

	@Override
	public boolean save(Member member) throws Exception {
		//save
		return memberDAO.save(member);
	}

	@Override
	public boolean update(Member member) throws Exception {
		//update
		return memberDAO.update(member);
	}

	@Override
	public boolean delete(Member member) throws Exception {
		//delete
		return memberDAO.delete(member);
	}

}
