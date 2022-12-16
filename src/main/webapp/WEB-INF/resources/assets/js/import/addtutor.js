var hoten = document.querySelector('#hoten')
var diachi = document.querySelector('#diachi')
var ngaysinh = document.querySelector('#ngaysinh')
var email = document.querySelector('#email')
var dienthoai = document.querySelector('#dienthoai')
var truong = document.querySelector('#truong')
var nganhhoc = document.querySelector('#nganhhoc')

var form = document.querySelector('form')

var gioitinh = document.querySelector('#gioitinh')
var hienla = document.querySelector('#hienla')
var trinhdo = document.querySelector('#trinhdo')
var sobuoiday = document.querySelector('#sobuoiday')


var list_category = document.querySelectorAll('#khuvuc')
var table_category = document.querySelector('.tablebox.category')
var list_monhoc = document.querySelectorAll('#monhoc')
var table_monhoc = document.querySelector('.tablebox.monhoc')
var list_lophoc = document.querySelectorAll('#lophoc')
var table_lophoc = document.querySelector('.tablebox.lophoc')


function showError(input, message) {
	let parent = input.parentElement;
	let small = parent.querySelector('small')
	parent.classList.add('error')
	small.innerText = message
}

function showSuccess(input) {
	let parent = input.parentElement;
	let small = parent.querySelector('small')
	parent.classList.remove('error')
	small.innerText = ''
}
function checkEmptyError(listInput) {
	let isEmptyError = false;
	listInput.forEach(input => {
		input.value = input.value.trim();

		if (!input.value) {
			isEmptyError = true;
			showError(input, 'Không được để trống')
		}
		else {
			showSuccess(input)
		}
	});

	return isEmptyError
}

function checkCheckBoxError(table_checkbox, listcheckbox, message) {
	let isCheckBoxError = true
	for (var checkbox of listcheckbox) {
		if (checkbox.checked) { 
			showError(table_checkbox, message)
			isCheckBoxError = false
			break
		}
	}
	if (!isCheckBoxError) {
		showSuccess(table_checkbox)
	}
	else {
		showError(table_checkbox, message)
	}
	return isCheckBoxError
}

function checkOptionError(option, message){
	console.log(option)
    let isTrangThaiError = false;
    if(option.value == 0){
        showError(option, message)
        isTrangThaiError = true
    }
    else{
        showSuccess(option)
    }
}

form.addEventListener('submit', function(e) {

	let isEmptyError = checkEmptyError([hoten, diachi, ngaysinh, email, dienthoai, truong, nganhhoc])
	let isCheckBoxCategoryError = checkCheckBoxError(table_category, list_category, 'chưa chọn khu vực dạy')
	let isCheckBoxMonHocError = checkCheckBoxError(table_monhoc, list_monhoc, 'chưa chọn môn học')
	let isCheckBoxLopHocError = checkCheckBoxError(table_lophoc, list_lophoc, 'chưa chọn lớp học')
	let isSoBuoiDayError = checkOptionError(sobuoiday,'Vui lòng chọn số buổi dạy')
	let isTrinhDoError = checkOptionError(trinhdo,'Vui lòng chọn trình độ hiện tại')
		
	if(isEmptyError || isCheckBoxCategoryError || isCheckBoxMonHocError || isCheckBoxLopHocError){
		e.preventDefault()
	}
})