<?php
	include 'includes/session.php';

	if(isset($_POST['add'])){
		$code = $_POST['code'];
		$title = $_POST['title'];
		
		$sql = "INSERT INTO course (code, title) VALUES ('$code', '$title')";
		if($conn->query($sql)){
			$_SESSION['success'] = 'دسته با موفقیت اضافه شد';
		}
		else{
			$_SESSION['error'] = $conn->error;
		}
	}	
	else{
		$_SESSION['error'] = 'تمامی فیلد هارا پر کنید';
	}

	header('location: course.php');

?>