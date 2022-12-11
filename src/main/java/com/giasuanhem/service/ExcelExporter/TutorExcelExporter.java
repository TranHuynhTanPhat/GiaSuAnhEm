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
	private List<TutorModel> listTutor;

	public TutorExcelExporter(List<TutorModel> listTutor) {
		this.listTutor = listTutor;
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
		sheet = workbook.createSheet("Users");

		Row row = sheet.createRow(0);

		CellStyle style = workbook.createCellStyle();
		XSSFFont font = workbook.createFont();
		font.setBold(true);
		font.setFontHeight(16);
		style.setFont(font);

		createCell(row, 0, "User ID", style);
		createCell(row, 1, "Họ và tên", style);
		createCell(row, 2, "Địa chỉ", style);
		createCell(row, 3, "Email", style);
		createCell(row, 4, "Số điện thoại", style);
		createCell(row, 5, "Trường", style);
		createCell(row, 6, "Chuyên ngành", style);
		createCell(row, 7, "Môn dạy", style);
		createCell(row, 8, "Lớp dạy", style);
		createCell(row, 9, "Khu vực dạy", style);
		createCell(row, 10, "Phương tiện", style);
		createCell(row, 11, "Số buổi", style);
		createCell(row, 12, "Giới tính", style);
		createCell(row, 13, "Ngày sinh", style);
		createCell(row, 14, "Năm tốt nghiệp", style);
		createCell(row, 15, "Ngày tạo", style);
		createCell(row, 16, "Ngày cập nhật", style);
		createCell(row, 17, "Nghề nghiệp hiện tại", style);
		createCell(row, 18, "Mô tả", style);

	}

	private void writeDataLines() {
		int rowCount = 1;

		CellStyle style = workbook.createCellStyle();
		XSSFFont font = workbook.createFont();
		font.setFontHeight(14);
		style.setFont(font);

		for (TutorModel user : listTutor) {
			Row row = sheet.createRow(rowCount++);
			int columnCount = 0;

			createCell(row, columnCount++, user.get_id(), style);
			createCell(row, columnCount++, user.getName(), style);
			createCell(row, columnCount++, user.getAddress(), style);
			createCell(row, columnCount++, user.getEmail(), style);
			createCell(row, columnCount++, user.getPhone(), style);
			createCell(row, columnCount++, user.getSchool(), style);
			createCell(row, columnCount++, user.getDepartment(), style);
			createCell(row, columnCount++, String.valueOf(user.getSubjectString()), style);
			createCell(row, columnCount++, String.valueOf(user.getClassesString()), style);
			createCell(row, columnCount++, String.valueOf(user.getTeachAreasString()), style);
			createCell(row, columnCount++, user.getVehicle(), style);
			createCell(row, columnCount++, String.valueOf(user.getSobuoi()), style);
			createCell(row, columnCount++, user.getGender(), style);
			createCell(row, columnCount++, user.getBirthYear(), style);
			createCell(row, columnCount++, user.getGraduateYear(), style);
			createCell(row, columnCount++, user.getCreatedAt(), style);
			createCell(row, columnCount++, user.getUpdatedAt(), style);
			createCell(row, columnCount++, user.getIsNow(), style);
			createCell(row, columnCount++, user.getDescribe(), style);
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
