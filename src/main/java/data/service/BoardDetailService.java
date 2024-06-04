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

    public BoardDto selectOneProRecipe(String myid,int ridx){
        Map<String,Object> map = new HashMap<>();
        map.put("myid",myid);
        map.put("ridx",ridx);
        return boardDetailInter.selectOneProRecipe(map);
    }
    public UserRecipeDto selectOneUserRecipe(String myid,int recipe_id){
        Map<String,Object> map = new HashMap<>();
        map.put("myid",myid);
        map.put("recipe_id",recipe_id);
        return boardDetailInter.selectOneUserRecipe(map);
    }
}
