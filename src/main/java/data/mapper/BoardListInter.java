package data.mapper;

import data.dto.BoardDto;
import data.dto.UserRecipeDto;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

@Mapper
public interface BoardListInter {
    public List<BoardDto> getProChefRecipeList();
    public List<UserRecipeDto> getUserRecipeList();
    public List<BoardDto> searchProRecipe(String search);
    public List<UserRecipeDto> searchUserRecipe(String search);
}
