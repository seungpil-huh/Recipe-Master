package data.mapper;

import data.dto.BoardDto;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface DataInsert {
    public void insertList(BoardDto dto);
}
