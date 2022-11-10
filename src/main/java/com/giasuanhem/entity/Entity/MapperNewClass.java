package com.giasuanhem.entity.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperNewClass implements RowMapper<NewClass> {

	@Override
	public NewClass mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		NewClass newClasses = new NewClass();
		newClasses.setId(rs.getInt("id"));
		newClasses.setAddress(rs.getString("address"));
		newClasses.setCategory(rs.getInt("category"));
		newClasses.setDistrict(rs.getString("district"));
		newClasses.setRequest(rs.getString("request"));
		newClasses.setSalary(rs.getInt("salary"));
		newClasses.setSobuoi(rs.getInt("sobuoi"));
		newClasses.setStatus(rs.getInt("status"));
		newClasses.setTime(rs.getString("time"));

		return newClasses;
	}

}