
package com.edufet.sms.service;

import com.edufet.sms.model.Subjects;
import org.springframework.stereotype.Service;


@Service
public interface SubjectService {

    public String insertSubject(Subjects sub);

    public String updateSubject(Subjects sub);

    public Integer deleteSubject(int id);

    public String viewSubject();

    public Subjects viewOneSubject(int id);

}
