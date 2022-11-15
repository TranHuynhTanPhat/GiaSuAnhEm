package com.giasuanhem.service.Service;


import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.giasuanhem.model.Models.TutorModel;
@Service
@Transactional
public class MapperModel {
	public TutorModel mapTutor(String name, String address, String email, String phone, String school,
			String department, List<Object> subjects, List<Object> classes,
			List<Object> teachAreas, String vehicle, float sobuoi, String gender, String birthYear, String graduateYear,
			String isNow, String describe) {
		TutorModel newItem = new TutorModel();
		newItem.setName(name);
		newItem.setAddress(address);
		newItem.setEmail(email);
		newItem.setPhone(phone);
		newItem.setSchool(school);
		newItem.setDepartment(department);
		newItem.setSubjects(subjects);
		newItem.setClasses(classes);
		newItem.setTeachAreas(teachAreas);
		newItem.setVehicle(vehicle);
		newItem.setSobuoi(sobuoi);
		newItem.setGender(gender);
		newItem.setBirthYear(birthYear);
		newItem.setGraduateYear(graduateYear);
		newItem.setIsNow(isNow);
		newItem.setDescribe(describe);
		return newItem;
	}

//	public CategoryModel mapCategory() {
//
//	}
}