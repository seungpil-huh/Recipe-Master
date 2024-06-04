package data.service;

import data.dto.MemberDto;
import data.mapper.MemberMapperInter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class MemberService {
    @Autowired
    private MemberMapperInter memInter;

    public int getTotalCount()
    {
        return memInter.getTotalCount();
    }

    public int getIdCheckCount(String searchid)
    {
        return memInter.getIdCheckCount(searchid);
    }

    public void insertMember(MemberDto dto)
    {
        memInter.insertMember(dto);
    }

    public List<MemberDto> getAllMembers()
    {
        return memInter.getAllMembers();
    }

    public MemberDto getData(int num)
    {
        return memInter.getData(num);
    }

    public MemberDto getDataById(String user_id)
    {
        return memInter.getDataById(user_id);
    }

    public void updatePhoto(int num,String profile_picture)
    {
        Map<String, Object> map=new HashMap<>();
        map.put("num", num);
        map.put("photo", profile_picture);
        memInter.updatePhoto(map);
    }

    public void updateMember(MemberDto dto)
    {
        memInter.updateMember(dto);
    }

    public boolean isEqualPassCheck(int num,String password)
    {
        Map<String, Object> map=new HashMap<String, Object>();
        map.put("num", num);
        map.put("password", password);
        int n=memInter.isEqualPassCheck(map);
        return n==1?true:false;
    }

    public void deleteMember(int num)
    {
        memInter.deleteMember(num);
    }

    public boolean isLoginCheck(String user_id,String passwd)
    {
        return memInter.isLoginCheck(user_id, passwd)==1?true:false;
    }
}
