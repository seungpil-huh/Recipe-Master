package data.service;

import data.dto.BoardDto;
import data.dto.UserRecipeDto;
import data.mapper.BoardDetailInter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

@Service
public class BoardDetailService {
    @Autowired
    private BoardDetailInter boardDetailInter;

    public BoardDto selectOneProRecipe(String user_id,int ridx){
        Map<String,Object> map = new HashMap<>();
        map.put("user_id",user_id);
        map.put("ridx",ridx);
        return boardDetailInter.selectOneProRecipe(map);
    }
    public UserRecipeDto selectOneUserRecipe(String user_id,int recipe_id){
        Map<String,Object> map = new HashMap<>();
        map.put("user_id",user_id);
        map.put("recipe_id",recipe_id);
        return boardDetailInter.selectOneUserRecipe(map);
    }
}
