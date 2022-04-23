<?php
session_start();
include "db_conn.php";
if (isset($_SESSION['username']) && isset($_SESSION['id'])) {   ?>

	<!DOCTYPE html>
	<html>

	<head>
		<title>ISU</title>
		<link rel="stylesheet" href="./css/dropdownmenu.css">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	</head>

	<body>
		<?php if ($_SESSION['role'] == 'admin') { ?>
			<nav class="nav">
				<a class="nav-link active" aria-current="page" href="#"><b>Isabela State University</b></a>
				<div class="dropdown">
					<button class="dropbtn">Section</button>
					<div class="dropdown-content">
						<a href="home.php">BSIT 1A</a>
						<a href="bsit_1c.php">BSIT 1C</a>
						<a href="bsit_1d.php">BSIT 1D</a>
						<a href="bsit_1e.php">BSIT 1E</a>
					</div>
				</div>
				<a class="nav-link" href="logout.php" style="color: tomato;">Log out</a>
			</nav>
			<div class="card">
				<div class="card-body text-center">
					<h2 class="card-title" style="text-align: center;">
						Administrator
						<?= $_SESSION['name'] ?>
					</h2>
				</div>


				<!-- For Admin -->

				<div class="p-3 m-5">
					<?php include 'php/bsit_1b_members.php';
					if (mysqli_num_rows($res) > 0) { ?>

						<h1 class="display-4 fs-1">BSIT - 1B</h1>
						<table class="table table-striped" style="width: 100%;">
							<thead>
								<tr>
									<th scope="col" style="display: none;">#</th>
									<th scope="col">Course no.</th>
									<th scope="col">Desrciption</th>
									<th scope="col">Monday</th>
									<th scope="col">Tuesday</th>
									<th scope="col">Wednesday</th>
									<th scope="col">Thursday</th>
									<th scope="col">Friday</th>
									<th scope="col">Faculty</th>
									<th scope="col">Action</th>
								</tr>
							</thead>
							<tbody>
								<?php
								$i = 1;
								while ($rows = mysqli_fetch_assoc($res)) { ?>
									<tr>
										<th scope="row" style="display: none;"><?= $i ?></th>
										<td><?= $rows['coursenum'] ?></td>
										<td><?= $rows['description'] ?></td>
										<td><?= $rows['monday'] ?><br><i style="color: tomato;"><?= $rows['monday_stat'] ?></i></td>
										<td><?= $rows['tuesday'] ?><br><i style="color: tomato;"><?= $rows['tue_stat'] ?></i></td>
										<td><?= $rows['wednesday'] ?><br><i style="color: tomato;"><?= $rows['wed_stat'] ?></i></td>
										<td><?= $rows['thursday'] ?><br><i style="color: tomato;"><?= $rows['thu_stat'] ?></i></td>
										<td><?= $rows['friday'] ?><br><i style="color: tomato;"><?= $rows['fri_stat'] ?></i></td>
										<td><?= $rows['faculty'] ?></td>
										<td>
											<a href="bsit_1b_update.php?id=<?= $rows['id'] ?>" class="btn btn-success">Update</a>
										</td>
									</tr>
								<?php $i++;
								} ?>
							</tbody>
						</table>
					<?php } ?>
					<table>
						<thead>
							<tr>
								<th>
									<form method="POST" action="emails/send_email.bsit1b.php">
										<button name="send" class="btn btn-primary"><span class="glyphicon glyphicon-envelope"></span>Send notification</button>
									</form>
								</th>
								<th>
									<form action="php/update_clear.php" method="post">

										<input hidden type="monday_stat" class="form-control" name="monday_stat" id="monday_stat" value="">


										<input hidden type="tue_stat" class="form-control" name="tue_stat" id="tue_stat" value="">


										<input hidden type="wed_stat" class="form-control" name="wed_stat" id="wed_stat" value="">


										<input hidden type="thu_stat" class="form-control" name="thu_stat" id="thu_stat" value="">


										<input hidden type="fri_stat" class="form-control" name="fri_stat" id="fri_stat" value="">


										<input type="text" name="id" value="<?= $row['id'] ?>" hidden>
										<button type="submit" name="update" class="btn btn-danger">
											Reset schedule
										</button>

									</form>
								</th>

							</tr>
						</thead>
					</table>
					<?php
					if (isset($_SESSION['status'])) {
						if ($_SESSION['status'] == "ok") {
					?>
							<div class="alert alert-info""><?php echo $_SESSION['result'] ?></div>
												<?php
											} else {
												?>
													<div class=" alert alert-danger"><?php echo $_SESSION['result'] ?></div>
					<?php
											}

											unset($_SESSION['result']);
											unset($_SESSION['status']);
										}
					?><br>
					<hr><br>
					<ul class="list-group">
						<li class="list-group-item">vbatuon18@gmail.com</li>
						<li class="list-group-item">iiisssaromero@gmail.com</li>
					</ul>
				</div>
			<?php } else { ?>
				<!-- FORE USERS -->
				<nav class="nav">
				<a class="nav-link active" aria-current="page" href="#">Home</a>
				<div class="dropdown">
					<button class="dropbtn">Section</button>
					<div class="dropdown-content">
						<a href="home.php">BSIT 1A</a>
						<a href="bsit_1c.php">BSIT 1C</a>
						<a href="bsit_1d.php">BSIT 1D</a>
						<a href="bsit_1e.php">BSIT 1E</a>
					</div>
				</div>
				<a class="nav-link" href="logout.php">Log out</a>
			</nav>
				<div class="card">
					<div class="card-body text-center">
						<h5 class="card-title" style="text-align: center;">
							Student
							<?= $_SESSION['name'] ?>
						</h5>
					</div>
				</div>
				<div class="p-3 m-5">
					<?php include 'php/bsit_1b_members.php';
					if (mysqli_num_rows($res) > 0) { ?>

						<h1 class="display-4 fs-1">BSIT - 1B</h1>
						<table class="table table-striped" style="width: 100%;">
							<thead>
								<tr>
									<th scope="col" style="display: none;">#</th>
									<th scope="col">Course no.</th>
									<th scope="col">Desrciption</th>
									<th scope="col">Monday</th>
									<th scope="col">Tuesday</th>
									<th scope="col">Wednesday</th>
									<th scope="col">Thursday</th>
									<th scope="col">Friday</th>
									<th scope="col">Faculty</th>
								</tr>
							</thead>
							<tbody>
								<?php
								$i = 1;
								while ($rows = mysqli_fetch_assoc($res)) { ?>
									<tr>
										<th scope="row" style="display: none;"><?= $i ?></th>
										<td><?= $rows['coursenum'] ?></td>
										<td><?= $rows['description'] ?></td>
										<td><?= $rows['monday'] ?><br><i style="color: tomato;"><?= $rows['monday_stat'] ?></i></td>
										<td><?= $rows['tuesday'] ?><br><i style="color: tomato;"><?= $rows['tue_stat'] ?></i></td>
										<td><?= $rows['wednesday'] ?><br><i style="color: tomato;"><?= $rows['wed_stat'] ?></i></td>
										<td><?= $rows['thursday'] ?><br><i style="color: tomato;"><?= $rows['thu_stat'] ?></i></td>
										<td><?= $rows['friday'] ?><br><i style="color: tomato;"><?= $rows['fri_stat'] ?></i></td>
										<td><?= $rows['faculty'] ?></td>
									</tr>
								<?php $i++;
								} ?>
							</tbody>
						</table>
					<?php } ?>

				</div>
			<?php } ?>
			</div>
	</body>

	</html>
<?php } else {
	header("Location: index.php");
} ?>