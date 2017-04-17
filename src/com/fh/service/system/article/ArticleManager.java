package com.fh.service.system.article;

import com.fh.util.PageData;
import com.fh.entity.Page;
import java.util.List;


/**
 * 文章接口类
 * @author CUI
 * @date 2017/4/15
 */
public interface ArticleManager {
	
	/**
     * 通过 ID 获得文章内容
	 * @param pd
	 * @return
	 * @throws Exception
	 */
	PageData getArticleByID(PageData pd)throws Exception;

	/**
     * 列出某栏目下的所有文章
	 * @param page
	 * @return
	 * @throws Exception
	 */
	List<PageData> articlelistPageByCategory(Page page) throws Exception;
	
	/**
     * 保存文章
	 * @param pd
	 * @throws Exception
	 */
	void saveArticle(PageData pd)throws Exception;

	
	/**
     * 修改文章
	 * @param pd
	 * @throws Exception
	 */
	void editArticle(PageData pd)throws Exception;
	
	/**
     * 删除文章
	 * @param pd
	 * @throws Exception
	 */
	void deleteArticle(PageData pd)throws Exception;
	
	/**
     * 批量删除文章
	 * @param ARTICLE_IDS
	 * @throws Exception
	 */
	void deleteAllArticles(String[] ARTICLE_IDS)throws Exception;
	
	/**
     * 用户列表(全部)
	 * @param pd
	 * @return
	 * @throws Exception
	 */
	List<PageData> listAllArticles(PageData pd)throws Exception;
	
	/**
     * 获取文章总数量
	 * @throws Exception
	 */
	PageData getArticleCount(String value)throws Exception;
	
}
