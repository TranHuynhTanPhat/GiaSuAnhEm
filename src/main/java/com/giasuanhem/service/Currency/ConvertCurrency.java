package com.giasuanhem.service.Currency;

public class ConvertCurrency {
	static public String convertCurrency(int currency) {

		int length = String.valueOf(currency).length();

		String result = "";

		for (int i = 1; i <= length; i++) {
			if (i % 3 == 0 && i != length) {
				result = "," + String.valueOf(currency % 10) + result;

			} else {
				result = String.valueOf(currency % 10) + result;
			}
			currency = currency / 10;
		}
		return result;
	}
}
