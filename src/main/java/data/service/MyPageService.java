package data.service;

import data.dto.BoardDto;
import data.dto.UserRecipeDto;
import data.mapper.MyPageInter;
import org.checkerframework.checker.units.qual.A;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

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
}
