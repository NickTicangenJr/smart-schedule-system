<?php include './php/bsit_1d_update.php'; ?>

<!DOCTYPE html>
<html>

<head>
    <title>Update Schedule</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
</head>

<body>
    <div class="container d-flex justify-content-center align-items-center" style="min-height: 100vh">
        <form class="border shadow p-3 m-2 rounded" action="php/bsit_1d_update.php" method="post" style="width: 450px;">
        <button type="button" class="btn-close" aria-label="Close" onclick="history.back()"></button>
            <h4 class="text-center p-3" style="color: #4CAF50;">BSIT-1D Update Schedule</h4>
            <?php if (isset($_GET['error'])) { ?>
                <div class="alert alert-danger" role="alert">
                    <?= $_GET['error'] ?>
                </div>
            <?php } ?>
            <div class="mb-3">
                <label for="monday">Monday</label>
                <input type="monday_stat" class="form-control" name="monday_stat" id="monday_stat" value="<?=$row['monday_stat']; ?>">
            </div>
            <div class="mb-3">
                <label for="tuesday">Tuesday</label>
                <input type="tue_stat" class="form-control" name="tue_stat" id="tue_stat" value="<?=$row['tue_stat']; ?>">
            </div>
            <div class="mb-3">
                <label for="wednesday">Wednesday</label>
                <input type="wed_stat" class="form-control" name="wed_stat" id="wed_stat" value="<?=$row['wed_stat']; ?>">
            </div>
            <div class="mb-3">
                <label for="thursday">Thursday</label>
                <input type="thu_stat" class="form-control" name="thu_stat" id="thu_stat" value="<?=$row['thu_stat']; ?>">
            </div>
            <div class="mb-3">
                <label for="friday">Friday</label>
                <input type="fri_stat" class="form-control" name="fri_stat" id="fri_stat" value="<?=$row['fri_stat']; ?>">
            </div>
            <div class="mb-3">
                <input type="text" name="id" value="<?=$row['id']?>" hidden >
                <button type="submit" name="update" class="btn btn-outline-success" style="width: 100%;">
                    <h4>SAVE</h4>
                </button>
            </div>
        </form>
    </div>
</body>

</html>