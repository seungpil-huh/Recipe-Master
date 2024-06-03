package data.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.apache.ibatis.type.Alias;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Alias("BoardDto")
@Builder
public class BoardDto {
    private int ridx;
    private int readcount;
    private boolean favorites;
    private String ATT_FILE_NO_MAIN;
    private String RCP_NM;
    private String RCP_PARTS_DTLS;
    private String RCP_WAY2;
    private String MANUAL_IMG20;
    private String MANUAL20;
    private String RCP_SEQ;
    private String INFO_NA;
    private String INFO_WGT;
    private String INFO_PRO;
    private String MANUAL_IMG13;
    private String MANUAL_IMG14;
    private String MANUAL_IMG15;
    private String MANUAL_IMG16;
    private String MANUAL_IMG10;
    private String MANUAL_IMG11;
    private String MANUAL_IMG12;
    private String MANUAL_IMG17;
    private String MANUAL_IMG18;
    private String MANUAL_IMG19;
    private String INFO_FAT;
    private String HASH_TAG;
    private String MANUAL_IMG02;
    private String MANUAL_IMG03;
    private String RCP_PAT2;
    private String MANUAL_IMG04;
    private String MANUAL_IMG05;
    private String MANUAL_IMG01;
    private String MANUAL01;
    private String ATT_FILE_NO_MK;
    private String MANUAL_IMG06;
    private String MANUAL_IMG07;
    private String MANUAL_IMG08;
    private String MANUAL_IMG09;
    private String MANUAL08;
    private String MANUAL09;
    private String MANUAL06;
    private String MANUAL07;
    private String MANUAL04;
    private String MANUAL05;
    private String MANUAL02;
    private String MANUAL03;
    private String MANUAL11;
    private String MANUAL12;
    private String MANUAL10;
    private String INFO_CAR;
    private String MANUAL19;
    private String RCP_NA_TIP;
    private String INFO_ENG;
    private String MANUAL17;
    private String MANUAL18;
    private String MANUAL15;
    private String MANUAL16;
    private String MANUAL13;
    private String MANUAL14;
}
