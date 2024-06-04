package data.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.apache.ibatis.type.Alias;

import java.sql.Timestamp;

@NoArgsConstructor
@Data
@Alias("MemberDto")
@Builder
@AllArgsConstructor
public class MemberDto {
    private int num;
    private String user_id;
    private String password;
    private String username;
    private String profile_picture;
    private String phone_number;
    private Timestamp join_date;
    private boolean is_professional;
    private boolean is_admin;
}
