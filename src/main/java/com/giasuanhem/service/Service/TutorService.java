package com.giasuanhem.service.Service;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.giasuanhem.model.Models.TutorModel;
import com.giasuanhem.service.ApiConstant;
import com.google.gson.Gson;

@Service
@Transactional
public class TutorService {
	;

	static public void createTutor(TutorModel model, HttpSession session) throws JsonProcessingException {
		try {
			String jsonReq = new Gson().toJson(model);
			String jsonResponse = CommonService.postWithJson(ApiConstant.LIST_TUTOR, jsonReq, session);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	static public void removeTutor(Map<String, Object> params, HttpSession session) {
		try {
			String jsonResponse = CommonService.postWithParams(ApiConstant.TUTOR_REMOVE, params, session);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	static public void updateTutor(TutorModel model, HttpSession session) {
		try {
			String jsonReq = new Gson().toJson(model);
			String jsonResponse = CommonService.postWithJson(ApiConstant.TUTOR_UPDATE, jsonReq, session);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	static public List<TutorModel> getListTutor() {
		String jsonResponse = CommonService.get(ApiConstant.LIST_TUTOR);
		ObjectMapper objectMapper = new ObjectMapper();
		try {
			List<TutorModel> listTutorModels = objectMapper.readValue(jsonResponse,
					new TypeReference<List<TutorModel>>() {
					});
			return listTutorModels;

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}

	static public TutorModel getTutor(Map<String, Object> params) {
		String jsonResponse = CommonService.getWithParams(ApiConstant.TUTOR_FINDID, params);
		ObjectMapper objectMapper = new ObjectMapper();
		try {
			TutorModel model = objectMapper.readValue(jsonResponse, new TypeReference<TutorModel>() {
			});
			return model;
		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}
	}
}
