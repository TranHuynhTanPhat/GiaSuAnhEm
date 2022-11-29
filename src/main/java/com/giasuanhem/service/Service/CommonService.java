package com.giasuanhem.service.Service;

import java.io.IOException;
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
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.ObjectWriter;
import com.giasuanhem.model.Models.CategoryModel;
import com.giasuanhem.model.Models.ClassModel;
import com.giasuanhem.model.Models.NewClassModel;
import com.giasuanhem.model.Models.PostModel;
import com.giasuanhem.model.Models.SalaryModel;
import com.giasuanhem.model.Models.TutorModel;
import com.giasuanhem.model.Models.adminModel;
import com.giasuanhem.model.Models.SubjectModel;
import com.giasuanhem.service.ApiConstant;
import com.google.gson.Gson;

@Service
@Transactional
public class CommonService {
	@Autowired
	HttpSession session;

	private static final String BASE_URL_API = "https://dbgiasuanhem.onrender.com/giasuanhem/v1";
	static RestTemplate restTemplate = new RestTemplate();

	String takeApiURL(String path) {
		return BASE_URL_API + path;
	}

	String get(String apiUrl) {
		HttpHeaders headers = new HttpHeaders();
		headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
		HttpEntity<String> entity = new HttpEntity<>("parameters");
		ResponseEntity<String> response = restTemplate.exchange(takeApiURL(apiUrl), HttpMethod.GET, entity,
				String.class);
		String jsonResponse = response.getBody();
		return jsonResponse;

	}

	String postWithParams(String apiUrl, Map<String, Object> params) {
		String paramsSrt = "";
		for (String key : params.keySet()) {

			paramsSrt += key + "=" + params.get(key).toString() + "&";

		}
		HttpHeaders headers = new HttpHeaders();
		headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
		headers.set("token", "Bearer " + session.getAttribute("accessToken"));

		HttpEntity<String> entity = new HttpEntity<>("parameters", headers);
		ResponseEntity<String> response = restTemplate.exchange(takeApiURL(apiUrl) + "?" + paramsSrt, HttpMethod.POST,
				entity, String.class);
		String jsonResponse = response.getBody();
		return jsonResponse;
	}

	void postWithJson(String apiUrl, String jsonReq) {
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		headers.set("token", "Bearer " + session.getAttribute("accessToken"));
		HttpEntity<String> requestEntity = new HttpEntity<String>(jsonReq, headers);
		String resString = restTemplate.postForObject(takeApiURL(apiUrl), requestEntity, String.class);
	}

	void postWithParamAndJson(String apiUrl, String jsonReq, Map<String, Object> params) {
		String paramsSrt = "";
		for (String key : params.keySet()) {

			paramsSrt += key + "=" + params.get(key).toString() + "&";

		}
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		headers.set("token", "Bearer " + session.getAttribute("accessToken"));
		HttpEntity<String> requestEntity = new HttpEntity<String>(jsonReq, headers);
		String resString = restTemplate.postForObject(takeApiURL(apiUrl) + "?" + paramsSrt, requestEntity,
				String.class);
	}

	String getWithParams(String apiUrl, Map<String, Object> params) {
		String paramsSrt = "";
		for (String key : params.keySet()) {
			paramsSrt += key + "=" + params.get(key).toString() + "&";
		}

		HttpHeaders headers = new HttpHeaders();
		headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
		HttpEntity<String> entity = new HttpEntity<>("parameters");
		ResponseEntity<String> response = restTemplate.exchange(takeApiURL(apiUrl) + "?" + paramsSrt, HttpMethod.GET,
				entity, String.class);
		String jsonResponse = response.getBody();
		return jsonResponse;
	}

