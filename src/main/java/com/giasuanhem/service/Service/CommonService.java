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
public class CommonService {
	@Autowired
	HttpSession session;

	private static final String BASE_URL_API = "https://giasuae-api.up.railway.app/v1";
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
		headers.set("token", "" + session.getAttribute("accessToken"));

		HttpEntity<String> entity = new HttpEntity<>("parameters", headers);
		try {
			ResponseEntity<String> response = restTemplate.exchange(takeApiURL(apiUrl) + "?" + paramsSrt,
					HttpMethod.POST, entity, String.class);

			String jsonResponse = response.getBody();
			return jsonResponse;
		} catch (HttpClientErrorException e) {
			return e.getResponseBodyAsString();
		}

	}

	String postWithJson(String apiUrl, String jsonReq) {
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		headers.set("token", "" + session.getAttribute("accessToken"));
		HttpEntity<String> requestEntity = new HttpEntity<String>(jsonReq, headers);
		String resString = restTemplate.postForObject(takeApiURL(apiUrl), requestEntity, String.class);
		return resString;
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

	public void createNewCource(NewClassModel model) throws IOException {

		String jsonReq = new Gson().toJson(model);
		String jsonResponse = postWithJson(ApiConstant.LIST_NEWCLASS, jsonReq);
		ObjectMapper objectMapper = new ObjectMapper();
		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});
		if (!res.getStatus()) {
			session.setAttribute("errorMessage", res.getMessage());
			return;
		}
	}

	public void createClass(ClassModel model) throws IOException {
		String jsonReq = new Gson().toJson(model);
		String jsonResponse = postWithJson(ApiConstant.LIST_CLASS, jsonReq);
		ObjectMapper objectMapper = new ObjectMapper();
		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});
		if (!res.getStatus()) {
			session.setAttribute("errorMessage", res.getMessage());
			return;
		}
	}

	public void createSubject(SubjectModel model) throws IOException {

		String jsonReq = new Gson().toJson(model);
		String jsonResponse = postWithJson(ApiConstant.LIST_SUBJECT, jsonReq);
		ObjectMapper objectMapper = new ObjectMapper();
		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});
		if (!res.getStatus()) {
			session.setAttribute("errorMessage", res.getMessage());
			return;
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

	public List<ClassModel> getListClass() throws JsonParseException, JsonMappingException, IOException {

		String jsonResponse = get(ApiConstant.LIST_CLASS);
		ObjectMapper objectMapper = new ObjectMapper();

		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});

		List<ClassModel> listClassModels = objectMapper.convertValue(res.getData(),
				new TypeReference<List<ClassModel>>() {
				});
		return listClassModels;

	}

	public List<CategoryModel> getListCategory(Map<String, Object> params)
			throws JsonParseException, JsonMappingException, IOException {
		String jsonResponse = getWithParams(ApiConstant.CATEGORY_FILTER, params);

		ObjectMapper objectMapper = new ObjectMapper();

		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});

		List<CategoryModel> listCategoryModel = objectMapper.convertValue(res.getData(),
				new TypeReference<List<CategoryModel>>() {
				});
		return listCategoryModel;
	}

	public List<NewClassModel> getListNewClass() {
		try {
			String jsonResponse = get(ApiConstant.LIST_NEWCLASS);
			ObjectMapper objectMapper = new ObjectMapper();
			ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
			});
			if (!res.getStatus()) {
				session.setAttribute("errorMessage", res.getMessage());
				return null;
			}
			List<NewClassModel> listNewClassModels = objectMapper.convertValue(res.getData(),
					new TypeReference<List<NewClassModel>>() {
					});
			return listNewClassModels;
		} catch (Exception e) {
			return null;
			// TODO: handle exception
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

	public List<SubjectModel> getListSubject() throws JsonParseException, JsonMappingException, IOException {
		String jsonResponse = get(ApiConstant.LIST_SUBJECT);
		ObjectMapper objectMapper = new ObjectMapper();

		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});

		List<SubjectModel> listSubject = objectMapper.convertValue(res.getData(),
				new TypeReference<List<SubjectModel>>() {
				});

		return listSubject;

	}

	public List<SalaryModel> getListSalary(Map<String, Object> params) {
		String jsonResponse = getWithParams(ApiConstant.LIST_SALARY, params);
		ObjectMapper objectMapper = new ObjectMapper();
		try {
			List<SalaryModel> listSalary = objectMapper.readValue(jsonResponse, new TypeReference<List<SalaryModel>>() {
			});
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

	public ClassModel getClass(Map<String, Object> param) throws JsonParseException, JsonMappingException, IOException {
		String jsonResponse = getWithParams(ApiConstant.CLASS_FINDID, param);

		ObjectMapper objectMapper = new ObjectMapper();
		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});
		if (!res.getStatus()) {
			session.setAttribute("errorMessage", res.getMessage());
			return null;
		}
		ClassModel model = objectMapper.convertValue(res.getData(), new TypeReference<ClassModel>() {
		});
		return model;

	}

	public SubjectModel getSubject(Map<String, Object> param)
			throws JsonParseException, JsonMappingException, IOException {
		String jsonResponse = getWithParams(ApiConstant.SUBJECT_FINDID, param);
		ObjectMapper objectMapper = new ObjectMapper();
		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});
		if (!res.getStatus()) {
			session.setAttribute("errorMessage", res.getMessage());
			return null;
		}

		SubjectModel model = objectMapper.convertValue(res.getData(), new TypeReference<SubjectModel>() {
		});
		return model;

	}

	public NewClassModel getNewClass(Map<String, Object> params)
			throws JsonParseException, JsonMappingException, IOException {
		String jsonResponse = getWithParams(ApiConstant.NEWCLASS_FINDID, params);

		ObjectMapper objectMapper = new ObjectMapper();
		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});
		if (!res.getStatus()) {
			session.setAttribute("errorMessage", res.getMessage());
			return null;
		}

		NewClassModel model = objectMapper.convertValue(res.getData(), new TypeReference<NewClassModel>() {
		});
		return model;

	}

	public PostModel getPost(Map<String, Object> params) {
		String jsonResponse = getWithParams(ApiConstant.POST_FINDID, params);
		ObjectMapper objectMapper = new ObjectMapper();
		try {
			PostModel model = objectMapper.readValue(jsonResponse, new TypeReference<PostModel>() {
			});
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

	public AccountModel getAccount(Map<String, Object> params)
			throws JsonParseException, JsonMappingException, IOException {
		String jsonResponse = getWithParams(ApiConstant.ACCOUNT_FINDID, params);
		System.out.println(jsonResponse);
		ObjectMapper objectMapper = new ObjectMapper();
		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});
		AccountModel model = objectMapper.convertValue(res.getData(), new TypeReference<AccountModel>() {
		});
		return model;

	}

	public List<AccountModel> getListAccount() throws JsonParseException, JsonMappingException, IOException {

		String jsonResponse = get(ApiConstant.LIST_ACCOUNT);
		ObjectMapper objectMapper = new ObjectMapper();

		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});

		List<AccountModel> listAccounts = objectMapper.convertValue(res.getData(),
				new TypeReference<List<AccountModel>>() {
				});

		return listAccounts;

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

	public void updateClass(ClassModel model) throws JsonParseException, JsonMappingException, IOException {
		String jsonReq = new Gson().toJson(model);
		String jsonResponse = postWithJson(ApiConstant.CLASS_UPDATE, jsonReq);

		ObjectMapper objectMapper = new ObjectMapper();
		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});
		if (!res.getStatus()) {
			session.setAttribute("errorMessage", res.getMessage());
			return;
		}

	}

	public void updateSubject(SubjectModel model) throws JsonParseException, JsonMappingException, IOException {
		String jsonReq = new Gson().toJson(model);
		System.out.println(jsonReq);
		String jsonResponse = postWithJson(ApiConstant.SUBJECT_UPDATE, jsonReq);

		ObjectMapper objectMapper = new ObjectMapper();
		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});
		if (!res.getStatus()) {
			session.setAttribute("errorMessage", res.getMessage());
			return;
		}
	}

	public void updateNewClass(NewClassModel model) throws JsonParseException, JsonMappingException, IOException {

		String jsonReq = new Gson().toJson(model);
		String jsonResponse = postWithJson(ApiConstant.NEWCLASS_UPDATE, jsonReq);
		ObjectMapper objectMapper = new ObjectMapper();
		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});
		if (!res.getStatus()) {
			session.setAttribute("errorMessage", res.getMessage());
			return;
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

	public void updateAccount(AccountModel model) throws JsonParseException, JsonMappingException, IOException {
		String jsonReq = new Gson().toJson(model);
		String jsonResponse = postWithJson(ApiConstant.ACCOUNT_UPDATE, jsonReq);

		ObjectMapper objectMapper = new ObjectMapper();
		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});
		if (!res.getStatus()) {
			session.setAttribute("errorMessage", res.getMessage());
			return;
		}

	}

	/// Authorization
	public void checkLogin(Map<String, Object> params, HttpSession session)
			throws JsonParseException, JsonMappingException, IOException {
		String jsonResponse = null;
		ObjectMapper objectMapper = new ObjectMapper();

		jsonResponse = postWithParams(ApiConstant.CHECK_LOGIN, params);

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

	public void register(AccountModel model, HttpSession session) {
		try {
			String jsonReq = new Gson().toJson(model);

			ObjectMapper objectMapper = new ObjectMapper();

			String jsonResponse = postWithJson(ApiConstant.REGISTER, jsonReq);

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