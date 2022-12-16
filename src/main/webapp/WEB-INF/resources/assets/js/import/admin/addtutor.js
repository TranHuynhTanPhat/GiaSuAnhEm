var list_category = document.querySelectorAll('#khuvuc')
var lable_category = document.querySelector('.control-label.khuvuc')
var list_monhoc = document.querySelectorAll('#monhoc')
var lable_monhoc = document.querySelector('.control-label.monhoc')
var list_lophoc = document.querySelectorAll('#lophoc')
var lable_lophoc = document.querySelector('.control-label.lophoc')

var form = document.querySelector('form')

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



form.addEventListener('submit', function(e) {


	let isCheckBoxCategoryError = checkCheckBoxError(lable_category, list_category, 'chưa chọn khu vực dạy')
	let isCheckBoxMonHocError = checkCheckBoxError(lable_monhoc, list_monhoc, 'chưa chọn môn học')
	let isCheckBoxLopHocError = checkCheckBoxError(lable_lophoc, list_lophoc, 'chưa chọn lớp học')
	
	if(isCheckBoxCategoryError || isCheckBoxMonHocError || isCheckBoxLopHocError){
		e.preventDefault()
	}
})