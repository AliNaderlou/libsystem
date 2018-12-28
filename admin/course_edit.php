<?php
	include 'includes/session.php';

	if(isset($_POST['edit'])){
		$id = $_POST['id'];
		$code = $_POST['code'];
		$title = $_POST['title'];

		$sql = "UPDATE course SET code = '$code', title = '$title' WHERE id = '$id'";
		if($conn->query($sql)){
			$_SESSION['success'] = 'رشته تحصیلی با موفقیت تغیر یافت';
		}
		else{
			$_SESSION['error'] = $conn->error;
		}
	}
	else{
		$_SESSION['error'] = 'فیلد هارا پر کنید';
	}

	header('location:course.php');

?>