package com.giasuanhem.service.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.giasuanhem.entity.Entity.NewClass;
import com.giasuanhem.model.Models.NewClassModel;
@Service
@Transactional
public class CommonService{
	@Autowired 
	private NewClassModel newClassModel;
	
	public List<NewClass> getListNewClass(){
		return newClassModel.GetDataNewClasses();
	}
}