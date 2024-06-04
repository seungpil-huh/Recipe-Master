package data.mapper;

import data.dto.MemberDto;
import org.apache.ibatis.annotations.*;

import java.util.List;
import java.util.Map;

@Mapper
public interface MemberMapperInter {
    @Select("select count(*) from users")
    public int getTotalCount();

    @Select("select count(*) from users where user_id=#{searchid}")
    public int getIdCheckCount(String searchid);

    @Insert("""
            insert into users (user_id, password, username, profile_picture, phone_number, join_date, is_professional, is_admin)
            values (#{user_id}, #{password}, #{username}, #{profile_picture}, #{phone_number}, now(), #{is_professional}, #{is_admin})
            """)
    public void insertMember(MemberDto dto);

    @Select("select * from users order by num desc")
    public List<MemberDto> getAllMembers();

    @Select("select * from users where num=#{num}")
    public MemberDto getData(int num);

    @Select("select * from users where user_id=#{user_id}")
    public MemberDto getDataById(String user_id);

    @Update("update users set profile_picture=#{profile_picture} where num=#{num}")
    public void updatePhoto(Map<String, Object> map);

    @Update("""
            update users set user_id=#{user_id}, password=#{password}, username=#{username},
        phone_number=#{phone_number} where num=#{num}
            """)
    public void updateMember(MemberDto dto);

    @Delete("delete from users where num=#{num}")
    public void deleteMember(int num);

    @Select("select count(*) from users where num=#{num} and password=#{password}")
    public int isEqualPassCheck(Map<String, Object> map);

    @Select("""
            select count(*) from users where user_id=#{user_id} and password=#{passwd}
            """)
    public int isLoginCheck(String user_id, String passwd);
}
