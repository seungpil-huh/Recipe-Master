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

    public List<BoardDto> getProChefRecipeList(String myid){
        return boardListInter.getProChefRecipeList(myid);
    }
    public List<UserRecipeDto> getUserRecipeList(String myid){
        return boardListInter.getUserRecipeList(myid);
    }
    public List<BoardDto> searchProRecipe(String search,String myid){
        Map<String,String> map = new HashMap<>();
        map.put("search",search);
        map.put("myid",myid);
        return boardListInter.searchProRecipe(map);
    };
    public List<UserRecipeDto> searchUserRecipe(String search,String myid){
        Map<String,String> map = new HashMap<>();
        map.put("search",search);
        map.put("myid",myid);
        return boardListInter.searchUserRecipe(map);
    }
}
