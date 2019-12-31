package com.songbaozhen.senior1.week1.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.songbaozhen.senior1.week1.dao.SpDao;
import com.songbaozhen.senior1.week1.entity.Pp;
import com.songbaozhen.senior1.week1.entity.Sp;
import com.songbaozhen.senior1.week1.entity.Zl;


@Service
public class SpServiceImpl implements SpService{
	
	@Autowired
	private SpDao spDao;
	@Override
	public List<Sp> listSp(Sp sp) {
		// TODO Auto-generated method stub
		return spDao.listSp(sp);
	}
	@Override
	public List<Pp> listPp() {
		// TODO Auto-generated method stub
		return spDao.listPp();
	}
	@Override
	public List<Zl> listZl() {
		// TODO Auto-generated method stub
		return spDao.listZl();
	}
	@Override
	public Integer add(Sp sp) {
		// TODO Auto-generated method stub
		return spDao.add(sp);
	}
	@Override
	public Integer update(Sp sp) {
		// TODO Auto-generated method stub
		return spDao.update(sp);
	}
	@Override
	public Sp listSp2(Sp sp) {
		// TODO Auto-generated method stub
		return spDao.listSp2(sp);
	}
	@Override
	public Integer del(String ids) {
		// TODO Auto-generated method stub
		return spDao.del(ids);
	}

}
