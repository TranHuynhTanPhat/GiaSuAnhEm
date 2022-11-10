package com.giasuanhem.model.Models;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.giasuanhem.entity.Entity.MapperNewClass;
import com.giasuanhem.entity.Entity.NewClass;

@Repository
public class NewClassModel {
	@Autowired
	public JdbcTemplate _jdbcTemplate;

	public List<NewClass> GetDataNewClasses() {
		List<NewClass> list = new ArrayList<NewClass>();
		String sql = "SELECT*FROM new_classes";
		list = _jdbcTemplate.query(sql, new MapperNewClass());
		return list;
	}

}