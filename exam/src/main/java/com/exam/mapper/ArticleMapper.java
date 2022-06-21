package com.exam.mapper;


import com.exam.pojo.Article;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface ArticleMapper {

    @Select("select title from exam.article where type = #{type}")
    List<String> getArticleTitleByType(@Param("type") String type);

    @Select("select content from exam.article where title = #{title}")
    String getArticleContentByTitle(@Param("title") String title);

}
