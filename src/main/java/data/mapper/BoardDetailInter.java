package data.mapper;

import data.dto.BoardDto;
import data.dto.UserRecipeDto;
import org.apache.ibatis.annotations.Mapper;

import java.util.Map;

@Mapper
public interface BoardDetailInter {
    public BoardDto selectOneProRecipe(Map<String,Object> map);
    public UserRecipeDto selectOneUserRecipe(Map<String,Object> map);
}
