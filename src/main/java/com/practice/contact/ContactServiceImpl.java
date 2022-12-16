package com.practice.contact;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ContactServiceImpl implements ContactService{

    @Autowired
    ContactDAO contactDAO;

    @Override
    public int insertContact(ContactVO vo) {
        return contactDAO.insertContact(vo);
    }
    @Override
    public int deleteContact(int id) {
        return contactDAO.deleteContact(id);
    }
    @Override
    public int updateContact(ContactVO vo) {
        return contactDAO.updateContact(vo);
    }
    @Override
    public ContactVO getContact(int seq) {
        return contactDAO.getContact(seq);
    }
    @Override
    public List<ContactVO> getContactList() {
        return contactDAO.getContactList();
    }

    @Override
    public ContactVO getSearchContact(String subject) {
        return contactDAO.getSearchContact(subject);
    }
}