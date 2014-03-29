package com.codingz.simplemember.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.codingz.simplemember.iservice.IMemberService;
import com.codingz.simplemember.model.Member;

@Controller
public class MemberController {

	@Autowired
	private IMemberService memberService;

	@RequestMapping(value = "/member.html")
	public ModelAndView index() {
		try {
			List<Member> memberList = memberService.findAll();
			ModelAndView model = new ModelAndView();
			model.addObject("memberList1", memberList);
			model.setViewName("member");
			return model;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@RequestMapping(value = "/register.html")
	public ModelAndView create() {
		ModelAndView model = new ModelAndView();
		model.setViewName("register");
		return model;
	}

	@RequestMapping(value = "/save.html", method = RequestMethod.POST)
	public String save(Member member) {
		try {
			memberService.save(member);
			return "redirect:/member.html";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@RequestMapping(value = "/edit_page.html", method = RequestMethod.GET)
	public ModelAndView editPage(@RequestParam(value = "id") Long id) {
		try {
			ModelAndView mav = new ModelAndView();
			Member member = memberService.findById(id);
			mav.addObject("member", member);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@RequestMapping(value = "/edit.html", method = RequestMethod.POST)
	public String editMember(Member member) {
		try {
			memberService.update(member);
			return "redirect:/member.html";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@ResponseBody
	@RequestMapping(value = "/delete.html", method = RequestMethod.POST)
	public String deleteMember(@RequestParam(value = "id") Long id) {
		try {
			Member member = memberService.findById(id);
			memberService.delete(member);
			return "success";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "error";
	}
}
