var edit = document.querySelector('.edit');
var opencfPassword = document.querySelector('.open-cfpassword')
var password = document.querySelector('.input-password')
var cfpassword = document.querySelector('.input-cfpassword')
var form = document.querySelector('form')

edit.addEventListener("click", function() {
	opencfPassword.classList.remove('hidden');
	password.parentElement.classList.remove('disable');
});

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


	let isPasswordLengthError = checkLengthError(password, 8)
	let isMarchError = checkMatchPasswordError(password, cfpassword)
	if (isPasswordLengthError || isMarchError) {
		e.preventDefault()
	}
})