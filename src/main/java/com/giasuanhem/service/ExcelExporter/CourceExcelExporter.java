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

import com.giasuanhem.model.Models.NewClassModel;

public class CourceExcelExporter {
	private XSSFWorkbook workbook;
	private XSSFSheet sheet;
	private List<NewClassModel> listModel;

	public CourceExcelExporter(List<NewClassModel> listModel) {
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
		sheet = workbook.createSheet("Khóa học");

		Row row = sheet.createRow(0);

		CellStyle style = workbook.createCellStyle();
		XSSFFont font = workbook.createFont();
		font.setBold(true);
		font.setFontHeight(16);
		style.setFont(font);

		createCell(row, 0, "User ID", style);
		createCell(row, 1, "Địa chỉ", style);
		createCell(row, 2, "Quận", style);
		createCell(row, 3, "Số buổi", style);
		createCell(row, 4, "Thời gian", style);
		createCell(row, 5, "Lương", style);
		createCell(row, 6, "Yêu cầu", style);
		createCell(row, 7, "Trạng thái", style);
		createCell(row, 8, "Danh mục", style);
		createCell(row, 9, "Lớp học", style);
		createCell(row, 10, "Môn học", style);
		createCell(row, 11, "Liên hệ", style);
		createCell(row, 12, "Ngày tạo", style);

	}

	private void writeDataLines() {
		int rowCount = 1;

		CellStyle style = workbook.createCellStyle();
		XSSFFont font = workbook.createFont();
		font.setFontHeight(14);
		style.setFont(font);

		for (NewClassModel user : listModel) {
			Row row = sheet.createRow(rowCount++);
			int columnCount = 0;

			createCell(row, columnCount++, String.valueOf(user.getId()), style);
			createCell(row, columnCount++, user.getAddress(), style);
			createCell(row, columnCount++, user.getDistrict(), style);
			createCell(row, columnCount++, String.valueOf(user.getSobuoi()), style);
			createCell(row, columnCount++, user.getTime(), style);
			createCell(row, columnCount++, String.valueOf(user.getSalary()), style);
			createCell(row, columnCount++, user.getRequire(), style);
			createCell(row, columnCount++, String.valueOf(user.getStatus()), style);
			createCell(row, columnCount++, String.valueOf(user.getCategories()), style);
			createCell(row, columnCount++, String.valueOf(user.getClasses()), style);
			createCell(row, columnCount++, String.valueOf(user.getSubjects()), style);
			createCell(row, columnCount++, user.getContact(), style);
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
