
package com.edufet.sms.service;

import com.edufet.sms.model.Stgroup;
import org.springframework.stereotype.Service;


@Service
public interface StgroupService {

    public String insertStgroup(Stgroup sub);

    public String updateStgroup(Stgroup sub);

    public Integer deleteStgroup(int id);

    public String viewStgroup();

    public Stgroup viewOneStgroup(int id);

}
