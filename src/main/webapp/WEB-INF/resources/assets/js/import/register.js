const input = document.querySelector(".input");
const eyeOpen = document.querySelector(".eye-open");
const eyeClose = document.querySelector(".eye-close");
eyeOpen.addEventListener("click", function () {
	eyeOpen.classList.add("hidden");
	eyeClose.classList.remove("hidden");
	input.setAttribute("type","password");
});

eyeClose.addEventListener("click", function () {
	eyeOpen.classList.remove("hidden");
	eyeClose.classList.add("hidden");
	input.setAttribute("type","text");
});

const input_Cf = document.querySelector(".input-cf");
const eyeOpen_Cf = document.querySelector(".eye-open-cf");
const eyeClose_Cf = document.querySelector(".eye-close-cf");
eyeOpen_Cf.addEventListener("click", function () {
	eyeOpen_Cf.classList.add("hidden");
	eyeClose_Cf.classList.remove("hidden");
	input_Cf.setAttribute("type","password");
});

eyeClose_Cf.addEventListener("click", function () {
	eyeOpen_Cf.classList.remove("hidden");
	eyeClose_Cf.classList.add("hidden");
	input_Cf.setAttribute("type","text");
});