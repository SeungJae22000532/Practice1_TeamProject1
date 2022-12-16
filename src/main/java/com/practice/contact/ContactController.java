package com.practice.contact;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ContactController {

    @Autowired
    ContactService contactService;

    @RequestMapping(value="/contact/list", method = RequestMethod.GET)
    public String contactlist(Model model) {
        model.addAttribute("list", contactService.getContactList());
        return "list";
    }

    @RequestMapping(value = "/contact/search", method = RequestMethod.POST)
    public String searchContact(String subject, Model model) {
        ContactVO contactVO = contactService.getSearchContact(subject);
        model.addAttribute("contactVO", contactVO);
        return "search";
    }

    @RequestMapping(value = "/contact/add", method = RequestMethod.GET)
    public String addPost() {
        return "addpostform";
    }

    @RequestMapping(value = "/contact/addok", method = RequestMethod.POST)
    public String addPostOK(ContactVO vo) {
        int i = contactService.insertContact(vo);
        if(i == 0)
            System.out.println("데이터 추가 실패 ");
        else
            System.out.println("데이터 추가 성공!!!");
        return "redirect:list";
    }

    @RequestMapping(value = "/contact/editform/{id}", method = RequestMethod.GET)
    public String editPost(@PathVariable("id") int id, Model model) {
        ContactVO contactVO = contactService.getContact(id);
        model.addAttribute("contactVO", contactVO);
        return "editform";
    }

    @RequestMapping(value = "/contact/editok", method = RequestMethod.POST)
    public String editPostOK(ContactVO vo) {
        int i = contactService.updateContact(vo);
        if(i == 0)
            System.out.println("데이터 수정 실패 ");
        else
            System.out.println("데이터 수정 성공!!!");
        return "redirect:list";
    }

    @RequestMapping(value = "/contact/deleteok/{id}", method = RequestMethod.GET)
    public String deletePostOk(@PathVariable("id") int id) {
        int i = contactService.deleteContact(id);
        if(i == 0)
            System.out.println("데이터 삭제 실패 ");
        else
            System.out.println("데이터 삭제 성공!!!");
        return "redirect:../list";
    }
}