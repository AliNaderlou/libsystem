<?php
	include 'includes/session.php';

	if(isset($_POST['add'])){
		$name = $_POST['name'];
		
		$sql = "INSERT INTO category (name) VALUES ('$name')";
		if($conn->query($sql)){
			$_SESSION['success'] = 'دسته جدید با موفقیت اضافه شد';
		}
		else{
			$_SESSION['error'] = $conn->error;
		}
	}	
	else{
		$_SESSION['error'] = 'تمام فیلد ها را پر کنید';
	}

	header('location: category.php');

?>