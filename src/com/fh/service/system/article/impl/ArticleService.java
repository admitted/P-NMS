package com.fh.service.system.article.impl;

import com.fh.dao.DaoSupport;
import com.fh.service.system.article.ArticleManager;
import com.fh.util.PageData;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;


/**
 * Article 文章 manager 实现类
 * @author CUI
 * @date 2017/4/15
 */
@Service("articleService")
public class ArticleService implements ArticleManager {

	@Resource(name = "daoSupport")
	private DaoSupport dao;

	/**
	 * 通过 ID 获得文章信息
	 * @param pd
	 * @return
	 * @throws Exception
	 */
	@Override
	public PageData getArticleByID(PageData pd) throws Exception {
		return (PageData)dao.findForObject("ArticleMapper.getArticleByID", pd);
	}

    /**
     * 获取分类下的所有文章
     * @param pd
     * @return
     * @throws Exception
     */
	@Override
	public List<PageData> listAllArticlesByCategory(PageData pd) throws Exception {
		return ( List <PageData>)dao.findForObject("ArticleMapper.listAllArticlesByCategory", pd);
	}

    /**
     * 保存文章
     * @param pd
     * @throws Exception
     */
	@Override
	public void saveArticle(PageData pd) throws Exception {
        dao.findForObject("ArticleMapper.saveArticle", pd);
	}

    /**
     * 编辑文章
     * @param pd
     * @throws Exception
     */
	@Override
	public void editArticle(PageData pd) throws Exception {
        dao.findForObject("ArticleMapper.editArticle", pd);
	}

    /**
     * 删除文章
     * @param pd
     * @throws Exception
     */
	@Override
	public void deleteArticle(PageData pd) throws Exception {
        dao.findForObject("ArticleMapper.deleteArticle", pd);
	}

    /**
     * 批量删除文章
     * @param ARTICLE_IDS
     * @throws Exception
     */
	@Override
	public void deleteAllArticles(String[] ARTICLE_IDS) throws Exception {
        dao.findForObject("ArticleMapper.deleteAllArticles", ARTICLE_IDS);
	}

    /**
     * 所有文章(所有 category)
     * @param pd
     * @return
     * @throws Exception
     */
	@Override
	public List<PageData> listAllArticles(PageData pd) throws Exception {
		return  (List<PageData>) dao.findForObject("ArticleMapper.listAllArticles", pd);
	}

    /**
     * 获取文章总数
     * @param value
     * @return
     * @throws Exception
     */
	@Override
	public PageData getArticleCount(String value) throws Exception {
		return  (PageData) dao.findForObject("ArticleMapper.getArticleCount", value);
	}
}
