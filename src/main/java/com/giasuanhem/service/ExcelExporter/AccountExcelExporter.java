package com.giasuanhem.service.ExcelExporter;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFFont;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.giasuanhem.model.Models.AccountModel;

public class AccountExcelExporter {
	private XSSFWorkbook workbook;
	private XSSFSheet sheet;
	private List<AccountModel> listModel;

	public AccountExcelExporter(List<AccountModel> listModel) {
		this.listModel = listModel;
		workbook = new XSSFWorkbook();
	}

	private void createCell(Row row, int columnCount, Object value, CellStyle style) {
		sheet.autoSizeColumn(columnCount);
		Cell cell = row.createCell(columnCount);
		if (value instanceof Integer) {
			cell.setCellValue((Integer) value);
		} else if (value instanceof Boolean) {
			cell.setCellValue((Boolean) value);
		} else {
			cell.setCellValue((String) value);
		}
		cell.setCellStyle(style);
	}

	private void writeHeaderLine() {
		sheet = workbook.createSheet("Tài khoản");

		Row row = sheet.createRow(0);

		CellStyle style = workbook.createCellStyle();
		XSSFFont font = workbook.createFont();
		font.setBold(true);
		font.setFontHeight(16);
		style.setFont(font);

		createCell(row, 0, "ID", style);
		createCell(row, 1, "Email", style);
		createCell(row, 2, "Tên tài khoản", style);
		createCell(row, 3, "Vai trò", style);
		createCell(row, 4, "Trạng thái", style);
		createCell(row, 5, "Ngày tạo", style);

	}

	private void writeDataLines() {
		int rowCount = 1;

		CellStyle style = workbook.createCellStyle();
		XSSFFont font = workbook.createFont();
		font.setFontHeight(14);
		style.setFont(font);

		for (AccountModel user : listModel) {
			Row row = sheet.createRow(rowCount++);
			int columnCount = 0;

			createCell(row, columnCount++, String.valueOf(user.getId()), style);
			createCell(row, columnCount++, user.getEmail(), style);
			createCell(row, columnCount++, user.getUsername(), style);
			createCell(row, columnCount++, String.valueOf(user.getRole()), style);
			createCell(row, columnCount++, String.valueOf(user.getState()), style);
			createCell(row, columnCount++, user.getCreated_at(), style);
		}
	}

	public void export(HttpServletResponse response) throws IOException {
		writeHeaderLine();
		writeDataLines();

		ServletOutputStream outputStream = response.getOutputStream();
		workbook.write(outputStream);
		workbook.close();

		System.out.println("done");
		outputStream.flush();
		outputStream.close();
	}
}
