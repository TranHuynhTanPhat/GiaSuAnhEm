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
public class AccountService {

	static public AccountModel modelAccount = null;

	static public void updateAccount(AccountModel model, HttpSession session)
			throws JsonParseException, JsonMappingException, IOException {
		String jsonReq = new Gson().toJson(model);
		String jsonResponse = CommonService.postWithJson(ApiConstant.ACCOUNT_UPDATE, jsonReq, session);

		ObjectMapper objectMapper = new ObjectMapper();
		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});
		if (!res.getStatus()) {
			session.setAttribute("errorUpdateAccount", res.getMessage());
			return;
		}
		session.removeAttribute("errorUpdateAccount");

	}

	static public void updatePasword(Map<String, Object> params, HttpSession session)
			throws JsonParseException, JsonMappingException, IOException {
		String jsonResponse = CommonService.postWithParams(ApiConstant.ACCOUNT_PASSWORD, params, session);
		ObjectMapper objectMapper = new ObjectMapper();
		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});
		if (!res.getStatus()) {
			session.setAttribute("errorUpdatePassword", res.getMessage());
			return;
		}
		session.removeAttribute("errorUpdatePassword");

	}

	static public AccountModel getAccount(Map<String, Object> params, HttpSession session)
			throws JsonParseException, JsonMappingException, IOException {
		String jsonResponse = CommonService.getWithParams(ApiConstant.ACCOUNT_FINDID, params);

		ObjectMapper objectMapper = new ObjectMapper();
		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});
		if (!res.getStatus()) {
			session.setAttribute("errorGetAccount", res.getMessage());
		}

		session.removeAttribute("errorGetAccount");
		AccountModel model = objectMapper.convertValue(res.getData(), new TypeReference<AccountModel>() {
		});
		return model;

	}

	static public List<AccountModel> getListAccount(HttpSession session)
			throws JsonParseException, JsonMappingException, IOException {

		String jsonResponse = CommonService.get(ApiConstant.LIST_ACCOUNT);
		ObjectMapper objectMapper = new ObjectMapper();

		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});

		if (!res.getStatus()) {
			session.setAttribute("errorGetListAccount", res.getMessage());
			return null;
		}

		List<AccountModel> listAccounts = objectMapper.convertValue(res.getData(),
				new TypeReference<List<AccountModel>>() {
				});
		session.removeAttribute("errorGetListAccount");
		return listAccounts;
	}

	static public List<AccountModel> getListAccount(Map<String, Object> params, HttpSession session)
			throws JsonParseException, JsonMappingException, IOException {
		String jsonResponse = CommonService.getWithParams(ApiConstant.ACCOUNT_FILTER, params);
		ObjectMapper objectMapper = new ObjectMapper();

		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});

		if (!res.getStatus()) {
			session.setAttribute("errorGetListAccount", res.getMessage());
			return null;
		}

		List<AccountModel> listAccounts = objectMapper.convertValue(res.getData(),
				new TypeReference<List<AccountModel>>() {
				});
		session.removeAttribute("errorGetListAccount");

		return listAccounts;

	}

	/// Authorization
	static public void checkLogin(Map<String, Object> params, HttpSession session)
			throws JsonParseException, JsonMappingException, IOException {
		session.removeAttribute("accessToken");

		String jsonResponse = null;
		ObjectMapper objectMapper = new ObjectMapper();

		jsonResponse = CommonService.postWithParams(ApiConstant.CHECK_LOGIN, params, session);
		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});

		if (!res.getStatus()) {
			session.setAttribute("errorLogin", res.getMessage());
			return;
		}

		modelAccount = objectMapper.convertValue(res.getData(), new TypeReference<AccountModel>() {
		});

		session.setAttribute("id", modelAccount.getId());
		session.setAttribute("state", modelAccount.getState());
		session.setAttribute("accessToken", modelAccount.getToken());

		if (modelAccount.getRole() == 0) {
			session.removeAttribute("role");
			session.setAttribute("admin", modelAccount.getUsername());
			modelAccount = null;
		} else if (modelAccount.getRole() == 1) {

			session.setAttribute("role", "tutor");
		} else {
			session.setAttribute("role", "parent");
		}

		session.removeAttribute("errorLogin");
	}

	static public void register(AccountModel model, HttpSession session)
			throws JsonParseException, JsonMappingException, IOException {

		String jsonReq = new Gson().toJson(model);
		ObjectMapper objectMapper = new ObjectMapper();

		String jsonResponse = CommonService.postWithJson(ApiConstant.REGISTER, jsonReq, session);
		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});

		if (!res.getStatus()) {
			session.setAttribute("errorRegister", res.getMessage());
			return;
		}
		session.removeAttribute("errorRegister");

	}
}
