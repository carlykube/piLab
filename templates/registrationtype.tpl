{include file="header.tpl" title=Register}
	
	<!-- Add who are you here -->
	<h2>{$whoareyou}</h2>

	<div id="registrationtypes">
		<div id="teacherDiv" class="roundedBackgroundBox">
			<a href="?registrationtype=teacher"><img src="img/teacher_icon.png" alt="Teacher"><br> 
			{$teacher} </a>
		</div>
		<div id="mentorDiv" class="roundedBackgroundBox">
			<a href="?registrationtype=mentor"><img src="img/mentor_icon.png" alt="Mentor"><br>
			{$mentor}</a>
		</div>
		<div id="studentDiv" class="roundedBackgroundBox">
			<a href="?registrationtype=mentee"><img src="img/student_icon.png" alt="Student"><br>
			{$student}</a>
		</div>
	</div>
	
{include file="footer.tpl"}
