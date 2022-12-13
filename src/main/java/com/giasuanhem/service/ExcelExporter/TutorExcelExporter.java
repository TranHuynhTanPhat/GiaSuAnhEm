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

import com.giasuanhem.model.Models.TutorModel;

public class TutorExcelExporter {
	private XSSFWorkbook workbook;
	private XSSFSheet sheet;
	private List<TutorModel> listModel;

	public TutorExcelExporter(List<TutorModel> listModel) {
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
		sheet = workbook.createSheet("Gia sư");

		Row row = sheet.createRow(0);

		CellStyle style = workbook.createCellStyle();
		XSSFFont font = workbook.createFont();
		font.setBold(true);
		font.setFontHeight(16);
		style.setFont(font);

		createCell(row, 0, "ID", style);
		createCell(row, 1, "Họ và tên", style);
		createCell(row, 2, "Tên tài khoản", style);
		createCell(row, 3, "Email", style);
		createCell(row, 4, "Số điện thoại", style);
		createCell(row, 5, "Trường", style);
		createCell(row, 6, "Chuyên ngành", style);
		createCell(row, 7, "Giới tính", style);
		createCell(row, 8, "Năm tốt nghiệp", style);
		createCell(row, 9, "Nghề nghiệp", style);
		createCell(row, 10, "Mô tả", style);
		createCell(row, 11, "Số buổi", style);
		createCell(row, 12, "Ngày sinh", style);
		createCell(row, 13, "Môn học", style);
		createCell(row, 14, "Lớp học", style);
		createCell(row, 15, "Khu vực dạy", style);
		createCell(row, 16, "Ngày tạo", style);
		createCell(row, 17, "Địa chỉ", style);

	}

	private void writeDataLines() {
		int rowCount = 1;

		CellStyle style = workbook.createCellStyle();
		XSSFFont font = workbook.createFont();
		font.setFontHeight(14);
		style.setFont(font);

		for (TutorModel user : listModel) {
			Row row = sheet.createRow(rowCount++);
			int columnCount = 0;

			createCell(row, columnCount++, String.valueOf(user.getId()), style);
			createCell(row, columnCount++, user.getName(), style);
			createCell(row, columnCount++, String.valueOf(user.getId_account()), style);
			createCell(row, columnCount++, user.getEmail(), style);
			createCell(row, columnCount++, user.getPhone(), style);
			createCell(row, columnCount++, user.getSchool(), style);
			createCell(row, columnCount++, user.getDepartment(), style);
			createCell(row, columnCount++, user.getGender(), style);
			createCell(row, columnCount++, user.getGraduate_year(), style);
			createCell(row, columnCount++, user.getIsnow(), style);
			createCell(row, columnCount++, user.getDescribe(), style);
			createCell(row, columnCount++, user.getSobuoi(), style);
			createCell(row, columnCount++, user.getBirth_year(), style);
			createCell(row, columnCount++, user.getSubjects(), style);
			createCell(row, columnCount++, user.getClasses(), style);
			createCell(row, columnCount++, user.getCategories(), style);
			createCell(row, columnCount++, user.getCreated_at(), style);
			createCell(row, columnCount++, user.getAddress(), style);
		}
	}

	public void export(HttpServletResponse response) throws IOException {
		writeHeaderLine();
		writeDataLines();

		ServletOutputStream outputStream = response.getOutputStream();
		workbook.write(outputStream);
		workbook.close();

		outputStream.flush();
		outputStream.close();

	}
}
