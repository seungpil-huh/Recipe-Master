package data.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.apache.ibatis.type.Alias;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Alias("RecipeReviewDto")
@Builder
public class RecipeReviewDto {
    private int review_id;
    private int ridx;
    private String user_id;
    private int rating;
    private String comment;
    private String created_at;
}
