<?php
	include 'includes/session.php';

	if(isset($_POST['edit'])){
		$id = $_POST['id'];
		$firstname = $_POST['firstname'];
		$lastname = $_POST['lastname'];
		$course = $_POST['course'];

		$sql = "UPDATE students SET firstname = '$firstname', lastname = '$lastname', course_id = '$course' WHERE id = '$id'";
		if($conn->query($sql)){
			$_SESSION['success'] = 'اطلاعات دانشجو با موفقیت اپدیت شد';
		}
		else{
			$_SESSION['error'] = $conn->error;
		}
	}
	else{
		$_SESSION['error'] = 'تمام فیلد هارا پر کنید';
	}

	header('location:student.php');

?>