package data.service;

import data.dto.BoardDto;
import data.dto.UserRecipeDto;
import data.mapper.BoardListInter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BoardListService {
    @Autowired
    BoardListInter boardListInter;

    public List<BoardDto> getProChefRecipeList(){
        return boardListInter.getProChefRecipeList();
    }
    public List<UserRecipeDto> getUserRecipeList(){
        return boardListInter.getUserRecipeList();
    }
    public List<BoardDto> searchProRecipe(String search){
        return boardListInter.searchProRecipe(search);
    };
    public List<UserRecipeDto> searchUserRecipe(String search){
        return boardListInter.searchUserRecipe(search);
    }
}
