package controller.login;

import data.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/login")
public class LoginController {
    @Autowired
    private MemberService memberService;

    @GetMapping("/loginform")
    public String loginForm() {
        return "login/loginform";
    }
    @ResponseBody
    @GetMapping("/loginGo")
    public Map<String, String> isLogin(
            @RequestParam(defaultValue = "no") String saveid,
            @RequestParam String user_id,
            @RequestParam String passwd,
            HttpSession session
    ) {
        Map<String, String> map = new HashMap<>();

        boolean loginStatus = memberService.isLoginCheck(user_id,passwd);
        if(loginStatus) {
            map.put("status", "success");
            session.setAttribute("loginid", user_id);
            session.setAttribute("saveid", saveid.equals("no")?"no":"yes");
            session.setAttribute("loginok","yes");
            if(saveid.equals("yes")) {
                session.setAttribute("saved_id",user_id);
            }
        }else {
            map.put("status", "fail");
        }
        return map;
    }
    @ResponseBody
    @GetMapping("/logout")
    public void memberLogout(HttpSession session) {
        session.removeAttribute("loginok");
        session.removeAttribute("loginid");
    }
}
