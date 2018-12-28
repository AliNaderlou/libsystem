<?php
	include 'includes/session.php';

	if(isset($_POST['edit'])){
		$id = $_POST['id'];
		$name = $_POST['name'];

		$sql = "UPDATE category SET name = '$name' WHERE id = '$id'";
		if($conn->query($sql)){
			$_SESSION['success'] = 'دسته با موفقیت تغیر یافت';
		}
		else{
			$_SESSION['error'] = $conn->error;
		}
	}
	else{
		$_SESSION['error'] = 'تمامی فیلد هارا پر کنید';
	}

	header('location:category.php');

?>