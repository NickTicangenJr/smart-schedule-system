<?php 
   session_start();
   if (!isset($_SESSION['username']) && !isset($_SESSION['id'])) {   ?>
<!DOCTYPE html>
<html>
<head>
	<title>ISU Login Panel</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
</head>
<body>
      <div class="container d-flex justify-content-center align-items-center"
      style="min-height: 100vh">
      	<form class="border shadow p-3 rounded"
      	      action="php/check-login.php" 
      	      method="post" 
      	      style="width: 450px;">
      	      <h1 class="text-center p-3" style="color: #4CAF50;">ISU - Roxas</h1>
      	      <?php if (isset($_GET['error'])) { ?>
      	      <div class="alert alert-danger" role="alert">
				  <?=$_GET['error']?>
			  </div>
			  <?php } ?>
		  <div class="mb-3">
		    <input type="text" 
		           class="form-control" 
		           name="username" 
		           id="username"
				   placeholder="Enter username">
		  </div>
		  <div class="mb-3">
		    <input type="password" 
		           name="password" 
		           class="form-control" 
		           id="password"
				   placeholder="Enter password">
		  </div>
		  <div class="mb-1">
		    <label class="form-label">Position:</label>
		  </div>
		  <select class="form-select mb-3"
		          name="role" 
		          aria-label="Default select example">
			  <option selected value="user">Student</option>
			  <option value="admin">Administrator</option>
		  </select>
		 
		  <button type="submit" class="btn btn-outline-success" style="width: 100%;">LOGIN</button>
		</form>
      </div>
</body>
</html>
<?php }else{
	header("Location: home.php");
} ?>