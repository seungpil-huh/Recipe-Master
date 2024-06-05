package data.service;

import data.dto.BoardDto;
import data.dto.UserRecipeDto;
import data.mapper.MyPageInter;
import org.checkerframework.checker.units.qual.A;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class MyPageService {
    @Autowired
    private MyPageInter myPageInter;

    public List<BoardDto> getMyProReviews(String user_id){
        return myPageInter.getMyProReviews(user_id);
    };
    public List<UserRecipeDto> getMyUserReviews(String user_id){
        return myPageInter.getMyUserReviews(user_id);
    }
    public List<BoardDto> getMyProFavorites(String user_id){
        return myPageInter.getMyProFavorites(user_id);
    }
    public boolean addFavorites(String user_id, int ridx){
        Map<String,Object> map = new HashMap<>();
        map.put("user_id",user_id);
        map.put("ridx",ridx);
        return myPageInter.addFavorites(map);
    }
    public boolean deleteFavorites(String user_id, int ridx){
        Map<String,Object> map = new HashMap<>();
        map.put("user_id",user_id);
        map.put("ridx",ridx);
        return myPageInter.deleteFavorites(map);
    }
}
