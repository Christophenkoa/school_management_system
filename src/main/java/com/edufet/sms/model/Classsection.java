
package com.edufet.sms.model;


import javax.persistence.*;


@Entity
@Table(name = "classsection_tbl")
public class Classsection {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int secid;
    @Column
    private int classid;
    @Column
    private String secname;
    @Column
    private String secstatus="Running";

    public int getSecid() {
        return secid;
    }

    public void setSecid(int secid) {
        this.secid = secid;
    }

    public int getClassid() {
        return classid;
    }

    public void setClassid(int classid) {
        this.classid = classid;
    }

    public String getSecname() {
        return secname;
    }

    public void setSecname(String secname) {
        this.secname = secname;
    }

    public String getSecstatus() {
        return secstatus;
    }

    public void setSecstatus(String secstatus) {
        this.secstatus = secstatus;
    }
}
