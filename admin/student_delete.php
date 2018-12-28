<?php
	include 'includes/session.php';

	if(isset($_POST['delete'])){
		$id = $_POST['id'];
		$sql = "DELETE FROM students WHERE id = '$id'";
		if($conn->query($sql)){
			$_SESSION['success'] = 'دانشجو با موفقیت حذف شد';
		}
		else{
			$_SESSION['error'] = $conn->error;
		}
	}
	else{
		$_SESSION['error'] = 'دانشجویی که مایل به حذف ان هستید را انتخاب کنید';
	}

	header('location: student.php');
	
?>