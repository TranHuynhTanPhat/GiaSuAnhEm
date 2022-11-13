package com.giasuanhem.service.Service;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.giasuanhem.model.Models.CategoryModel;
import com.giasuanhem.model.Models.ClassModel;
import com.giasuanhem.model.Models.NewClassModel;
import com.giasuanhem.model.Models.PostModel;
import com.giasuanhem.model.Models.SubjectModel;
import com.giasuanhem.service.ApiConstant;

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
		return jsonResponse;

	}

	public String getWithParams(String apiUrl, Map<String, Object> params) {
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
		System.out.print(jsonResponse);
		return jsonResponse;
	}

	String post(String apiUrl) {
		return "";
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
		System.out.println(jsonResponse);
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

//	private static final String BASE_URL_API = "http://localhost:8000/giasuanhem/v1";
//	static RestTemplate restTemplate = new RestTemplate();
//
//	String takeApiURL(String path) {
//		return BASE_URL_API + path;
//	}
//
//	public List<NewClassModel> getListNewClass() {
//		Map<String, Object> paramsMap = new HashMap<>();
//		paramsMap.put("chien", 1);
//		String jsonResponse = get(takeApiURL(ApiConstant.LIST_NEWCLASS), null);
//		ObjectMapper objectMapper = new ObjectMapper();
//		try {
//			List<NewClassModel> listNewClassModels = objectMapper.readValue(jsonResponse,
//					new TypeReference<List<NewClassModel>>() {
//					});
//			for (NewClassModel item : listNewClassModels) {
//				System.out.print(item.getAddress());
//			}
//			return listNewClassModels;
//
//		} catch (IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//			return null;
//		}
//	}
//
//	String get(String apiUrl, Map<Dynamic, Dynamic>... params) {
//		HttpHeaders headers = new HttpHeaders();
//		headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
//		HttpEntity<String> entity = new HttpEntity<>("parameters");
//		if (params == null) {
//			ResponseEntity<String> response = restTemplate.exchange(apiUrl, HttpMethod.GET, entity, String.class);
//			String jsonResponse = response.getBody();
//			return jsonResponse;
//
//		} else {
//			return restTemplate.patchForObject(apiUrl, params, String.class);
//		}
//
////		int begin = jsonResponse.indexOf("{");
////		int end = jsonResponse.lastIndexOf("}") + 1;
////
////		jsonResponse = jsonResponse.substring(begin, end);
//	}
//	
//	String post(String apiUrl, Map<Dynamic, Dynamic>... params) {
//		return "";
//	}

}