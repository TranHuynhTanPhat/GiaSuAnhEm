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
import com.giasuanhem.controller.Client.Admin.ClassManagementController;
import com.giasuanhem.model.Models.AccountModel;
import com.giasuanhem.model.Models.ResponseModel;
import com.giasuanhem.model.Models.SubjectModel;
import com.giasuanhem.service.ApiConstant;
import com.google.gson.Gson;

@Service
@Transactional
public class AccountService {

	static public void updateAccount(AccountModel model, HttpSession session)
			throws JsonParseException, JsonMappingException, IOException {
		String jsonReq = new Gson().toJson(model);
		String jsonResponse = CommonService.postWithJson(ApiConstant.ACCOUNT_UPDATE, jsonReq, session);

		ObjectMapper objectMapper = new ObjectMapper();
		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});
		if (!res.getStatus()) {
			session.setAttribute("errorMessage", res.getMessage());
			return;
		}

	}

	static public AccountModel getAccount(Map<String, Object> params)
			throws JsonParseException, JsonMappingException, IOException {
		String jsonResponse = CommonService.getWithParams(ApiConstant.ACCOUNT_FINDID, params);
		System.out.println(jsonResponse);
		ObjectMapper objectMapper = new ObjectMapper();
		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});
		AccountModel model = objectMapper.convertValue(res.getData(), new TypeReference<AccountModel>() {
		});
		return model;

	}

	static public List<AccountModel> getListAccount() throws JsonParseException, JsonMappingException, IOException {

		String jsonResponse = CommonService.get(ApiConstant.LIST_ACCOUNT);
		ObjectMapper objectMapper = new ObjectMapper();

		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});

		List<AccountModel> listAccounts = objectMapper.convertValue(res.getData(),
				new TypeReference<List<AccountModel>>() {
				});

		return listAccounts;

	}

	/// Authorization
	static public void checkLogin(Map<String, Object> params, HttpSession session)
			throws JsonParseException, JsonMappingException, IOException {
		String jsonResponse = null;
		ObjectMapper objectMapper = new ObjectMapper();

		jsonResponse = CommonService.postWithParams(ApiConstant.CHECK_LOGIN, params, session);

		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});

		if (!res.getStatus()) {
			session.setAttribute("errorMessage", res.getMessage());
			return;
		}

		AccountModel model = objectMapper.convertValue(res.getData(), new TypeReference<AccountModel>() {
		});

		if (model.getRole() == 0) {
			session.setAttribute("admin", model.getUsername());
		} else if (model.getRole() == 1) {
			session.setAttribute("role", "tutor");
		} else {
			session.setAttribute("role", "parent");
		}

		session.setAttribute("accessToken", model.getToken());
		session.removeAttribute("errMessage");
	}

	static public void register(AccountModel model, HttpSession session) {
		try {
			String jsonReq = new Gson().toJson(model);

			ObjectMapper objectMapper = new ObjectMapper();

			String jsonResponse = CommonService.postWithJson(ApiConstant.REGISTER, jsonReq, session);

			ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
			});

			if (!res.getStatus()) {
				session.setAttribute("errorMessage", res.getMessage());
				return;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
