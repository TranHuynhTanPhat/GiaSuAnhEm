package com.giasuanhem.service.Mapper;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.giasuanhem.model.Models.ClassModel;
import com.giasuanhem.model.Models.NewClassModel;
import com.giasuanhem.model.Models.SalaryModel;
import com.giasuanhem.model.Models.SubjectModel;
import com.giasuanhem.model.Models.TutorModel;

@Service
@Transactional
public class MapperModel {
	public TutorModel mapTutor(String name, String address, String email, String phone, String school,
			String department, Object subjects, Object classes, Object categories, int sobuoi, String gender,
			String birthYear, String graduateYear, String isNow, String describe, Object id_account) {
		TutorModel newItem = new TutorModel();
		newItem.setName(name);
		newItem.setAddress(address);
		newItem.setEmail(email);
		newItem.setPhone(phone);
		newItem.setSchool(school);
		newItem.setDepartment(department);
		newItem.setSubjects(subjects);
		newItem.setClasses(classes);
		newItem.setCategories(categories);
		newItem.setSobuoi(sobuoi);
		newItem.setGender(gender);
		newItem.setBirth_year(birthYear);
		newItem.setGraduate_year(graduateYear);
		newItem.setIsnow(isNow);
		newItem.setDescribe(describe);
		newItem.setId_account(id_account);
		return newItem;
	}

	public NewClassModel mapNewCource(String address, String district, int sobuoi, String time, int salary,
			String require, int status, Object categories, Object classes, Object subjects, String contact) {
		NewClassModel newItem = new NewClassModel();
		newItem.setAddress(address);
		newItem.setDistrict(district);
		newItem.setSobuoi(sobuoi);
		newItem.setTime(time);
		newItem.setSalary(salary);
		newItem.setSubjects(subjects);
		newItem.setClasses(classes);
		newItem.setRequire(require);
		newItem.setStatus(status);
		newItem.setCategories(categories);
		newItem.setContact(contact);
		return newItem;
	}

	public ClassModel mapClass(String name) {
		ClassModel newItem = new ClassModel();
		newItem.setName(name);
		return newItem;
	}

	public SubjectModel mapSubject(String name) {
		SubjectModel newItem = new SubjectModel();
		newItem.setName(name);
		return newItem;
	}

	public SalaryModel mapSalary(int type_teacher, String two_seesions, String three_sessions, String four_seesions,
			String five_sessions, Object id_category) {
		SalaryModel newItem = new SalaryModel();
		newItem.setId_category(id_category);
		newItem.setType_teacher(type_teacher);
		newItem.setTwo_sessions(two_seesions);
		newItem.setThree_sessions(three_sessions);
		newItem.setFour_sessions(four_seesions);
		newItem.setFive_sessions(five_sessions);

		return newItem;
	}

	// public CategoryModel mapCategory() {
//
//	}
}