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

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.giasuanhem.model.Models.ClassModel;
import com.giasuanhem.model.Models.TutorModel;
import com.giasuanhem.model.Models.ResponseModel;
import com.giasuanhem.model.Models.SubjectModel;
import com.giasuanhem.service.ApiConstant;
import com.google.gson.Gson;

@Service
@Transactional
public class SubjectService {

	static public void createSubject(SubjectModel model, HttpSession session) throws IOException {

		String jsonReq = new Gson().toJson(model);
		String jsonResponse = CommonService.postWithJson(ApiConstant.LIST_SUBJECT, jsonReq, session);
		ObjectMapper objectMapper = new ObjectMapper();
		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});
		if (!res.getStatus()) {
			session.setAttribute("errorCreateSubject", res.getMessage());
			return;
		}
		session.removeAttribute("errorCreateSubject");
	}

	static public void removeSubject(Map<String, Object> params, HttpSession session)
			throws JsonParseException, JsonMappingException, IOException {

		String jsonResponse = CommonService.postWithParams(ApiConstant.SUBJECT_REMOVE, params, session);
		ObjectMapper objectMapper = new ObjectMapper();
		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});
		if (!res.getStatus()) {
			session.setAttribute("errorRemoveSubject", res.getMessage());
			return;
		}
		session.removeAttribute("errorRemoveSubject");
	}

	static public void updateSubject(SubjectModel model, HttpSession session)
			throws JsonParseException, JsonMappingException, IOException {
		String jsonReq = new Gson().toJson(model);
		String jsonResponse = CommonService.postWithJson(ApiConstant.SUBJECT_UPDATE, jsonReq, session);

		ObjectMapper objectMapper = new ObjectMapper();
		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});
		if (!res.getStatus()) {
			session.setAttribute("errorUpdateSubject", res.getMessage());
			return;
		}
		session.removeAttribute("errorUpdateSubject");
	}

	static public List<SubjectModel> getListSubject(HttpSession session)
			throws JsonParseException, JsonMappingException, IOException {
		String jsonResponse = CommonService.get(ApiConstant.LIST_SUBJECT);
		ObjectMapper objectMapper = new ObjectMapper();

		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});
		if (!res.getStatus()) {
			session.setAttribute("errorGetListSubject", res.getMessage());
		}
		session.removeAttribute("errorGetListSubject");
		List<SubjectModel> listSubject = objectMapper.convertValue(res.getData(),
				new TypeReference<List<SubjectModel>>() {
				});

		return listSubject;

	}

	static public SubjectModel getSubject(Map<String, Object> param, HttpSession session)
			throws JsonParseException, JsonMappingException, IOException {
		String jsonResponse = CommonService.getWithParams(ApiConstant.SUBJECT_FINDID, param);
		ObjectMapper objectMapper = new ObjectMapper();
		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});
		if (!res.getStatus()) {
			session.setAttribute("errorGetSubject", res.getMessage());
			return null;
		}
		session.removeAttribute("errorGetSubject");
		SubjectModel model = objectMapper.convertValue(res.getData(), new TypeReference<SubjectModel>() {
		});
		return model;

	}
}
