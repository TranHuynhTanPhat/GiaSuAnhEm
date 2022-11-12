package com.giasuanhem.service.Service;

import java.io.IOException;
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
import com.fasterxml.jackson.databind.ser.std.StdKeySerializers.Dynamic;
import com.giasuanhem.model.Models.NewClassModel;
import com.giasuanhem.service.ApiConstant;

@Service
@Transactional
public class CommonService {

	private static final String BASE_URL_API = "http://localhost:8000/giasuanhem/v1";
	static RestTemplate restTemplate = new RestTemplate();

	String takeApiURL(String path) {
		return BASE_URL_API + path;
	}

	public void getListNewClass() {
		Map<String, Object> paramsMap = new HashMap<>();
		paramsMap.put("chien", 1);
		String jsonResponse = get(takeApiURL(ApiConstant.LIST_NEWCLASS), null);
		ObjectMapper objectMapper = new ObjectMapper();
		try {
			List<NewClassModel> listNewClassModels = objectMapper.readValue(jsonResponse,
					new TypeReference<List<NewClassModel>>() {
					});
			for (NewClassModel item : listNewClassModels) {
				System.out.print(item.getAddress());
			}

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	String get(String apiUrl, Map<Dynamic, Dynamic>... params) {
		HttpHeaders headers = new HttpHeaders();
		headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
		HttpEntity<String> entity = new HttpEntity<>("parameters");
		if (params == null) {
			ResponseEntity<String> response = restTemplate.exchange(apiUrl, HttpMethod.GET, entity, String.class);
			String jsonResponse = response.getBody();
			return jsonResponse;

		} else {
			return restTemplate.patchForObject(apiUrl, params, String.class);
		}

//		int begin = jsonResponse.indexOf("{");
//		int end = jsonResponse.lastIndexOf("}") + 1;
//
//		jsonResponse = jsonResponse.substring(begin, end);
	}
	
	String post(String apiUrl, Map<Dynamic, Dynamic>... params) {
		return "";
	}

}