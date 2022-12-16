package com.giasuanhem.service.Service;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.giasuanhem.model.Models.PostModel;
import com.giasuanhem.model.Models.ResponseModel;
import com.giasuanhem.service.ApiConstant;
import com.google.gson.Gson;

@Service
@Transactional
public class PostService {

	static public void createRecruitment(PostModel model, HttpSession session) throws IOException {

		String jsonReq = new Gson().toJson(model);
		String jsonResponse = CommonService.postWithJson(ApiConstant.LIST_POST, jsonReq, session);
		ObjectMapper objectMapper = new ObjectMapper();
		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});
		if (!res.getStatus()) {
			session.setAttribute("errorCreateRecruitment", res.getMessage());
			return;
		}
		session.removeAttribute("errorCreateRecruitment");
	}

	static public void removePost(Map<String, Object> params, HttpSession session)
			throws JsonParseException, JsonMappingException, IOException {

		String jsonResponse = CommonService.postWithParams(ApiConstant.POST_REMOVE, params, session);
		ObjectMapper objectMapper = new ObjectMapper();
		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});
		if (!res.getStatus()) {
			session.setAttribute("errorRemovePost", res.getMessage());
			return;
		}
		session.removeAttribute("errorRemovePost");
	}

	static public void updatePost(PostModel model, HttpSession session)
			throws JsonParseException, JsonMappingException, IOException {

		String jsonReq = new Gson().toJson(model);
		String jsonResponse = CommonService.postWithJson(ApiConstant.POST_UPDATE, jsonReq, session);
		ObjectMapper objectMapper = new ObjectMapper();
		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});
		if (!res.getStatus()) {
			session.setAttribute("errorUpdatePost", res.getMessage());
			return;
		}
		session.removeAttribute("errorUpdatePost");
	}

//	static public List<PostModel> getListPost() {
//		String jsonResponse = CommonService.get(ApiConstant.LIST_POST);
//		System.out.println(jsonResponse);
//		ObjectMapper objectMapper = new ObjectMapper();
//		try {
//			List<PostModel> listPost = objectMapper.readValue(jsonResponse, new TypeReference<List<PostModel>>() {
//			});
//			return listPost;
//
//		} catch (IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//			return null;
//		}
//
//	}

	static public List<PostModel> getListPostWithParams(Map<String, Object> params, HttpSession session)
			throws JsonParseException, JsonMappingException, IOException {
		String jsonResponse = CommonService.getWithParams(ApiConstant.POST_FILTER, params);

		ObjectMapper objectMapper = new ObjectMapper();
		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});
		if (!res.getStatus()) {
			session.setAttribute("errorGetListPost", res.getMessage());
			return null;
		}

		session.removeAttribute("errorGetListPost");
		List<PostModel> listPost = objectMapper.convertValue(res.getData(), new TypeReference<List<PostModel>>() {
		});
		return listPost;

	}

	static public PostModel getPost(Map<String, Object> params, HttpSession session)
			throws JsonParseException, JsonMappingException, IOException {
		String jsonResponse = CommonService.getWithParams(ApiConstant.POST_FINDID, params);

		ObjectMapper objectMapper = new ObjectMapper();
		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});
		if (!res.getStatus()) {
			session.setAttribute("errorGetPost", res.getMessage());
			return null;
		}
		session.removeAttribute("errorGetPost");
		PostModel model = objectMapper.convertValue(res.getData(), new TypeReference<PostModel>() {
		});
		return model;

	}

}
