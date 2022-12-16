package com.giasuanhem.service.Service;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.giasuanhem.model.Models.NewClassModel;
import com.giasuanhem.model.Models.ResponseModel;
import com.giasuanhem.model.Models.TransactionHistoryModel;
import com.giasuanhem.service.ApiConstant;
import com.google.gson.Gson;

@Service
@Transactional
public class CourceService {

	static public void updateStatus(Map<String, Object> params, HttpSession session)
			throws JsonParseException, JsonMappingException, IOException {
		String jsonResponse = CommonService.postWithParams(ApiConstant.NEWCLASS_STATUS, params, session);
		ObjectMapper objectMapper = new ObjectMapper();
		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});
		if (!res.getStatus()) {
			session.setAttribute("errorUNLS", res.getMessage());
			return;
		}
		session.removeAttribute("errorUNLS");
	}

	static public void removeCource(Map<String, Object> params, HttpSession session)
			throws JsonParseException, JsonMappingException, IOException {

		String jsonResponse = CommonService.postWithParams(ApiConstant.NEWCLASS_REMMOVE, params, session);
		ObjectMapper objectMapper = new ObjectMapper();
		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});
		if (!res.getStatus()) {
			session.setAttribute("errorRNL", res.getMessage());
			return;
		}
		session.removeAttribute("errorRNL");
	}

	static public NewClassModel createNewCource(NewClassModel model, HttpSession session)
			throws JsonParseException, JsonMappingException, IOException {

		String jsonReq = new Gson().toJson(model);
		String jsonResponse = CommonService.postWithJson(ApiConstant.LIST_NEWCLASS, jsonReq, session);
		ObjectMapper objectMapper = new ObjectMapper();
		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});
		if (!res.getStatus()) {
			session.setAttribute("errorCNL", res.getMessage());
			return null;
		}
		NewClassModel newClass = objectMapper.convertValue(res.getData(), new TypeReference<NewClassModel>() {
		});
		session.removeAttribute("errorCNL");
		return newClass;

	}

	static public void updateNewClass(NewClassModel model, HttpSession session)
			throws JsonParseException, JsonMappingException, IOException {

		String jsonReq = new Gson().toJson(model);
		String jsonResponse = CommonService.postWithJson(ApiConstant.NEWCLASS_UPDATE, jsonReq, session);
		ObjectMapper objectMapper = new ObjectMapper();
		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});
		if (!res.getStatus()) {
			session.setAttribute("errorUNL", res.getMessage());
			return;
		}
		session.removeAttribute("errorUNL");

	}

	static public List<NewClassModel> getListNewClass(Map<String, Object> params, HttpSession session)
			throws JsonParseException, JsonMappingException, IOException {

		String jsonResponse = CommonService.getWithParams(ApiConstant.LIST_NEWCLASS, params);
		ObjectMapper objectMapper = new ObjectMapper();
		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});
		if (!res.getStatus()) {
			session.setAttribute("errorGLNL", res.getMessage());
			return null;
		}
		List<NewClassModel> listNewClassModels = objectMapper.convertValue(res.getData(),
				new TypeReference<List<NewClassModel>>() {
				});
		session.removeAttribute("errorGLNL");
		return listNewClassModels;

	}

	static public NewClassModel getNewClass(Map<String, Object> params, HttpSession session)
			throws JsonParseException, JsonMappingException, IOException {
		String jsonResponse = CommonService.getWithParams(ApiConstant.NEWCLASS_FINDID, params);

		ObjectMapper objectMapper = new ObjectMapper();
		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});
		if (!res.getStatus()) {
			session.setAttribute("errorNL", res.getMessage());
			return null;
		}

		session.removeAttribute("errorNL");
		NewClassModel model = objectMapper.convertValue(res.getData(), new TypeReference<NewClassModel>() {
		});
		return model;
	}

	static public List<NewClassModel> search(Map<String, Object> params, HttpSession session)
			throws JsonParseException, JsonMappingException, IOException {
		String jsonResponse = CommonService.getWithParams(ApiConstant.NEWCLASS_FILTER, params);

		ObjectMapper objectMapper = new ObjectMapper();
		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});
		if (!res.getStatus()) {
			session.setAttribute("errorSNL", res.getMessage());
			return null;
		}

		session.removeAttribute("errorSNL");
		List<NewClassModel> listNewClassModels = objectMapper.convertValue(res.getData(),
				new TypeReference<List<NewClassModel>>() {
				});
		return listNewClassModels;
	}
}
