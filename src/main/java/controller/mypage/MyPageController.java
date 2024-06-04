package controller.mypage;

import data.dto.BoardDto;
import data.dto.UserRecipeDto;
import data.service.MyPageService;
import org.checkerframework.checker.units.qual.C;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/mypage")
public class MyPageController {
    @Autowired
    private MyPageService myPageService;

    @GetMapping("/myreview")
    public String myReviews(@RequestParam String user_id,
                            Model model) {
        List<BoardDto> prolist = myPageService.getMyProReviews(user_id);
        List<UserRecipeDto> userlist=myPageService.getMyUserReviews(user_id);
        model.addAttribute("prolist", prolist);
        model.addAttribute("userlist", userlist);

        return "/mypage/myreview";
    }
}
