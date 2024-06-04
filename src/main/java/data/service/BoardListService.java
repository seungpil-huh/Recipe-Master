package data.service;

import data.dto.BoardDto;
import data.dto.UserRecipeDto;
import data.mapper.BoardListInter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class BoardListService {
    @Autowired
    BoardListInter boardListInter;

    public List<BoardDto> getProChefRecipeList(String user_id){
        return boardListInter.getProChefRecipeList(user_id);
    }
    public List<UserRecipeDto> getUserRecipeList(String user_id){
        return boardListInter.getUserRecipeList(user_id);
    }
    public List<BoardDto> searchProRecipe(String search,String user_id){
        Map<String,String> map = new HashMap<>();
        map.put("search",search);
        map.put("user_id",user_id);
        return boardListInter.searchProRecipe(map);
    };
    public List<UserRecipeDto> searchUserRecipe(String search,String user_id){
        Map<String,String> map = new HashMap<>();
        map.put("search",search);
        map.put("user_id",user_id);
        return boardListInter.searchUserRecipe(map);
    }
}
