/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.edufet.sms.controller;

import com.edufet.sms.service.ClassnameService;
import com.edufet.sms.service.ClassroutineService;
import com.edufet.sms.service.ClasssectionService;
import com.edufet.sms.service.SubjectService;
import com.edufet.sms.service.TeacherinfoService;
import com.edufet.sms.model.Classroutine;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class ClassroutineCtrl {

    @Autowired
    ClassroutineService croutin;

    @Autowired
    TeacherinfoService teacherinfo;

    @Autowired
    SubjectService sub;

    @Autowired
    ClassnameService classser;

    @Autowired
    ClasssectionService classsec;

    @RequestMapping("/showclassroutinpage")
    public ModelAndView showroutinpage() {
        String routinlist = croutin.viewClassroutin();
        String teacherlist = teacherinfo.viewTeacher();
        String subjectlist = sub.viewSubject();
        String classlist = classser.viewClassname();
        String sectionlist = classsec.viewClasssection();
        ModelAndView mv = new ModelAndView("admin/classroutin", "classroutinObject", new Classroutine());
        mv.addObject("routinlists", routinlist);
        mv.addObject("teacherlists", teacherlist);
        mv.addObject("subjectlists", subjectlist);
        mv.addObject("classlists", classlist);
        mv.addObject("sectionlists", sectionlist);
        mv.addObject("check", "true");
        return mv;
    }

    @RequestMapping(value = "/classroutinadd", params = "Add")
    public String addroutinpage(@ModelAttribute("classroutinObject") Classroutine cr, HttpServletRequest request) {
        croutin.insertClassroutin(cr);
        return "redirect:/showclassroutinpage";
    }

    @RequestMapping(value = "/classroutinadd", params = "Edit")
    public String editroutin(@ModelAttribute("classroutinObject") Classroutine cr, HttpServletRequest request) {
        croutin.updateClassroutin(cr.getRoutineid(), cr);
        return "redirect:/showclassroutinpage";
    }

    @RequestMapping("removingclassroutin/{crid}")
    public String removeroutin(@PathVariable("crid") int crid) {
        croutin.deleteClassroutin(crid);
        return "redirect:/showclassroutinpage";
    }

    @RequestMapping("/editingclassroutin")
    public ModelAndView editroutinpage(@RequestParam("getcrid") int crid) {
        String routinlist = croutin.viewClassroutin();
        String teacherlist = teacherinfo.viewTeacher();
        String subjectlist = sub.viewSubject();
        String classlist = classser.viewClassname();
        String sectionlist = classsec.viewClasssection();
        ModelAndView mv = new ModelAndView("admin/classroutin", "classroutinObject", croutin.viewOneClassroutin(crid));
        mv.addObject("routinlists", routinlist);
        mv.addObject("teacherlists", teacherlist);
        mv.addObject("subjectlists", subjectlist);
        mv.addObject("classlists", classlist);
        mv.addObject("sectionlists", sectionlist);
        mv.addObject("check", "false");
        return mv;
    }

}
