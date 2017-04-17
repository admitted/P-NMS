package com.fh.controller.system.article;

import com.fh.controller.base.BaseController;
import com.fh.entity.Page;
import com.fh.service.system.article.ArticleManager;
import com.fh.util.*;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;

/** 
 * 文章管理类：ArticleController
 * @author: cui
 * @date： 2017/4/15
 * @version: 1.0
 */
@Controller
@RequestMapping(value="/article")
public class ArticleController extends BaseController {
	
	String menuUrl = "article/listArticles.do"; //菜单地址(权限用)

	@Resource(name="articleService")
	private ArticleManager articleService;

	/**
     * 显示分类文章列表
	 * @param page
	 * @return
	 * @throption
	 */
	@RequestMapping(value="/listArticles")
	public ModelAndView listArticles(Page page)throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+" >> 显示 category article");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
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
		mv.setViewName("system/article/article_list");
		mv.addObject("articleList", articleList);
		mv.addObject("pd", pd);
		mv.addObject("QX",Jurisdiction.getHC());					// 按钮权限
		return mv;
	}
	
	/**
     * 删除文章
	 * @param out
	 * @throws Exception 
	 */
	@RequestMapping(value="/deleteArticle")
	public void deleteArticle(PrintWriter out) throws Exception{
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "del")){return;} //校验权限
		logBefore(logger, Jurisdiction.getUsername()+" >> 删除 article");
		PageData pd = new PageData();
		pd = this.getPageData();
		articleService.deleteArticle(pd);
		out.write("success");
		out.close();
	}
	
	/**
     * 去新增文章页面
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/goAddArticle")
	public ModelAndView goAddArticle()throws Exception{
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "add")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		pd.put("ROLE_ID", "1");
		mv.setViewName("system/article/article_edit");
		mv.addObject("msg", "saveArticle");
		mv.addObject("pd", pd);
		return mv;
	}
	
	/**
     * 保存文章
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/saveArticle")
	public ModelAndView saveArticle() throws Exception{
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "add")){return null;} //校验权限
		logBefore(logger, Jurisdiction.getUsername()+" >> 新增 article");
        Map<String,String> map = new HashMap<String,String>();
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
        pd = this.getPageData();
        pd.put("ARTICLE_ID", this.get32UUID());	// 文章ID 主键
        pd.put("STATUS", "1");					// 发布状态  默认1:发布   (0:表示暂时不发布 1:立即发布)

        articleService.saveArticle(pd); 	    // 执行保存    出错的话后续步奏没有执行
        mv.setViewName("system/article/article_edit");
        mv.addObject("msg", "saveArticle");     // 注意这个 msg 的值
        mv.addObject("pd", pd);
        System.out.println("I'm here!");
        return mv;
	}
	
	/**
	 * 获取单篇文章详细信息
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/view")
	public ModelAndView view() throws Exception{
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		pd = articleService.getArticleByID(pd);				//根据文章 ID读取
		mv.setViewName("system/article/article_view");
		mv.addObject("msg", "editArticle");
		mv.addObject("pd", pd);
		return mv;
	}

	/**
	 * 去修改文章页面
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/goEditArticle")
	public ModelAndView goEditArticle() throws Exception {
		if (!Jurisdiction.buttonJurisdiction(menuUrl, "edit")) {
			return null;
		} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		pd = articleService.getArticleByID(pd);                   //根据ID读取
		mv.setViewName("system/article/article_edit");
		mv.addObject("msg", "editArticle");
		mv.addObject("pd", pd);
		return mv;
	}

	/**
	 * 修改文章
	 */
	@RequestMapping(value="/editArticle")
	public ModelAndView editArticle() throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"修改ser");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
        if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;}  //校验权限 判断当前操作者有无用户管理查看权限
        if(!Jurisdiction.buttonJurisdiction(menuUrl, "edit")){return null;} //校验权限 判断当前操作者有无用户管理修改权限
		articleService.editArticle(pd);	//执行修改
		mv.addObject("msg","success");
		mv.setViewName("save_result");
		return mv;
	}
	
	/**
	 * 批量删除文章
	 * @throws Exception 
	 */
	@RequestMapping(value="/deleteAllArticle")
	@ResponseBody
	public Object deleteAllArticle() throws Exception {
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "del")){return null;} //校验权限
		logBefore(logger, Jurisdiction.getUsername()+" >> 批量删除 article");
		PageData pd = new PageData();
		Map<String,Object> map = new HashMap<String,Object>();
		pd = this.getPageData();
		List<PageData> pdList = new ArrayList<PageData>();
		String ARTICLE_IDS = pd.getString("ARTICLE_IDS");
		if(null != ARTICLE_IDS && !"".equals(ARTICLE_IDS)){
			String ArrayARTICLE_IDS[] = ARTICLE_IDS.split(",");
			System.out.println("ARTICLE_IDS = "+ARTICLE_IDS);
			articleService.deleteAllArticles(ArrayARTICLE_IDS);
			pd.put("msg", "ok");
		}else{
			pd.put("msg", "no");
		}
		pdList.add(pd);
		map.put("list", pdList);
		return AppUtil.returnObject(pd, map);
	}
	
	/**
	 * 导出文章信息到EXCEL
	 * @return
	 */
	@RequestMapping(value="/excel")
	public ModelAndView exportExcel(){
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try{
			if(Jurisdiction.buttonJurisdiction(menuUrl, "cha")){
				String keywords = pd.getString("keywords");				//关键词检索条件
				if(null != keywords && !"".equals(keywords)){
					pd.put("keywords", keywords.trim());
				}
				String lastLoginStart = pd.getString("lastLoginStart");	//开始时间
				String lastLoginEnd = pd.getString("lastLoginEnd");		//结束时间
				if(lastLoginStart != null && !"".equals(lastLoginStart)){
					pd.put("lastLoginStart", lastLoginStart+" 00:00:00");
				}
				if(lastLoginEnd != null && !"".equals(lastLoginEnd)){
					pd.put("lastLoginEnd", lastLoginEnd+" 00:00:00");
				} 
				Map<String,Object> dataMap = new HashMap<String,Object>();
				List<String> titles = new ArrayList<String>();
				titles.add("用户名"); 		//1
				titles.add("编号");  		//2
				titles.add("姓名");			//3
				titles.add("职位");			//4
				titles.add("手机");			//5
				titles.add("邮箱");			//6
				titles.add("最近登录");		//7
				titles.add("上次登录IP");	//8
				dataMap.put("titles", titles);
				List<PageData> userList = articleService.listAllArticles(pd);
				List<PageData> varList = new ArrayList<PageData>();
				for(int i=0;i<userList.size();i++){
					PageData vpd = new PageData();
					vpd.put("var1", userList.get(i).getString("USERNAME"));		//1
					vpd.put("var2", userList.get(i).getString("NUMBER"));		//2
					vpd.put("var3", userList.get(i).getString("NAME"));			//3
					vpd.put("var4", userList.get(i).getString("ROLE_NAME"));	//4
					vpd.put("var5", userList.get(i).getString("PHONE"));		//5
					vpd.put("var6", userList.get(i).getString("EMAIL"));		//6
					vpd.put("var7", userList.get(i).getString("LAST_LOGIN"));	//7
					vpd.put("var8", userList.get(i).getString("IP"));			//8
					varList.add(vpd);
				}
				dataMap.put("varList", varList);
				ObjectExcelView erv = new ObjectExcelView();					//执行excel操作
				mv = new ModelAndView(erv,dataMap);
			}
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		return mv;
	}
	
	/**
	 * 打开文章上传EXCEL页面
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/goUploadExcel")
	public ModelAndView goUploadExcel()throws Exception{
		ModelAndView mv = this.getModelAndView();
		mv.setViewName("system/user/uploadexcel");
		return mv;
	}
	
	/**
	 * 下载文章导入模版
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping(value="/downExcel")
	public void downExcel(HttpServletResponse response)throws Exception{
		FileDownload.fileDownload(response, PathUtil.getClasspath() + Const.FILEPATHFILE + "Users.xls", "Users.xls");
	}
	

	
	@InitBinder
	public void initBinder(WebDataBinder binder){
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(format,true));
	}

}
