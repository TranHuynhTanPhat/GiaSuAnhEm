package com.giasuanhem.service.Email;

import java.util.Random;

public class RandomOTP {
	static Random random = new Random();

	static public String randomOTP() {
		int max = 999999;
		int min = 111111;
		int random = (int) (Math.random() * (max - min + 1) + min);
		return String.valueOf(random);
	}
}
