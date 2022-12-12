package com.giasuanhem.service.Service;

import java.util.Arrays;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.client.HttpClientErrorException;
import org.springframework.web.client.RestTemplate;

@Service
@Transactional
public class CommonService {

	private static final String BASE_URL_API = "https://giasuae-api.up.railway.app/v1";
	static RestTemplate restTemplate = new RestTemplate();

	static String takeApiURL(String path) {
		return BASE_URL_API + path;
	}

	static String get(String apiUrl) {
		HttpHeaders headers = new HttpHeaders();
		headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
		HttpEntity<String> entity = new HttpEntity<>("parameters");
		ResponseEntity<String> response = restTemplate.exchange(takeApiURL(apiUrl), HttpMethod.GET, entity,
				String.class);
		String jsonResponse = response.getBody();
		return jsonResponse;

	}

	static String postWithParams(String apiUrl, Map<String, Object> params, HttpSession session) {
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

	static String postWithJson(String apiUrl, String jsonReq, HttpSession session) {
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		headers.set("token", "" + session.getAttribute("accessToken"));
		HttpEntity<String> requestEntity = new HttpEntity<String>(jsonReq, headers);
		String resString = restTemplate.postForObject(takeApiURL(apiUrl), requestEntity, String.class);
		return resString;
	}

	static String postWithParamAndJson(String apiUrl, String jsonReq, Map<String, Object> params, HttpSession session) {
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
		return resString;
	}

	static String getWithParams(String apiUrl, Map<String, Object> params) {
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
}