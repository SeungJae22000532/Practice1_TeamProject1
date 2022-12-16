package com.practice.contact;

import java.util.List;

public interface ContactService {
    public int insertContact(ContactVO vo);
    public int deleteContact(int id);
    public int updateContact(ContactVO vo);
    public ContactVO getContact(int seq);
    public List<ContactVO> getContactList();
    public ContactVO getSearchContact(String subject);
}