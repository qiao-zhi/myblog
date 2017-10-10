package cn.qlq.test;

import java.sql.SQLException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cn.qlq.bean.Liuyan;
import cn.qlq.bean.LiuyanExample;
import cn.qlq.mapper.LiuyanCustomMapper;
import cn.qlq.mapper.LiuyanMapper;

/**
 * 娴嬭瘯dao
 * 
 * @author: qlq
 * @date : 2017骞�10鏈�2鏃ヤ笂鍗�9:35:25
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
@SuppressWarnings("all")
public class DaoTest {
	@Resource
	private LiuyanMapper liuyanMapper;
	@Autowired
	private LiuyanCustomMapper liuyanCustomMapper;

	@Test
	public void test1() {
		Liuyan liuyan = new Liuyan();
		liuyan.setContent("绗竴鏉＄暀瑷�");
		liuyan.setRiqi(new Date());
		liuyan.setName("涔斿埄寮�");
		int result = liuyanMapper.insert(liuyan);
		System.out.println(result);
	}

	// 测试查询
	@Test
	public void test2() throws SQLException {
		// 查询总数
		LiuyanExample liuyanExample = new LiuyanExample();
		LiuyanExample.Criteria criteria = liuyanExample.createCriteria();
		int total = liuyanMapper.countByExample(liuyanExample);
		System.out.println(total);
		// 查询
		Map condition = new HashMap<>();
		condition.put("start", 0);
		condition.put("end", 10);
		List<Liuyan> liuyans = liuyanCustomMapper.getAllLiuyan(condition);
		System.out.println(liuyans);
	}

}
