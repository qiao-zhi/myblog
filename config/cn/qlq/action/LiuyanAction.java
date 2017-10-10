package cn.qlq.action;

import java.sql.SQLException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.opensymphony.xwork2.ActionSupport;

import cn.qlq.bean.Liuyan;
import cn.qlq.service.LiuyanService;
import cn.qlq.service.impl.LiuyanServiceImpl;
import cn.qlq.utils.PageBean;

@Controller
@Scope("prototype")
@SuppressWarnings("all")
public class LiuyanAction extends ActionSupport {

	@Resource
	private LiuyanService liuyanService;
	private String currentPage;
	private Map result;
	private String addResult;
	private Liuyan liuyan;

	// 增加，用ajax+json交互
	public String addLiuyan() throws SQLException {
		liuyan.setRiqi(new Date());
		boolean result = liuyanService.addLiuyan(liuyan);
		addResult = result ? "留言成功" : "添加失败";
		return "add";
	}

	// 查询留言
	public String getLiuyans() throws SQLException {
		result = new HashMap();
		Map condition = new HashMap<>();
		if (currentPage == null) {
			condition.put("currentPage", 1);
		} else {
			condition.put("currentPage", Integer.valueOf(currentPage));
		}
		condition.put("currentCount", 8);
		PageBean<Liuyan> pageBean = liuyanService.getPageBeanPage(condition);
		result.put("pageBean", pageBean);
		return "chaxun";
	}

	public LiuyanService getLiuyanService() {
		return liuyanService;
	}

	public void setLiuyanService(LiuyanService liuyanService) {
		this.liuyanService = liuyanService;
	}

	public Map getResult() {
		return result;
	}

	public void setResult(Map result) {
		this.result = result;
	}

	public String getAddResult() {
		return addResult;
	}

	public void setAddResult(String addResult) {
		this.addResult = addResult;
	}

	public Liuyan getLiuyan() {
		return liuyan;
	}

	public void setLiuyan(Liuyan liuyan) {
		this.liuyan = liuyan;
	}

	public String getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(String currentPage) {
		this.currentPage = currentPage;
	}
}
