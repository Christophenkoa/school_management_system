package com.edufet.sms.service;

import com.edufet.sms.model.MarksDetails;
import java.util.ArrayList;
import org.springframework.stereotype.Service;

@Service
public interface MarksDetailsService {

    public String insertStudentmarks(ArrayList<MarksDetails> markdetail);

    public String insertStudentmarks(MarksDetails marks);

    public String updateStudentmarks(int prid, MarksDetails marks);

    public String deleteStudentmarks(int id);

    public String showStudentmarks();

    public MarksDetails showOneStudentmarks(int id);

    public String showStudentmarks(int id);

}
