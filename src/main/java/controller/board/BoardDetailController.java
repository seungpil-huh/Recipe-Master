package controller.board;

import data.dto.BoardDto;
import data.dto.RecipeReviewDto;
import data.dto.UserRecipeDto;
import data.service.BoardDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class BoardDetailController {
    @Autowired
    private BoardDetailService boardDetailService;

    @GetMapping("/board/detailpro")
    public String boardDetailPro(
            @RequestParam int ridx,
            @RequestParam String user_id,
            Model model) {
        BoardDto dto = boardDetailService.selectOneProRecipe(user_id, ridx);
        List<RecipeReviewDto> reviews = boardDetailService.getReviewsByRecipeId(ridx);
        model.addAttribute("boarddto", dto);
        model.addAttribute("reviews", reviews);
        return "board/detailpropage";
    }

    @PostMapping("/board/addReview")
    public String addReview(
            @RequestParam int recipe_id,
            @RequestParam String user_id,
            @RequestParam int rating,
            @RequestParam String comment) {
        RecipeReviewDto reviewDto = new RecipeReviewDto();
        reviewDto.setRecipe_id(recipe_id);
        reviewDto.setUser_id(user_id);
        reviewDto.setRating(rating);
        reviewDto.setComment(comment);
        boardDetailService.insertRecipeReview(reviewDto);
        return "redirect:/board/detailpro?ridx=" + recipe_id + "&user_id=" + user_id;
    }
}
