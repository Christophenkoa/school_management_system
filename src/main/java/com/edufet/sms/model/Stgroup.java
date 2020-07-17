
package com.edufet.sms.model;


import java.io.Serializable;
import javax.persistence.*;


@Entity
@Table(name = "stgroup_tbl")
public class Stgroup implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int groupid;
    @Column
    private String groupname;
    
    @Column
    private String status;

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getGroupid() {
        return groupid;
    }

    public void setGroupid(int groupid) {
        this.groupid = groupid;
    }

    public String getGroupname() {
        return groupname;
    }

    public void setGroupname(String groupname) {
        this.groupname = groupname;
    }


    

    
}
