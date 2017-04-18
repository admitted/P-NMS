package com.fh.controller.front;

import com.fh.controller.base.BaseController;
import com.fh.entity.Page;
import com.fh.service.system.article.ArticleManager;
import com.fh.util.PageData;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

/**
 * 前台文章总入口
 * @author:CuiJing
 * @date 2017/4/17.下午1:26
 */
@Controller
@RequestMapping(value = "/front")
public class FrontArticleController  extends BaseController{

    String menuUrl = "front/listArticles.do";  //菜单地址(权限用)

    @Resource(name="articleService")
    private ArticleManager articleService;

    /**
     * 展示单篇文章信息
     * @return
     * @throws Exception
     */
    @RequestMapping(value="/view")
    public ModelAndView view() throws Exception{
        logBefore(logger, " 前台显示 article 信息");
        ModelAndView mv = this.getModelAndView();
        PageData pd = new PageData();
        pd = this.getPageData();
        pd = articleService.getArticleByID(pd); // 根据文章 ID读取

        mv.setViewName("front/article/article_view");
        mv.addObject("msg", "editArticle");
        mv.addObject("pd", pd);

        return mv;
    }

    /**
     * 展示分类文章列表
     * @param page
     * @return
     * @throption
     */
    @RequestMapping(value="/listArticles")
    public ModelAndView listArticles(Page page)throws Exception{
        logBefore(logger, "前台显示 category article");
        ModelAndView mv = this.getModelAndView();
        PageData pd = new PageData();
        pd = this.getPageData();
        String[] category = "QQCUI876198439,1-机构概况,2-公安要闻,3-新闻发布,4-警务动态,5-警界博览,6-防范常识".split(",");
        int cint = Integer.parseInt(pd.getString("CATEGORY"));
        pd.put("categoryName" , category[cint].substring(2));       // 将分类名传到前台
        String keywords = pd.getString("keywords");					// 关键词检索条件
        if(null != keywords && !"".equals(keywords)){
            pd.put("keywords", keywords.trim());
        }
        String lastEditStart = pd.getString("lastEditStart");		// 开始时间
        String lastEditEnd = pd.getString("lastEditEnd");			// 结束时间
        if(lastEditStart != null && !"".equals(lastEditStart)){ 	// 若不为空加入 pd
            pd.put("lastEditStart", lastEditStart+" 00:00:00");
        }
        if(lastEditEnd != null && !"".equals(lastEditEnd)){
            pd.put("lastEditEnd", lastEditEnd+" 00:00:00");
        }
        page.setPd(pd);
        List<PageData> articleList = articleService.articlelistPageByCategory(page);	 //文章列表
        mv.setViewName("front/article/article_list");
        mv.addObject("articleList", articleList);
        mv.addObject("pd", pd);
        return mv;
    }


}
