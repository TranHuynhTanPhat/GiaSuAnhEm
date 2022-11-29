package com.giasuanhem.service.Service;

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
			String department, List<Object> subjects, List<Object> classes, List<Object> teachAreas, String vehicle,
			float sobuoi, String gender, String birthYear, String graduateYear, String isNow, String describe) {
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

	public NewClassModel mapNewCource(String address, String district, float sobuoi, String time, float salary,
			String require, float status, List<Object> categories, List<Object> classes, List<Object> subjects,
			String contact) {
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

	public SalaryModel mapSalary(String grade, float styleTeacher, String twoSessions, String threeSessions,
			String fourSessions, String fiveSessions) {
		SalaryModel newItem = new SalaryModel();
		newItem.setGrade(grade);
		newItem.setStyleTeacher(styleTeacher);
		newItem.setTwoSessions(twoSessions);
		newItem.setThreeSessions(threeSessions);
		newItem.setFourSessions(fourSessions);
		newItem.setFiveSessions(fiveSessions);
		return newItem;
	}

	// public CategoryModel mapCategory() {
//
//	}
}