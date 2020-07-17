package com.edufet.sms.service;

import com.edufet.sms.model.Studentinfo;
import org.springframework.stereotype.Service;

@Service
public interface StudentinfoService {

    public String insertstudent(Studentinfo st);

    public String updatestudent(int stuid, Studentinfo st);

    public String deletestudent(int stuid);

    public String viewstudent();

    public Studentinfo viewSt(String s);

    public Studentinfo viewOnestudent(int stuid);

    public Studentinfo viewstudentprofile(int stuid);

    public Studentinfo showOneStudentbyEmail(String email);

}
