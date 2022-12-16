package com.example.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping(value="/login")
public class LoginController {
    @Autowired
    UserServiceImpl service;

    @Autowired
    UserDAO userDAO;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        return "login";
    }

    @RequestMapping(value="/loginOk",method=RequestMethod.POST)
    public String loginCheck(HttpSession session, UserVO vo){
        String returnURL = "";
        if ( session.getAttribute("login") != null ){
            session.removeAttribute("login");
        }
        UserVO loginvo = service.getUser(vo);
        if ( loginvo != null ){
            System.out.println("로그인에 성공했습니다.");
            session.setAttribute("login", loginvo);
            returnURL = "redirect:/book/list";
        } else {
            System.out.println("로그인에 실패했습니다.");
            returnURL = "redirect:/login/login";
        }
        return returnURL;
    }

    @RequestMapping(value="/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/login/login";
    }

    @RequestMapping(value = "/adduser", method = RequestMethod.GET)
    public String addUser() {
        return "adduserform";
    }

    @RequestMapping(value = "/adduserok", method = RequestMethod.POST)
    public String addUserOK(UserVO vo) {
        int i = userDAO.insertUser(vo);
        if (i == 0)
            System.out.println("데이터 추가에 실패했습니다.");
        else
            System.out.println("데이터 추가에 성공했습니다.");
        return "redirect:/login/login";
    }
}
