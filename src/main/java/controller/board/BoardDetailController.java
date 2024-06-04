package controller.board;

import data.dto.BoardDto;
import data.dto.UserRecipeDto;
import data.service.BoardDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class BoardDetailController {
    @Autowired
    private BoardDetailService boardDetailService;
    @GetMapping("/board/detailpro")
    public String boardDetailPro(
            @RequestParam int ridx,
            @RequestParam String user_id,
            Model model) {
        BoardDto dto =boardDetailService.selectOneProRecipe(user_id, ridx);
        model.addAttribute("boarddto", dto);
        return "board/detailpropage";
    }
    @GetMapping("/board/detailuser")
    public String boardDetailUser(@RequestParam int recipe_id,
                                  @RequestParam String user_id,
                                  Model model){
        UserRecipeDto dto = boardDetailService.selectOneUserRecipe(user_id,recipe_id);
        model.addAttribute("userdto", dto);
        return "board/detailuserpage";
    }
}
