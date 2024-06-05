package data.mapper;

import data.dto.BoardDto;
import data.dto.UserRecipeDto;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface MyPageInter {
    public List<BoardDto> getMyProReviews(String user_id);
    public List<UserRecipeDto> getMyUserReviews(String user_id);
    public List<BoardDto> getMyProFavorites(String user_id);
    public boolean addFavorites(Map<String, Object> map);
    public boolean deleteFavorites(Map<String, Object> map);
}
