package com.practice.contact;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class ContactDAO {
    private JdbcTemplate template;

    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }

    private final String CONTACT_INSERT = "insert into CONTACT (subject, pName, tName, pMail, tMail, zAddress, office) values (?, ?, ?, ?, ?, ?, ?)";
    private final String CONTACT_UPDATE = "update CONTACT set subject=?, pName=?, tName=?, pMail=?, tMail=?, zAddress=?, office=? where id=?";
    private final String CONTACT_DELETE = "delete from CONTACT where id=?";
    private final String CONTACT_GET = "select * from CONTACT where id=?";
    private final String CONTACT_LIST = "select * from CONTACT order by id desc";

    public int insertContact(ContactVO vo) {
        return template.update(CONTACT_INSERT,
                new Object[]{vo.getpName(), vo.gettName(), vo.getpMail(), vo.gettMail(), vo.getzAddress(), vo.getOffice()});
    }

    public int deleteContact(int id) {
        return template.update(CONTACT_DELETE,
                new Object[]{id});
    }

    public int updateContact(ContactVO vo) {
        return template.update(CONTACT_UPDATE,
                new Object[]{vo.getpName(), vo.gettName(), vo.getpMail(), vo.gettMail(), vo.getzAddress(), vo.getOffice(), vo.getSeq()});
    }

    public ContactVO getContact(int seq) {
        return template.queryForObject(CONTACT_GET,
                new Object[]{seq},
                new BeanPropertyRowMapper<ContactVO>(ContactVO.class));
    }

    public List<ContactVO> getContactList() {
        return template.query(CONTACT_LIST, new RowMapper<ContactVO>() {
            @Override
            public ContactVO mapRow(ResultSet rs, int rowNum) throws SQLException {
                ContactVO data = new ContactVO();
                data.setSeq(rs.getInt("seq"));
                data.setSubject(rs.getString("subject"));
                data.setpName(rs.getString("pName"));
                data.settName(rs.getString("tName"));
                data.setpMail(rs.getString("pMail"));
                data.settMail(rs.getString("tMail"));
                data.setzAddress(rs.getString("zAddress"));
                data.setOffice(rs.getString("Office"));
                return data;
            }
        });
    }
}
