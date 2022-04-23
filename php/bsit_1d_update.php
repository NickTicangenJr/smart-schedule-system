<?php

if(isset($_GET['id'])) {
    include './db_conn.php';


    function validate($data){
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
	}
    $id = validate($_GET['id']);

    $sql = "SELECT * FROM bsit_1d WHERE id=$id";
    $result = mysqli_query($conn, $sql);

    if (mysqli_num_rows($result) > 0) {
        $row = mysqli_fetch_assoc($result);
    }else{
        header("Location: bsit_1d.php");
    }

}elseif(isset($_POST['update'])){
    include '../db_conn.php';

        function validate($data){
            $data = trim($data);
            $data = stripslashes($data);
            $data = htmlspecialchars($data);
            return $data;
        }
    
        $monday_stat = validate($_POST['monday_stat']);
        $tue_stat = validate($_POST['tue_stat']);
        $wed_stat = validate($_POST['wed_stat']);
        $thu_stat = validate($_POST['thu_stat']);
        $fri_stat = validate($_POST['fri_stat']);
        $id = validate($_POST['id']);
    
        $user_data = 'monday_stat='.$monday_stat. '&tue_stat='.$tue_stat. '&wed_stat='.$wed_stat. '&thu_stat='.$thu_stat. '$fri_stat='.$fri_stat;
    
           $sql = "UPDATE bsit_1d 
                    SET monday_stat='$monday_stat', tue_stat='$tue_stat', wed_stat='$wed_stat', thu_stat='$thu_stat', fri_stat='$fri_stat' 
                    WHERE id=$id ";
        // --    (monday_stat, tue_stat, wed_stat, thu_stat, fri_stat) 
                // --    VALUES('$mon_stat', '$tue_stat', '$wed_stat', '$thu_stat', '$fri_stat')";
           $result = mysqli_query($conn, $sql);
           if ($result) {
                 header("Location: ../bsit_1d.php?success=successfully updated");
           }else {
              header("Location: ../bsit_1d_update.php?error=unknown error occurred&$user_data");
           }
}

else{
    header("Location: bsit_1d.php");
}





?>