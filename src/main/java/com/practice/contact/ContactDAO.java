package com.practice.contact;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ContactDAO {

    @Autowired
    SqlSession sqlSession;

    public int insertContact(ContactVO vo) {
        int result = sqlSession.insert("Contact.insertContact", vo);
        return result;
    }

    public int deleteContact(int id) {
        int result = sqlSession.delete("Contact.deleteContact", id);
        return result;
    }

    public int updateContact(ContactVO vo) {
        int result = sqlSession.update("Contact.updateContact", vo);
        return result;
    }

    public ContactVO getContact(int seq) {
        ContactVO one = sqlSession.selectOne("Contact.getContact", seq);
        return one;
    }

    public List<ContactVO> getContactList() {
        List<ContactVO> list = sqlSession.selectList("Contact.getContactList");
        return list;
    }

    public ContactVO getSearchContact(String subject) {
        ContactVO one = sqlSession.selectOne("Contact.getSearchContact", subject);
        return one;
    }
}