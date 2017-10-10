package cn.qlq.action;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")
public class TestAction extends ActionSupport{

	@Override
	public String execute() throws Exception {
		return super.execute();
	}
}