	public void createTutor(TutorModel model) throws JsonProcessingException {
		try {
			String jsonReq = new Gson().toJson(model);
			postWithJson(ApiConstant.LIST_TUTOR, jsonReq);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void createCategory(CategoryModel model) throws JsonProcessingException {
		try {
			String jsonReq = new Gson().toJson(model);
			postWithJson(ApiConstant.LIST_CATEGORY, jsonReq);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void createNewCource(NewClassModel model) throws JsonProcessingException {
		try {
			String jsonReq = new Gson().toJson(model);
			postWithJson(ApiConstant.LIST_NEWCLASS, jsonReq);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void createClass(ClassModel model) throws JsonProcessingException {
		try {
			String jsonReq = new Gson().toJson(model);
			postWithJson(ApiConstant.LIST_CLASS, jsonReq);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void createSubject(SubjectModel model) throws JsonProcessingException {
		try {
			String jsonReq = new Gson().toJson(model);
			postWithJson(ApiConstant.LIST_SUBJECT, jsonReq);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void createRecruitment(PostModel model) throws JsonProcessingException {
		try {
			String jsonReq = new Gson().toJson(model);
			postWithJson(ApiConstant.LIST_POST, jsonReq);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void createSalary(SalaryModel model) throws JsonProcessingException {
		try {
			String jsonReq = new Gson().toJson(model);
			System.out.println(jsonReq);
			postWithJson(ApiConstant.LIST_SALARY, jsonReq);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void removeSubject(Map<String, Object> params) {
		try {
			String jsonResponse = postWithParams(ApiConstant.SUBJECT_REMOVE, params);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void removeClass(Map<String, Object> params) {
		try {
			String jsonResponse = postWithParams(ApiConstant.CLASS_REMOVE, params);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void removeTutor(Map<String, Object> params) {
		try {
			String jsonResponse = postWithParams(ApiConstant.TUTOR_REMOVE, params);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void removeCource(Map<String, Object> params) {

		try {
			String jsonResponse = postWithParams(ApiConstant.NEWCLASS_REMMOVE, params);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void removeCategory(Map<String, Object> params) {

		try {
			String jsonResponse = postWithParams(ApiConstant.CATEGORY_REMOVE, params);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void removePost(Map<String, Object> params) {

		try {
			String jsonResponse = postWithParams(ApiConstant.POST_REMOVE, params);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void removeSalary(Map<String, Object> params) {

		try {
			String jsonResponse = postWithParams(ApiConstant.SALARY_REMOVE, params);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public List<TutorModel> getListTutor() {
		String jsonResponse = get(ApiConstant.LIST_TUTOR);
		ObjectMapper objectMapper = new ObjectMapper();
		System.out.println(jsonResponse);
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

	public List<CategoryModel> getListQuan() {
		Map<String, Object> params = new HashMap<>();
		params.put("style", 1);
		String jsonResponse = getWithParams(ApiConstant.LIST_CATEGORY, params);
		ObjectMapper objectMapper = new ObjectMapper();
		try {
			List<CategoryModel> listCategoryModel = objectMapper.readValue(jsonResponse,
					new TypeReference<List<CategoryModel>>() {
					});
			return listCategoryModel;
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}

	public List<ClassModel> getListClass() {
		String jsonResponse = get(ApiConstant.LIST_CLASS);
		ObjectMapper objectMapper = new ObjectMapper();
		try {
			List<ClassModel> listClassModels = objectMapper.readValue(jsonResponse,
					new TypeReference<List<ClassModel>>() {
					});
			return listClassModels;

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}

	public List<CategoryModel> getListCategory(Map<String, Object> params) {
		String jsonResponse = getWithParams(ApiConstant.LIST_CATEGORY, params);
		ObjectMapper objectMapper = new ObjectMapper();
		try {
			List<CategoryModel> listCategoryModel = objectMapper.readValue(jsonResponse,
					new TypeReference<List<CategoryModel>>() {
					});
			return listCategoryModel;
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}

	public List<NewClassModel> getListNewClass() {

		String jsonResponse = get(ApiConstant.LIST_NEWCLASS);
		ObjectMapper objectMapper = new ObjectMapper();
		try {
			List<NewClassModel> listNewClassModels = objectMapper.readValue(jsonResponse,
					new TypeReference<List<NewClassModel>>() {
					});
			return listNewClassModels;

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}

	public List<PostModel> getListPost() {
		String jsonResponse = get(ApiConstant.LIST_POST);
		ObjectMapper objectMapper = new ObjectMapper();
		try {
			List<PostModel> listPost = objectMapper.readValue(jsonResponse, new TypeReference<List<PostModel>>() {
			});
			return listPost;

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}

	}

	public List<PostModel> getListPostWithParams(Map<String, Object> params) {
		String jsonResponse = getWithParams(ApiConstant.LIST_POST, params);
		System.out.println(jsonResponse);
		ObjectMapper objectMapper = new ObjectMapper();
		try {
			List<PostModel> listPost = objectMapper.readValue(jsonResponse, new TypeReference<List<PostModel>>() {
			});
			return listPost;

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}

	}

	public List<SubjectModel> getListSubject() {
		String jsonResponse = get(ApiConstant.LIST_SUBJECT);
		ObjectMapper objectMapper = new ObjectMapper();
		try {
			List<SubjectModel> listSubject = objectMapper.readValue(jsonResponse,
					new TypeReference<List<SubjectModel>>() {
					});

			return listSubject;

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}

	public List<SalaryModel> getListSalary(Map<String, Object> params) {
		String jsonResponse = getWithParams(ApiConstant.LIST_SALARY, params);
		ObjectMapper objectMapper = new ObjectMapper();
		try {
			List<SalaryModel> listSalary = objectMapper.readValue(jsonResponse, new TypeReference<List<SalaryModel>>() {
			});
			System.out.println(jsonResponse);
			return listSalary;
		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}
	}

	public CategoryModel getCategory(Map<String, Object> params) {
		String jsonResponse = getWithParams(ApiConstant.CATEGORY_FINDID, params);
		ObjectMapper objectMapper = new ObjectMapper();
		try {
			CategoryModel category = objectMapper.readValue(jsonResponse, new TypeReference<CategoryModel>() {
			});
			return category;
		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}
	}

	public TutorModel getTutor(Map<String, Object> params) {
		String jsonResponse = getWithParams(ApiConstant.TUTOR_FINDID, params);
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

	public ClassModel getClass(Map<String, Object> param) {
		String jsonResponse = getWithParams(ApiConstant.CLASS_FINDID, param);
		ObjectMapper objectMapper = new ObjectMapper();
		try {
			ClassModel model = objectMapper.readValue(jsonResponse, new TypeReference<ClassModel>() {
			});
			return model;
		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}
	}

	public SubjectModel getSubject(Map<String, Object> param) {
		String jsonResponse = getWithParams(ApiConstant.SUBJECT_FINDID, param);
		ObjectMapper objectMapper = new ObjectMapper();
		try {
			SubjectModel model = objectMapper.readValue(jsonResponse, new TypeReference<SubjectModel>() {
			});
			return model;
		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}
	}

	public NewClassModel getNewClass(Map<String, Object> params) {
		String jsonResponse = getWithParams(ApiConstant.NEWCLASS_FINDID, params);
		ObjectMapper objectMapper = new ObjectMapper();
		try {
			NewClassModel model = objectMapper.readValue(jsonResponse, new TypeReference<NewClassModel>() {
			});
			return model;
		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}
	}

	public PostModel getPost(Map<String, Object> params) {
		String jsonResponse = getWithParams(ApiConstant.POST_FINDID, params);
		ObjectMapper objectMapper = new ObjectMapper();
		try {
			PostModel model = objectMapper.readValue(jsonResponse, new TypeReference<PostModel>() {
			});
			System.out.println(jsonResponse);
			return model;
		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}
	}

	public SalaryModel getSalary(Map<String, Object> params) {
		String jsonResponse = getWithParams(ApiConstant.SALARY_FINDID, params);
		ObjectMapper objectMapper = new ObjectMapper();
		try {
			SalaryModel model = objectMapper.readValue(jsonResponse, new TypeReference<SalaryModel>() {
			});
			return model;
		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}
	}

	public void updateCategory(CategoryModel model, Map<String, Object> param) {
		try {
			String jsonReq = new Gson().toJson(model);
			postWithParamAndJson(ApiConstant.CATEGORY_UPDATE, jsonReq, param);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void updateTutor(TutorModel model, Map<String, Object> param) {
		try {
			String jsonReq = new Gson().toJson(model);
			postWithParamAndJson(ApiConstant.TUTOR_UPDATE, jsonReq, param);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void updateClass(ClassModel model, Map<String, Object> param) {
		try {
			String jsonReq = new Gson().toJson(model);
			postWithParamAndJson(ApiConstant.CLASS_UPDATE, jsonReq, param);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void updateSubject(SubjectModel model, Map<String, Object> param) {
		try {
			String jsonReq = new Gson().toJson(model);
			postWithParamAndJson(ApiConstant.SUBJECT_UPDATE, jsonReq, param);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void updateNewClass(NewClassModel model, Map<String, Object> param) {
		try {
			String jsonReq = new Gson().toJson(model);
			postWithParamAndJson(ApiConstant.NEWCLASS_UPDATE, jsonReq, param);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void updatePost(PostModel model, Map<String, Object> param) {
		try {
			String jsonReq = new Gson().toJson(model);
			postWithParamAndJson(ApiConstant.POST_UPDATE, jsonReq, param);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void updateSalary(SalaryModel model, Map<String, Object> param) {
		try {
			String jsonReq = new Gson().toJson(model);
			postWithParamAndJson(ApiConstant.SALARY_UPDATE, jsonReq, param);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void checkLogin(Map<String, Object> params, HttpSession session) {
		String jsonResponse = null;

		jsonResponse = postWithParams(ApiConstant.CHECK_LOGIN, params);
		ObjectMapper objectMapper = new ObjectMapper();
		try {
			adminModel admin = objectMapper.readValue(jsonResponse, new TypeReference<adminModel>() {
			});
			session.setAttribute("userName", admin.getUserName());
			session.setAttribute("accessToken", admin.getAccessToken());
		} catch (Exception e) {
			// TODO: handle exception
		}

	}

}