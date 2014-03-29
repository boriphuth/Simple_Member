package com.codingz.simplemember.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.codingz.simplemember.idao.IMemberDAO;
import com.codingz.simplemember.model.Member;

@Repository
public class MemberDAO extends HibernateDaoSupport implements IMemberDAO {

	protected Session session;

	@Autowired
	public void setDummySessionFactory(SessionFactory sessionFactory) {
		setSessionFactory(sessionFactory);
		session = this.getHibernateTemplate().getSessionFactory().openSession();
	}

	@Override
	public Member findById(Long id) throws Exception {
		//findById
		Member member = this.getHibernateTemplate().get(Member.class, id);
		return member;
	}

	@Override
	public List<Member> findAll() throws Exception {
		//findAll
		List<Member> memberList = session.createCriteria(Member.class).list();
		session.flush();
		session.clear();
		return memberList;
	}

	@Override
	public boolean save(Member member) throws Exception {
		//save
		this.getHibernateTemplate().save(member);
		return true;
	}

	@Override
	public boolean update(Member member) throws Exception {
		//update
		this.getHibernateTemplate().update(member);
		return true;
	}

	@Override
	public boolean delete(Member member) throws Exception {
		//delete
		this.getHibernateTemplate().delete(member);
		return true;
	}

}
