package controller.homePageBoard;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import data.dto.BoardDto;
import data.service.DataService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/board")
public class BoardController {
    @Autowired
    private DataService dataService;


    public List<BoardDto> list(Model model) {
        List<BoardDto> list = new ArrayList<>();
        try {
            URL url=new URL("http://openapi.foodsafetykorea.go.kr/api/b1981fc2518f4ed69016/COOKRCP01/json/1/1000");
            BufferedReader br=new BufferedReader(new InputStreamReader(url.openStream(),"UTF-8"));
            String result = br.readLine();

            ObjectMapper mapper = new ObjectMapper();
            JsonNode rootNode = mapper.readTree(result);
            JsonNode rowsNode = rootNode.get("COOKRCP01").get("row");

            BoardDto dto=new BoardDto();
            for (JsonNode row : rowsNode) {
                dto = BoardDto.builder()
                        .RCP_PARTS_DTLS(row.get("RCP_PARTS_DTLS").asText())
                        .RCP_WAY2(row.get("RCP_WAY2").asText())
                        .MANUAL_IMG20(row.get("MANUAL_IMG20").asText())
                        .MANUAL20(row.get("MANUAL20").asText())
                        .RCP_SEQ(row.get("RCP_SEQ").asText())
                        .INFO_NA(row.get("INFO_NA").asText())
                        .INFO_WGT(row.get("INFO_WGT").asText())
                        .INFO_PRO(row.get("INFO_PRO").asText())
                        .MANUAL_IMG13(row.get("MANUAL_IMG13").asText())
                        .MANUAL_IMG14(row.get("MANUAL_IMG14").asText())
                        .MANUAL_IMG15(row.get("MANUAL_IMG15").asText())
                        .MANUAL_IMG16(row.get("MANUAL_IMG16").asText())
                        .MANUAL_IMG10(row.get("MANUAL_IMG10").asText())
                        .MANUAL_IMG11(row.get("MANUAL_IMG11").asText())
                        .MANUAL_IMG12(row.get("MANUAL_IMG12").asText())
                        .MANUAL_IMG17(row.get("MANUAL_IMG17").asText())
                        .MANUAL_IMG18(row.get("MANUAL_IMG18").asText())
                        .MANUAL_IMG19(row.get("MANUAL_IMG19").asText())
                        .INFO_FAT(row.get("INFO_FAT").asText())
                        .HASH_TAG(row.get("HASH_TAG").asText())
                        .MANUAL_IMG02(row.get("MANUAL_IMG02").asText())
                        .MANUAL_IMG03(row.get("MANUAL_IMG03").asText())
                        .RCP_PAT2(row.get("RCP_PAT2").asText())
                        .MANUAL_IMG04(row.get("MANUAL_IMG04").asText())
                        .MANUAL_IMG05(row.get("MANUAL_IMG05").asText())
                        .MANUAL_IMG01(row.get("MANUAL_IMG01").asText())
                        .MANUAL01(row.get("MANUAL01").asText())
                        .ATT_FILE_NO_MK(row.get("ATT_FILE_NO_MK").asText())
                        .MANUAL_IMG06(row.get("MANUAL_IMG06").asText())
                        .MANUAL_IMG07(row.get("MANUAL_IMG07").asText())
                        .MANUAL_IMG08(row.get("MANUAL_IMG08").asText())
                        .MANUAL_IMG09(row.get("MANUAL_IMG09").asText())
                        .MANUAL08(row.get("MANUAL08").asText())
                        .MANUAL09(row.get("MANUAL09").asText())
                        .MANUAL06(row.get("MANUAL06").asText())
                        .MANUAL07(row.get("MANUAL07").asText())
                        .MANUAL04(row.get("MANUAL04").asText())
                        .MANUAL05(row.get("MANUAL05").asText())
                        .MANUAL02(row.get("MANUAL02").asText())
                        .MANUAL03(row.get("MANUAL03").asText())
                        .ATT_FILE_NO_MAIN(row.get("ATT_FILE_NO_MAIN").asText())
                        .MANUAL11(row.get("MANUAL11").asText())
                        .MANUAL12(row.get("MANUAL12").asText())
                        .MANUAL10(row.get("MANUAL10").asText())
                        .INFO_CAR(row.get("INFO_CAR").asText())
                        .MANUAL19(row.get("MANUAL19").asText())
                        .RCP_NA_TIP(row.get("RCP_NA_TIP").asText())
                        .INFO_ENG(row.get("INFO_ENG").asText())
                        .MANUAL17(row.get("MANUAL17").asText())
                        .MANUAL18(row.get("MANUAL18").asText())
                        .RCP_NM(row.get("RCP_NM").asText())
                        .MANUAL15(row.get("MANUAL15").asText())
                        .MANUAL16(row.get("MANUAL16").asText())
                        .MANUAL13(row.get("MANUAL13").asText())
                        .MANUAL14(row.get("MANUAL14").asText())
                        .build();
                list.add(dto);
                // 여기에서 다른 필드들도 매핑하는 코드 작성
                dataService.insertList(dto);
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        }

        return list;
    }


}
