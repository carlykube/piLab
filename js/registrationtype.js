alert("in");
var teacher = document.getElementById("teacherDiv");
var mentor = document.getElementById("mentorDiv");
var student = document.getElementById("studentDiv");

function clickTeacher()
{
	alert("Click");
	document.location.href = '?registrationtype=teacher';
}

function clickMentor()
{
	alert("Click");
}

function clickStudent()
{
	alert("Click");
}

teacher.addEventListener('click',clickTeacher,false);
mentor.addEventListener('click',clickMentor,false);
student.addEventListener('click',clickStudent,false);