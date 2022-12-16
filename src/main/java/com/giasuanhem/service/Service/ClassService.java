package com.giasuanhem.service.Service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.client.HttpClientErrorException;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.ObjectWriter;
import com.giasuanhem.model.Models.CategoryModel;
import com.giasuanhem.model.Models.ClassModel;
import com.giasuanhem.model.Models.NewClassModel;
import com.giasuanhem.model.Models.PostModel;
import com.giasuanhem.model.Models.SalaryModel;
import com.giasuanhem.model.Models.TutorModel;
import com.giasuanhem.controller.Admin.ClassManagementController;
import com.giasuanhem.model.Models.AccountModel;
import com.giasuanhem.model.Models.ResponseModel;
import com.giasuanhem.model.Models.SubjectModel;
import com.giasuanhem.service.ApiConstant;
import com.google.gson.Gson;

@Service
@Transactional
public class ClassService {

	static public void removeClass(Map<String, Object> params, HttpSession session)
			throws JsonParseException, JsonMappingException, IOException {

		String jsonResponse = CommonService.postWithParams(ApiConstant.CLASS_REMOVE, params, session);
		ObjectMapper objectMapper = new ObjectMapper();

		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});

		if (!res.getStatus()) {
			session.setAttribute("errorRemoveClass", res.getMessage());
			return;
		}
		session.removeAttribute("errorRemoveClass");

	}

	static public void createClass(ClassModel model, HttpSession session) throws IOException {
		String jsonReq = new Gson().toJson(model);
		String jsonResponse = CommonService.postWithJson(ApiConstant.LIST_CLASS, jsonReq, session);
		ObjectMapper objectMapper = new ObjectMapper();
		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});
		if (!res.getStatus()) {
			session.setAttribute("errorCreateClass", res.getMessage());
			return;
		}
		session.removeAttribute("errorCreateClass");

	}

	static public void updateClass(ClassModel model, HttpSession session)
			throws JsonParseException, JsonMappingException, IOException {
		String jsonReq = new Gson().toJson(model);

		String jsonResponse = CommonService.postWithJson(ApiConstant.CLASS_UPDATE, jsonReq, session);

		ObjectMapper objectMapper = new ObjectMapper();
		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});
		if (!res.getStatus()) {
			session.setAttribute("errorUpdateClass", res.getMessage());
			return;
		}
		session.removeAttribute("errorUpdateClass");

	}

	static public List<ClassModel> getListClass(HttpSession session)
			throws JsonParseException, JsonMappingException, IOException {

		String jsonResponse = CommonService.get(ApiConstant.LIST_CLASS);

		ObjectMapper objectMapper = new ObjectMapper();

		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});

		if (!res.getStatus()) {
			session.setAttribute("errorGetListClass", res.getMessage());
			return null;
		}

		List<ClassModel> listClassModels = objectMapper.convertValue(res.getData(),
				new TypeReference<List<ClassModel>>() {
				});
		session.removeAttribute("errorGetListClass");

		return listClassModels;

	}

	static public ClassModel getClass(Map<String, Object> param, HttpSession session)
			throws JsonParseException, JsonMappingException, IOException {
		String jsonResponse = CommonService.getWithParams(ApiConstant.CLASS_FINDID, param);

		ObjectMapper objectMapper = new ObjectMapper();
		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});
		if (!res.getStatus()) {
			session.setAttribute("errorGetClass", res.getMessage());
			return null;
		}
		ClassModel model = objectMapper.convertValue(res.getData(), new TypeReference<ClassModel>() {
		});
		session.removeAttribute("errorGetClass");

		return model;

	}

}
