/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.edufet.sms.dao;

import com.edufet.sms.model.Classsection;
import com.edufet.sms.model.MarksDetails;
import com.edufet.sms.service.MarksDetailsService;
import com.google.gson.Gson;

import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MarksDetailsServiceImpl implements MarksDetailsService {
    @Autowired
    SessionFactory sessionFactory;

    @Override
    public String insertStudentmarks(MarksDetails pm) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.save(pm);
        t.commit();
        s.close();
        return null;   
    }

    @Override
    public String updateStudentmarks(int secid, MarksDetails pm) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        MarksDetails md = (MarksDetails) s.get(MarksDetails.class, secid);
        md.setMarkid(pm.getMarkid());
        md.setSubjectid(pm.getSubjectid());
        md.setMarkobtain(pm.getMarkobtain());
        md.setMarkgrade(pm.getMarkgrade());
        s.update(md);
        t.commit();
        s.close();
        return null;    
    }

    @Override
    public String deleteStudentmarks(int secid) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        MarksDetails pm = (MarksDetails) s.get(MarksDetails.class, secid);
        s.delete(pm);
        t.commit();
        s.close();
        return null;    
    }

    @Override
    public String showStudentmarks() {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        List<Classsection> productslist = s.createQuery("from MarksDetails").list();
        Gson g = new Gson();
        String productslistgson = g.toJson(productslist);
        t.commit();
        s.close();
        return productslistgson;    
    }

    @Override
    public MarksDetails showOneStudentmarks(int secid) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        MarksDetails pm = (MarksDetails) s.get(MarksDetails.class, secid);
        t.commit();
        s.close();
        return pm;    
    }
    
    @Override
    public String insertStudentmarks(ArrayList<MarksDetails> markslist) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        for (MarksDetails pdetails : markslist) {
            s.save(pdetails);
        }
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String showStudentmarks(int id) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        List<MarksDetails> productslist = s.createQuery("from MarksDetails where markid=?").setParameter(0, id).list();
        Gson g = new Gson();
        String productslistgson = g.toJson(productslist);
        t.commit();
        s.close();
        return productslistgson;
    }
    
}
