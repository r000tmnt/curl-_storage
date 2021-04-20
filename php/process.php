<?php
if(isset($_FILES['files']['tmp_name'])){
    $cfiles = array();
    // $data;
    $ch = curl_init();
    foreach($_FILES['files']['tmp_name'] as $index => $file){
        $file = $_FILES['files']['name'][$index];
        $type = $_FILES['files']['type'][$index];
        $tmpName = $_FILES['files']['tmp_name'][$index];
        $cfile = new CURLFile($tmpName, $type, $file); 
        $cfiles = array('myupload' => $cfile);
        curl_setopt($ch, CURLOPT_URL, 'http://localhost/curl_storage/php/upload.php');
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $cfiles);

        $response = curl_exec($ch);   
    }
    curl_close($ch);
}
?>  