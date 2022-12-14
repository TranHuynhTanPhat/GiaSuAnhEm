package com.giasuanhem.service.Service;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.giasuanhem.model.Models.ResponseModel;
import com.giasuanhem.model.Models.TutorModel;
import com.giasuanhem.service.ApiConstant;
import com.google.gson.Gson;

@Service
@Transactional
public class TutorService {
	;

	static public void createTutor(TutorModel model, HttpSession session) throws IOException {

		String jsonReq = new Gson().toJson(model);
		String jsonResponse = CommonService.postWithJson(ApiConstant.LIST_TUTOR, jsonReq, session);
		ObjectMapper objectMapper = new ObjectMapper();

		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});
		if (!res.getStatus()) {
			session.setAttribute("errorMessage", res.getMessage());
			return;
		}

		session.removeAttribute("errorMessage");
	}

//	static public void removeTutor(Map<String, Object> params, HttpSession session) {
//		try {
//			String jsonResponse = CommonService.postWithParams(ApiConstant.TUTOR_REMOVE, params, session);
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//	}

	static public void updateTutor(TutorModel model, HttpSession session)
			throws JsonParseException, JsonMappingException, IOException {

		String jsonReq = new Gson().toJson(model);
		String jsonResponse = CommonService.postWithJson(ApiConstant.TUTOR_UPDATE, jsonReq, session);
		ObjectMapper objectMapper = new ObjectMapper();

		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});
		if (!res.getStatus()) {
			session.setAttribute("errorMessage", res.getMessage());
			return;
		}
		session.removeAttribute("errorMessage");
	}

	static public List<TutorModel> getListTutor(HttpSession session)
			throws JsonParseException, JsonMappingException, IOException {
		String jsonResponse = CommonService.get(ApiConstant.LIST_TUTOR);

		ObjectMapper objectMapper = new ObjectMapper();
		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});
		if (!res.getStatus()) {
			session.setAttribute("errorMessage", res.getMessage());
			return null;
		}
		List<TutorModel> listTutorModels = objectMapper.convertValue(res.getData(),
				new TypeReference<List<TutorModel>>() {
				});
		return listTutorModels;

	}

	static public TutorModel getTutor(Map<String, Object> params, HttpSession session)
			throws JsonParseException, JsonMappingException, IOException {
		String jsonResponse = CommonService.getWithParams(ApiConstant.TUTOR_FINDID, params);
		ObjectMapper objectMapper = new ObjectMapper();
		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});
		if (!res.getStatus()) {
			session.setAttribute("errorMessage", res.getMessage());
			return null;
		}
		TutorModel model = objectMapper.convertValue(res.getData(), new TypeReference<TutorModel>() {
		});
		return model;

	}

	static public List<TutorModel> search(Map<String, Object> params, HttpSession session)
			throws JsonParseException, JsonMappingException, IOException {
		String jsonResponse = CommonService.getWithParams(ApiConstant.TUTOR_FILTER, params);
		ObjectMapper objectMapper = new ObjectMapper();

		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});
		if (!res.getStatus()) {
			session.setAttribute("errorMessage", res.getMessage());
			return null;
		}
		List<TutorModel> listTutorModels = objectMapper.convertValue(res.getData(),
				new TypeReference<List<TutorModel>>() {
				});
		return listTutorModels;

	}
}
