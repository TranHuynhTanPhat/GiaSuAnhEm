var diachi = document.querySelector('#diachi')
var quan = document.querySelector('#quan')
var sobuoi = document.querySelector('#sobuoi')
var thoigian = document.querySelector('#time')
var luong = document.querySelector('#luong')
var yeucaukhac = document.querySelector('#yeucaukhac')
var lienhe = document.querySelector('#lienhe')
var form = document.querySelector('form')

var list_category = document.querySelectorAll('#category')
var table_category = document.querySelector('.tablebox.category')
var list_monhoc = document.querySelectorAll('#monhoc')
var table_monhoc = document.querySelector('.tablebox.monhoc')
var list_lophoc = document.querySelectorAll('#lophoc')
var table_lophoc = document.querySelector('.tablebox.lophoc')

function showError(input, message){
    let parent = input.parentElement;
    let small = parent.querySelector('small')
    parent.classList.add('error')
    small.innerText = message
}

function showSuccess(input){
    let parent = input.parentElement;
    let small = parent.querySelector('small')
    parent.classList.remove('error')
    small.innerText = ''
}
function checkEmptyError(listInput){
    let isEmptyError = false;
    listInput.forEach(input => {
        input.value = input.value.trim();

        if(!input.value){
            isEmptyError = true;
            showError(input, 'Không được để trống')
        }
        else{
            showSuccess(input)
        }
    });

    return isEmptyError
}

function checkCheckBoxError(table_checkbox, listcheckbox, message){
    let isCheckBoxError = true
    for(var checkbox of listcheckbox){
        if(checkbox.checked){
            showError(table_checkbox, message)
            isCheckBoxError = false
            break
        }
    }
    if(!isCheckBoxError)
    {
        showSuccess(table_checkbox)
    }
    else{
        showError(table_checkbox, message)
    }
    return isCheckBoxError
}


form.addEventListener('submit', function(e){

    let isEmptyError = checkEmptyError([diachi, quan, sobuoi, thoigian, luong, lienhe])
    let isCheckBoxCategoryError = checkCheckBoxError(table_category, list_category, 'chưa chọn danh mục')
    let isCheckBoxMonHocError = checkCheckBoxError(table_monhoc, list_monhoc, 'chưa chọn môn học')
    let isCheckBoxLopHocError = checkCheckBoxError(table_lophoc, list_lophoc, 'chưa chọn lớp học')

    if(isEmptyError || isCheckBoxCategoryError || isCheckBoxMonHocError || isCheckBoxLopHocError){
    	e.preventDefault()
    }
})