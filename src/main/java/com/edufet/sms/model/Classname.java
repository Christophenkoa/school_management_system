/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.edufet.sms.model;


import java.io.Serializable;
import javax.persistence.*;

@Entity
@Table(name = "classname_tbl")
public class Classname implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int classid;
    
    @Column
    private String classname;
    
    @Column
    private String  status="Running";

    public int getClassid() {
        return classid;
    }

    public void setClassid(int classid) {
        this.classid = classid;
    }

    public String getClassname() {
        return classname;
    }

    public void setClassname(String classname) {
        this.classname = classname;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    
    
}
