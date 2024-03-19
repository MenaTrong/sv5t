

function toggleDropdown() {
	var dropdown = document.getElementById("dropdown");
	dropdown.classList.toggle("show");
}

function toggleDropdown1() {
	var dropdown = document.getElementById("dropdown1");
	dropdown.classList.toggle("show");
}

function toggleDropdown2() {
	var dropdown = document.getElementById("dropdown2");
	dropdown.classList.toggle("show");
}

function toggleDropdown3() {
	var dropdown = document.getElementById("dropdown3");
	dropdown.classList.toggle("show");
}

function toggleDropdown4() {
	var dropdown = document.getElementById("dropdown4");
	dropdown.classList.toggle("show");
}

function toggleDropdown5() {
	var dropdown = document.getElementById("dropdown5");
	dropdown.classList.toggle("show");
}

function toggleDropdown6() {
	var dropdown = document.getElementById("dropdown6");
	dropdown.classList.toggle("show");
}

function toggleDropdown7() {
	var dropdown = document.getElementById("dropdown7");
	dropdown.classList.toggle("show");
}



function handleCheckboxClick(clickedCheckbox) {
	if (clickedCheckbox.id === "myCheckbox-2" && clickedCheckbox.checked) {
		document.getElementById("myCheckbox-1").checked = false;
	}
	if (clickedCheckbox.id === "myCheckbox-1" && clickedCheckbox.checked) {
		document.getElementById("myCheckbox-2").checked = false;
	}
}

function check() {
	var registerButton = document.querySelector(".login100-form-btn");
	registerButton.addEventListener("click", function(event) {
		if (passwordMatchError.style.display === "block" || emailMatchError.style.display === "block") {
			event.preventDefault(); // Ngăn chặn hành động mặc định của nút đăng ký
		}
	});
}

function savePreviousUrl() {
	sessionStorage.setItem("previousUrl", document.referrer);
}


function handleChange1() {
	const selectElement1 = document.getElementById("select1");
	const selectElement2 = document.getElementById("select2");
	const selectElement3 = document.getElementById("select3");
	const selectElement4 = document.getElementById("select4");
	const selectElement5 = document.getElementById("select5");
	const selectedValue1 = selectElement1.value;
	const selectedValue2 = selectElement2.value;
	const selectedValue3 = selectElement3.value;
	const selectedValue4 = selectElement4.value;
	const selectedValue5 = selectElement5.value;

	if (selectedValue1 === "option1" && selectedValue2 === "option1" && selectedValue3 === "option1" && selectedValue4 === "option1" && selectedValue5 === "option1") {
		sendDataToServlet("Đạt");
		createH1Element();
	} else {
		sendDataToServlet("Chưa đạt");
		const h1Container = document.getElementById("h1Container");
		h1Container.innerHTML = ""; // Clear the container if "Chưa đạt" is selected
	}
}

function createH1Element() {
	const h1Container = document.getElementById("h1Container");
	h1Container.innerHTML = ""; // Clear previous content

	const h1Element = document.createElement("span");
	h1Element.textContent = "Đạt";
	h1Container.appendChild(h1Element);

}

document.addEventListener('DOMContentLoaded', function() {
    const studentIdInput = document.getElementById('studentid');
    const studentIdError = document.getElementById('studentIdError');

    studentIdInput.addEventListener('input', function() {
        const studentIdValue = studentIdInput.value;

        if (studentIdValue.length !== 10 || !/^\d+$/.test(studentIdValue)) {
            studentIdError.style.display = 'block';
        } else {
            studentIdError.style.display = 'none';
        }
    });
});

function sendDataToServlet(data) {
	var xhr = new XMLHttpRequest();
	xhr.open("POST", "UpdateAssessController", true);
	xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

	xhr.onreadystatechange = function() {
		if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
			console.log("Yêu cầu đã được gửi thành công!");
			// Xử lý phản hồi từ server nếu có
		} else {
			console.error("Lỗi khi gửi yêu cầu!");
		}
	};

	var formData = "studentID=" + encodeURIComponent(studentID) + "&data=" + encodeURIComponent(data);
	xhr.send(formData);
}

document.addEventListener("DOMContentLoaded", function() {
	handleChange1();
});