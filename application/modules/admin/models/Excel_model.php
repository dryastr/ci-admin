<html>
<head>
 <title>CSV Upload in CodeIgniter</title>
</head>
<body>
 <h1>CSV Upload in CodeIgniter</h1>
 <?php if ($this->session->flashdata('upload_message')){
    echo $this->session->flashdata('upload_message');
}
?>
 <form action="<?php echo site_url('admin/excel/uploader')?>"
    enctype="multipart/form-data" method="POST">
<input type="file" name="file_name" />
    <button type="submit" name="upload_button">Upload</button>
 </form>
</body>
</html>