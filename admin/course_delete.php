<?php
	include 'includes/session.php';

	if(isset($_POST['delete'])){
		$id = $_POST['id'];
		$sql = "DELETE FROM course WHERE id = '$id'";
		if($conn->query($sql)){
			$_SESSION['success'] = 'رشته تحصیلی با موفقیت حذف شد';
		}
		else{
			$_SESSION['error'] = $conn->error;
		}
	}
	else{
		$_SESSION['error'] = 'رشته تحصیلی را انتخاب کنید';
	}

	header('location: course.php');
	
?>