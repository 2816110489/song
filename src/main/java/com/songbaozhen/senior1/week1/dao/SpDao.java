package com.songbaozhen.senior1.week1.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.songbaozhen.senior1.week1.entity.Pp;
import com.songbaozhen.senior1.week1.entity.Sp;
import com.songbaozhen.senior1.week1.entity.Zl;

public interface SpDao {

	List<Sp> listSp(Sp sp);
	List<Pp> listPp();
	List<Zl> listZl();
	
	Sp listSp2(Sp sp);
	Integer add(Sp sp);
	
	Integer update(Sp sp);
	
	Integer del(@Param("ids") String ids);
}
