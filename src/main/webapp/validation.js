function loginValidatiion() {
	const email = document.getElementById("email").value;
	const password = document.getElementById("password").value;

	if (email = " " || !email.includes("@")) {
		alert('inavalid email does not found');
	}
	if (password = " ") {
		alert('password does not exists');
	}
}
function registerValidatiion() {
	const email = document.getElementById("email").value;
	const password1 = document.getElementById("password").value;
	const confirmPassword = document.getElementById("confirm-password").value;
	const fullName = document.getElementById("fullname").value;

	if (email = " " || !email.includes("@")) {
		alert('inavalid!  email does not found');
	}
	if (password = " ") {
		alert('password does not exists');

	}
	if (password != confirmPassword) {
		alert('password does not match');
	}
	if (fullName = "  ") {
		alert('name section can not be blank');
	}
}