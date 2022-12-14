package com.giasuanhem.service.Service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
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
import com.giasuanhem.model.Models.CategoryModel;
import com.giasuanhem.model.Models.ResponseModel;
import com.giasuanhem.service.ApiConstant;
import com.google.gson.Gson;

@Service
@Transactional
public class CategoryService {

	static public void createCategory(CategoryModel model, HttpSession session) throws IOException {

		String jsonReq = new Gson().toJson(model);
		String jsonResponse = CommonService.postWithJson(ApiConstant.LIST_CATEGORY, jsonReq, session);

		ObjectMapper objectMapper = new ObjectMapper();

		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});
		if (!res.getStatus()) {
			session.setAttribute("errorMessage", res.getMessage());
			return;
		}
		session.removeAttribute("errorMessage");

	}

	static public void removeCategory(Map<String, Object> params, HttpSession session)
			throws JsonParseException, JsonMappingException, IOException {

		String jsonResponse = CommonService.postWithParams(ApiConstant.CATEGORY_REMOVE, params, session);
		ObjectMapper objectMapper = new ObjectMapper();

		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});
		if (!res.getStatus()) {
			session.setAttribute("errorMessage", res.getMessage());
			return;
		}
		session.removeAttribute("errorMessage");

	}

	static public void updateCategory(CategoryModel model, HttpSession session)
			throws JsonParseException, JsonMappingException, IOException {

		String jsonReq = new Gson().toJson(model);
		String jsonResponse = CommonService.postWithJson(ApiConstant.CATEGORY_UPDATE, jsonReq, session);
		ObjectMapper objectMapper = new ObjectMapper();

		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});
		if (!res.getStatus()) {
			session.setAttribute("errorMessage", res.getMessage());
			return;
		}
		session.removeAttribute("errorMessage");

	}

//	public List<CategoryModel> getListQuan() {
//		Map<String, Object> params = new HashMap<>();
//		params.put("style", 1);
//		String jsonResponse = CommonService.getWithParams(ApiConstant.LIST_CATEGORY, params);
//		ObjectMapper objectMapper = new ObjectMapper();
//		try {
//			List<CategoryModel> listCategoryModel = objectMapper.readValue(jsonResponse,
//					new TypeReference<List<CategoryModel>>() {
//					});
//			return listCategoryModel;
//		} catch (IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//			return null;
//		}
//	}

	static public List<CategoryModel> getListCategory(HttpSession session)
			throws JsonParseException, JsonMappingException, IOException {

		String jsonResponse = CommonService.get(ApiConstant.LIST_CATEGORY);

		ObjectMapper objectMapper = new ObjectMapper();

		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});
		if (!res.getStatus()) {
			session.setAttribute("errorMessage", res.getMessage());
			return null;
		}

		List<CategoryModel> listCategoryModel = objectMapper.convertValue(res.getData(),
				new TypeReference<List<CategoryModel>>() {
				});
		session.removeAttribute("errorMessage");

		return listCategoryModel;

	}

	static public List<CategoryModel> getListCategory(Map<String, Object> params, HttpSession session)
			throws JsonParseException, JsonMappingException, IOException {
		String jsonResponse = CommonService.getWithParams(ApiConstant.CATEGORY_FILTER, params);

		ObjectMapper objectMapper = new ObjectMapper();

		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});
		if (!res.getStatus()) {
			session.setAttribute("errorMessage", res.getMessage());
			return null;
		}

		List<CategoryModel> listCategoryModel = objectMapper.convertValue(res.getData(),
				new TypeReference<List<CategoryModel>>() {
				});
		session.removeAttribute("errorMessage");
		return listCategoryModel;
	}

	static public CategoryModel getCategory(Map<String, Object> params, HttpSession session)
			throws JsonParseException, JsonMappingException, IOException {
		String jsonResponse = CommonService.getWithParams(ApiConstant.CATEGORY_FINDID, params);
		ObjectMapper objectMapper = new ObjectMapper();

		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});
		if (!res.getStatus()) {
			session.setAttribute("errorMessage", res.getMessage());
			return null;
		}

		CategoryModel category = objectMapper.convertValue(res.getData(), new TypeReference<CategoryModel>() {
		});
		session.removeAttribute("errorMessage");

		return category;

	}
}
