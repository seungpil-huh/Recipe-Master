package controller.board;

import data.dto.BoardDto;
import data.dto.UserRecipeDto;
import data.service.BoardListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class BoardListController {
    @Autowired
    private BoardListService boardListService;

    @ResponseBody
    @GetMapping("/board/getstartlist")
    public Map<String,Object> getBoardList() {
        Map<String,Object> map = new HashMap<>();

        List<BoardDto> prolist=boardListService.getProChefRecipeList();
        List<UserRecipeDto> userlist=boardListService.getUserRecipeList();

        map.put("prolist",prolist);
        map.put("ulist",userlist);

        return map;
    }
    @ResponseBody
    @GetMapping("/board/searchlist")
    public Map<String,Object> searchBoardList(String search) {
        Map<String,Object> map = new HashMap<>();

        List<BoardDto> prolist=boardListService.searchProRecipe(search);
        List<UserRecipeDto> userlist=boardListService.searchUserRecipe(search);

        map.put("prolist",prolist);
        map.put("ulist",userlist);

        return map;
    }
}
