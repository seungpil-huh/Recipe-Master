package data.service;

import data.dto.BoardDto;
import data.mapper.DataInsert;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DataService {
    @Autowired
    private DataInsert dataInsert;

    public void insertList(BoardDto dto){
        dataInsert.insertList(dto);
    }
}
