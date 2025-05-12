package G_T.OfficeSystem.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import G_T.OfficeSystem.model.UserInfoModel;
import G_T.OfficeSystem.model.UserInfoModelDAO;

@Controller
public class UserInfoRegistration {
    @Autowired
    private UserInfoModelDAO userInfoModelDAO;
    
    // 一番最初に検索画面を表示するためのメソッド
    @RequestMapping (value = "/UserInfoRegister", method = RequestMethod.GET)
    public String Register (HttpSession session) {
        
        // System.out.println(session.getAttribute("session1"));
        /*
         * if(session.getAttribute("session1")==null) { return "SessionTimeout"; }
         */
        
        return "UserInfoRegister";
    }
    
    @RequestMapping (value = "/UserInfoRegister", method = RequestMethod.POST)
    public String Register (HttpSession session, UserInfoModel condition, Model model) {
        
        Integer count = userInfoModelDAO.CheckIdAndMail (condition);
        
        if (count != 0) {
            // session.setAttribute("session1",null);
            return "";
        }
        userInfoModelDAO.RegisterUser (condition);
        
        return "UserInfoRegister";
    }
    
    @RequestMapping (value = "/RegistrationSuccess", method = RequestMethod.GET)
    public String RegisterSuccess (HttpSession session) {
        
        // System.out.println(session.getAttribute("session1"));
        /*
         * if(session.getAttribute("session1")==null) { return "SessionTimeout"; }
         */
        
        return "RegistrationSuccess";
    }
}
