package com.yyh.po;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author YanYuHang
 * @create 2019-11-29-10:46
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Image {
    private int imgId;
    private String imgName;
    private String imgUrl;
    private String imgDesc;
}
