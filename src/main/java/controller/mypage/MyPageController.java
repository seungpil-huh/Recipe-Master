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
import org.springframework.web.bind.annotation.ResponseBody;

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

        return "mypage/myreview";
    }

    @GetMapping("/myfavorites")
    public String myFavorites(
            @RequestParam String user_id,
            Model model) {
        List<BoardDto> prolist = myPageService.getMyProFavorites(user_id);
        model.addAttribute("prolist", prolist);
        return "mypage/myfavorites";
    }
    @ResponseBody
    @GetMapping("/favoriteAdd")
    public boolean favoriteAdd(
            @RequestParam String user_id,
            @RequestParam int ridx
    ){
        return myPageService.addFavorites(user_id, ridx);
    }
    @ResponseBody
    @GetMapping("/favoriteDelete")
    public boolean favoriteDelete(
            @RequestParam int ridx,
            @RequestParam String user_id
    ){
        return myPageService.deleteFavorites(user_id, ridx);
    }
}
