{include file="header.tpl" title=Register}
	
	<!-- Add who are you here -->
	<h3>{$whoareyou}</h3>

	<div id="registrationtypes">
		<div id="teacherDiv" class="roundedBackgroundBox spaceRight">
			<img src="img/teacher_icon.png" alt="Teacher"><br>
			<a href="?registrationtype=teacher">{$teacher}</a>
		</div>
		<div id="mentorDiv" class="roundedBackgroundBox spaceRight">
			<img src="img/mentor_icon.png" alt="Mentor"><br>
			<a href="?registrationtype=mentor">{$mentor}</a>
		</div>
		<div id="studentDiv" class="roundedBackgroundBox">
			<img src="img/student_icon.png" alt="Student"><br>
			<a href="?registrationtype=student">{$student}</a>
		</div>
	</div>
	
{include file="footer.tpl"}
