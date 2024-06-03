package controller.board;

import data.dto.BoardDto;
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
    public String boardDetail(
            @RequestParam int ridx,
            @RequestParam String myid,
            Model model) {
        BoardDto dto =boardDetailService.selectOneProRecipe(myid, ridx);
        model.addAttribute("board", dto);
        return "detailpropage";
    }
}
