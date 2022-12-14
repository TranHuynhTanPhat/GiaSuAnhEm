package com.giasuanhem.service.Service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.giasuanhem.model.Models.ResponseModel;
import com.giasuanhem.model.Models.TransactionHistoryModel;
import com.giasuanhem.service.ApiConstant;
import com.google.gson.Gson;

@Service
@Transactional
public class TransactionService {
	static public TransactionHistoryModel createTransaction(TransactionHistoryModel model, HttpSession session)
			throws IOException {

		String jsonReq = new Gson().toJson(model);
		String jsonResponse = CommonService.postWithJson(ApiConstant.LIST_TRANSACTION, jsonReq, session);
		ObjectMapper objectMapper = new ObjectMapper();

		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});
		if (!res.getStatus()) {
			session.setAttribute("errorMessage", res.getMessage());
			return null;
		}

		return objectMapper.convertValue(res.getData(), new TypeReference<TransactionHistoryModel>() {
		});
	}

	static public List<TransactionHistoryModel> getListTransaction(HttpSession session)
			throws JsonParseException, JsonMappingException, IOException {

		String jsonResponse = CommonService.get(ApiConstant.LIST_TRANSACTION);

		ObjectMapper objectMapper = new ObjectMapper();

		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});
		if (!res.getStatus()) {
			session.setAttribute("errorMessage", res.getMessage());
			return null;
		}

		List<TransactionHistoryModel> listTransaction = objectMapper.convertValue(res.getData(),
				new TypeReference<List<TransactionHistoryModel>>() {
				});
		return listTransaction;

	}

	static public List<TransactionHistoryModel> search(Map<String, Object> params, HttpSession session)
			throws JsonParseException, JsonMappingException, IOException {

		String jsonResponse = CommonService.getWithParams(ApiConstant.TRANSACTION_FILTER, params);

		ObjectMapper objectMapper = new ObjectMapper();

		ResponseModel res = objectMapper.readValue(jsonResponse, new TypeReference<ResponseModel>() {
		});
		if (!res.getStatus()) {
			session.setAttribute("errorMessage", res.getMessage());
			return null;
		}

		List<TransactionHistoryModel> listTransaction = objectMapper.convertValue(res.getData(),
				new TypeReference<List<TransactionHistoryModel>>() {
				});
		return listTransaction;

	}

}
