<?php
if(isset($_FILES['files'])){
    echo json_encode($_FILES['files']);
    foreach($_FILES['files']['tmp_name'] as $index => $file){
        $targetPath = '../api/v1/files/'.basename($_FILES['files']['name'][$index]);
        if(move_uploaded_file($file, $targetPath)){
            echo 'success';

            try{
                require_once('connect.php');
                $newFile = $pdo -> prepare("INSERT INTO curl_storage.files (`ID`, `name`, `path`, `size`, `time`) VALUES (:id, :name, :path, :size, :time)");
                $newFile->bindValue(':id', uniqid());
                $newFile->bindValue(':name', $_FILES['files']['name'][$index]);
                $newFile->bindValue(':path', $targetPath);
                $newFile->bindValue(':size', $_FILES['files']['size'][$index]);
                $newFile->bindValue(':time', date("Y-m-d H:i:s"));

                if($newFile -> execute()){
                    echo '成功送出';
                }else{
                    echo '送出失敗';
                }
            }catch(PDOException $e){
                $err_msg .= "something went wrong" . $e->getMessage() . "<br>";
                $err_msg .= "on line" . $e->getMessage();
                echo $err_msg;
            }
        }else{
            echo 'faile';
        }        
    }

        
}
?>