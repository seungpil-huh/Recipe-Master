package data.dto;

import lombok.*;
import org.apache.ibatis.type.Alias;

import java.sql.Timestamp;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Alias("UserRecipeDto")
public class UserRecipeDto {
    private int recipe_id;
    private int user_id;
    private boolean favorites;
    private String title;
    private String description;
    private String ingredients;
    private String instructions;
    private String image;
    private boolean is_professional;
    private int readcount;
    private Timestamp created_at;
    private Timestamp updated_at;
}
