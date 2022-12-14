var username = document.querySelector('#username')
var email = document.querySelector('#email')
var password = document.querySelector('#password')
var confirmpassword = document.querySelector('#cfpassword')
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
function checkEmptyError(listInput) {
	let isEmptyError = false;
	listInput.forEach(input => {
		input.value = input.value.trim();

		if (!input.value) {
			isEmptyError = true;
			showError(input, 'không được để trống')
		}
		else {
			showSuccess(input)
		}
	});

	return isEmptyError
}

function checkEmailError(input) {
	const regexEmail = /^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;
	input.value = input.value.trim()

	let isEmailError = !regexEmail.test(input.value)
	if (regexEmail.test(input.value)) {
		showSuccess(input)
	} else {
		showError(input, 'Email sai cú pháp')
	}
	return isEmailError
}

function checkLengthError(input, min) {
	input.value = input.value.trim()

	if (input.value.length < min) {
		showError(input, 'phải có ít nhất ' + min + ' ký tự')
		return true;
	}

	showSuccess(input)
	return false
}

function checkMatchPasswordError(password, confirmpassword) {
	if (password.value !== confirmpassword.value) {
		showError(confirmpassword, 'Mật khẩu không trùng khớp')
		return true
	}
	return false
}

form.addEventListener('submit', function(e) {


	let isEmptyError = checkEmptyError([username, email, password, confirmpassword])
	let isEmailError = checkEmailError(email)
	let isUsernameLengthError = checkLengthError(username, 8)
	let isPasswordLengthError = checkLengthError(password, 8)
	let isMarchError = checkMatchPasswordError(password, confirmpassword)

	if (isEmptyError || isEmailError || isUsernameLengthError || isPasswordLengthError || isMarchError) {
		e.preventDefault()
	}
})