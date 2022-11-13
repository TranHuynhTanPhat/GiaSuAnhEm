package com.giasuanhem.service.Service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
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
import com.giasuanhem.model.Models.NewClassModel;
import com.giasuanhem.model.Models.PostModel;
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
			if (params.get(key) instanceof Integer) {
				paramsSrt += key + "=" + params.get(key).toString() + "&";
			} else {
				paramsSrt += key + "='" + params.get(key).toString() + "'&";
			}
		}

		HttpHeaders headers = new HttpHeaders();
		headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
		HttpEntity<String> entity = new HttpEntity<>("parameters");
		ResponseEntity<String> response = restTemplate.exchange(takeApiURL(apiUrl) + "" + paramsSrt, HttpMethod.GET,
				entity, String.class);
		String jsonResponse = response.getBody();
		System.out.print(jsonResponse);
		return jsonResponse;
	}

	String post(String apiUrl) {
		return "";
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

}