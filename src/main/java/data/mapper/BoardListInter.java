package data.mapper;

import data.dto.BoardDto;
import data.dto.UserRecipeDto;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import java.util.Map;

@Mapper
public interface BoardListInter {
    public List<BoardDto> getProChefRecipeList(String myid);
    public List<UserRecipeDto> getUserRecipeList(String myid);
    public List<BoardDto> searchProRecipe(Map<String,String> map);
    public List<UserRecipeDto> searchUserRecipe(Map<String,String> map);
    public int favoriteProCheck(Map<String,Object> map);
    public int favoriteUserCheck(Map<String,Object> map);
}
