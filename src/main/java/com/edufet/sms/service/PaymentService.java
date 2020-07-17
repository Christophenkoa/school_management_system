
package com.edufet.sms.service;

import com.edufet.sms.model.Payment;
import org.springframework.stereotype.Service;


@Service
public interface PaymentService {

    public String insertMonthlypayment(Payment pay);

    public String updateMonthlypayment(int payid, Payment pay);

    public String deleteMonthlypayment(int payid);

    public String viewMonthlypayment();

    public Payment viewOneMonthlypayment(int payid);

}
