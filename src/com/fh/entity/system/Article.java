package com.fh.entity.system;

/**
 * 类名称：文章新闻等
 * @author: CUI
 * @date: 2017/4/15
 * @version 1.0
 */
public class Article {
    private String ARTICLE_ID;      // 文章 id (UUID)
    private String CATEGORY;        // 文章分类
    private String AUTHOR;          // 作者
    private String TITLE;           // 文章名称
    private String CONTENT;         // 文章内容
    private String LAST_EDIT;       // 最后编辑时间
    private String STATUS;          // 启用状态

    public String getARTICLE_ID() {
        return ARTICLE_ID;
    }

    public void setARTICLE_ID(String ARTICLE_ID) {
        this.ARTICLE_ID = ARTICLE_ID;
    }

    public String getCATEGORY() {
        return CATEGORY;
    }

    public void setCATEGORY(String CATEGORY) {
        this.CATEGORY = CATEGORY;
    }

    public String getAUTHOR() {
        return AUTHOR;
    }

    public void setAUTHOR(String AUTHOR) {
        this.AUTHOR = AUTHOR;
    }

    public String getTITLE() {
        return TITLE;
    }

    public void setTITLE(String TITLE) {
        this.TITLE = TITLE;
    }

    public String getCONTENT() {
        return CONTENT;
    }

    public void setCONTENT(String CONTENT) {
        this.CONTENT = CONTENT;
    }

    public String getLAST_EDIT() {
        return LAST_EDIT;
    }

    public void setLAST_EDIT(String LAST_EDIT) {
        this.LAST_EDIT = LAST_EDIT;
    }

    public String getSTATUS() {
        return STATUS;
    }

    public void setSTATUS(String STATUS) {
        this.STATUS = STATUS;
    }
}
