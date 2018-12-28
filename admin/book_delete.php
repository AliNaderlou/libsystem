<?php
	include 'includes/session.php';

	if(isset($_POST['delete'])){
		$id = $_POST['id'];
		$sql = "DELETE FROM books WHERE id = '$id'";
		if($conn->query($sql)){
			$_SESSION['success'] = 'کتاب با موفقیت حذف شد';
		}
		else{
			$_SESSION['error'] = $conn->error;
		}
	}
	else{
		$_SESSION['error'] = 'ابتدا کتابی که میخواهید حذف کنید را مشخص کنید';
	}

	header('location: book.php');
	
?>