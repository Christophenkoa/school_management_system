
package com.edufet.sms.model;


import java.io.Serializable;
import javax.persistence.*;


@Entity
@Table(name = "subjects_tbl")
public class Subjects implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int subjectid;
    @Column
    private String subjectcode;
    @Column
    private String subjectname;
    
    @Column
    private String status;

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getSubjectid() {
        return subjectid;
    }

    public void setSubjectid(int subjectid) {
        this.subjectid = subjectid;
    }

    public String getSubjectcode() {
        return subjectcode;
    }

    public void setSubjectcode(String subjectcode) {
        this.subjectcode = subjectcode;
    }

    public String getSubjectname() {
        return subjectname;
    }

    public void setSubjectname(String subjectname) {
        this.subjectname = subjectname;
    }
    

    
}
