package com.songbaozhen.senior1.week1.controller;

import java.io.File;
import java.io.IOException;
import java.lang.ProcessBuilder.Redirect;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.songbaozhen.senior1.week1.entity.Pp;
import com.songbaozhen.senior1.week1.entity.Sp;
import com.songbaozhen.senior1.week1.entity.Zl;
import com.songbaozhen.senior1.week1.service.SpService;

@Controller
public class SpServlet {
	@Autowired
	private SpService spService;
	
	@RequestMapping("splist")
	public String SpList(Sp sp,HttpServletRequest servletRequest,@RequestParam(defaultValue = "1") Integer pageNum)
	{
		PageHelper.startPage(pageNum, 4);
		List<Sp> listSp = spService.listSp(sp);
		PageInfo<Sp> pageInfo = new PageInfo<Sp>(listSp);
		servletRequest.setAttribute("listSp", listSp);
		servletRequest.setAttribute("pageInfo",pageInfo);
		return "splist";
	}
	@RequestMapping("splist2")
	public String SpList2(Sp sp,HttpServletRequest servletRequest)
	{
		Sp listSp = spService.listSp2(sp);
		servletRequest.setAttribute("listSp", listSp);
		return "sp";
	}
	@RequestMapping("toadd")
	public String toadd()
	{
		return "add";
	}
	
	@ResponseBody
	@RequestMapping("add")
	public boolean add(Sp sp,MultipartFile file) throws IllegalStateException, IOException
	{
		Integer add = null;
		if(file != null && !file.isEmpty())
		{
			String originalFilename = file.getOriginalFilename();
			originalFilename = UUID.randomUUID()+originalFilename.substring(originalFilename.lastIndexOf("."));
			File files = new File("C:\\Users\\Dell\\Desktop\\java代码\\大数据8\\img",originalFilename);
			files.mkdirs();
			file.transferTo(files);
			sp.setPimg("/img/"+originalFilename);
			add = spService.add(sp);
		}
		return add > 0;
	}
	
	
	@ResponseBody
	@PostMapping("listpp")
	public List<Pp> listpp()
	{
		return spService.listPp();
	}
	
	@ResponseBody
	@PostMapping("listzl")
	public List<Zl> listzl()
	{
		return spService.listZl();
	}
	
	
	@RequestMapping("toupdate")
	public String toupdate(Sp sp,HttpServletRequest servletRequest)
	{
		Sp listSp = spService.listSp2(sp);
		servletRequest.setAttribute("listSp", listSp);
		return "updates";
	}
	
	@ResponseBody
	@RequestMapping("del")
	public boolean del(String ids)
	{
		Integer del = spService.del(ids);
		return del>0;
	}
	
	@ResponseBody
	@RequestMapping("update")
	public boolean update(Sp sp,MultipartFile file) throws IllegalStateException, IOException
	{
		
		if(file != null && !file.isEmpty())
		{
			String originalFilename = file.getOriginalFilename();
			originalFilename = UUID.randomUUID()+originalFilename.substring(originalFilename.lastIndexOf("."));
			File files = new File("C:\\Users\\Dell\\Desktop\\java代码\\大数据8\\img",originalFilename);
			files.mkdirs();
			file.transferTo(files);
			sp.setPimg("/img/"+originalFilename);
			
		}
		
		Integer add =   spService.update(sp);
		 
		return add > 0 ;
	}
}
