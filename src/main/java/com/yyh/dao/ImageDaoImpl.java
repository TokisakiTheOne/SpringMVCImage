package com.yyh.dao;

import com.yyh.po.Image;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

/**
 * @author YanYuHang
 * @create 2019-11-29-10:48
 */
@Repository
public class ImageDaoImpl implements ImageDao {
    @Autowired
    private JdbcTemplate jd;


    RowMapper<Image> rm = new RowMapper<Image>() {
        public Image mapRow(ResultSet rs, int rowNum) throws SQLException {
            Image image = new Image(rs.getInt(1), rs.getString(2), rs.getString(3),rs.getString(4));
            return image;
        }
    };

    public List<Image> selectAll() {
        return jd.query("select * from image", rm);
    }
}
