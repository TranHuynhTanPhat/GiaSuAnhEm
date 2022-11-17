package com.giasuanhem.service.Service;

import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

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
import com.giasuanhem.model.Models.SubjectModel;
import com.giasuanhem.service.ApiConstant;
import com.google.gson.Gson;

@Service
@Transactional
public class CommonService {

	private static final String BASE_URL_API = "https://guarded-ocean-48054.herokuapp.com/giasuanhem/v1";
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
		System.out.println("###################RESPONSE JSONNNNN###################");
		System.out.println(jsonResponse);
		return jsonResponse;

	}

	String postWithParams(String apiUrl, Map<String, Object> params) {
		String paramsSrt = "";
		for (String key : params.keySet()) {

			paramsSrt += key + "=" + params.get(key).toString() + "&";

		}
		HttpHeaders headers = new HttpHeaders();
		headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
		HttpEntity<String> entity = new HttpEntity<>("parameters");
		ResponseEntity<String> response = restTemplate.exchange(takeApiURL(apiUrl) + "?" + paramsSrt, HttpMethod.POST,
				entity, String.class);
		String jsonResponse = response.getBody();
		System.out.println("###################RESPONSE JSONNNNN###################");
		System.out.println(jsonResponse);
		return jsonResponse;
	}
	
	void postWithJson(String apiUrl, String jsonReq) {
			HttpHeaders headers = new HttpHeaders();
			headers.setContentType(MediaType.APPLICATION_JSON);
			HttpEntity<String> requestEntity = new HttpEntity<String>(jsonReq, headers);
			String resString = restTemplate.postForObject(takeApiURL(apiUrl), requestEntity, String.class);
			System.out.println("###################RESPONSE JSONNNNN###################");
			System.out.println(resString);
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
		} catch (Exception e){
			e.printStackTrace();
		}
	}

	public void removeSubject(Map<String, Object> params) {
		try {
			String jsonResponse = postWithParams(ApiConstant.SUBJECT_REMOVE, params);
		}catch (Exception e){
			e.printStackTrace();
		}
	}
	
	public void removeClass(Map<String, Object> params) {
		try {
			String jsonResponse = postWithParams(ApiConstant.CLASS_REMOVE, params);
		}catch (Exception e){
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
		System.out.println("CC");
		try {
			String jsonResponse = postWithParams(ApiConstant.NEWCLASS_REMMOVE, params);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public List<TutorModel> getListTutor() {
		String jsonResponse = get(ApiConstant.LIST_TUTOR);
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
			System.out.println(jsonResponse);
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
			System.out.print(jsonResponse);
			return listSalary;
		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public ModelAndView checkLogin(Map<String, Object> params, HttpSession session) {
		try {
			ModelAndView mav = new ModelAndView("admin/adminhome");
			session.setAttribute("userName", params.get("userName"));
			session.setAttribute("password", params.get("password"));
			return mav;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

}