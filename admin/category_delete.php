<?php
	include 'includes/session.php';

	if(isset($_POST['delete'])){
		$id = $_POST['id'];
		$sql = "DELETE FROM category WHERE id = '$id'";
		if($conn->query($sql)){
			$_SESSION['success'] = 'دسته حذف شد';
		}
		else{
			$_SESSION['error'] = $conn->error;
		}
	}
	else{
		$_SESSION['error'] = 'دسته ای که میخواید حذف کنید را انتخاب کنید';
	}

	header('location: category.php');
	
?>