<!-- application/views/templates/header.php -->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>DASHMIN - Bootstrap Admin Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <!-- Favicon -->
    
    <link href="<?php echo base_url('assets/img/favicon.ico'); ?>" rel="icon">


    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="<?php echo base_url('assets/lib/owlcarousel/assets/owl.carousel.min.css'); ?>" rel="stylesheet">
    <link href="<?php echo base_url('assets/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css'); ?>" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="<?php echo base_url('assets/css/bootstrap.min.css'); ?>" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="<?php echo base_url('assets/css/style.css'); ?>" rel="stylesheet">

    <!-- <script src="https://cdn.tiny.cloud/1/no-api-key/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script> -->

    <!-- ckeditor reachtext editor -->
    <link rel="stylesheet" href="<?php echo base_url('assets/vendor/reach-texteditor/css/froala_editor.css')?>" >
    <link rel="stylesheet" href="<?php echo base_url('assets/vendor/reach-texteditor/css/froala_style.css')?>" >
    <link rel="stylesheet" href="<?php echo base_url('assets/vendor/reach-texteditor/css/plugins/code_view.css')?>" >
    <link rel="stylesheet" href="<?php echo base_url('assets/vendor/reach-texteditor/css/plugins/colors.css')?>" >
    <link rel="stylesheet" href="<?php echo base_url('assets/vendor/reach-texteditor/css/plugins/emoticons.css')?>" >
    <link rel="stylesheet" href="<?php echo base_url('assets/vendor/reach-texteditor/css/plugins/image_manager.css')?>" >
    <link rel="stylesheet" href="<?php echo base_url('assets/vendor/reach-texteditor/css/plugins/image.css')?>" >
    <link rel="stylesheet" href="<?php echo base_url('assets/vendor/reach-texteditor/css/plugins/line_breaker.css')?>" >
    <link rel="stylesheet" href="<?php echo base_url('assets/vendor/reach-texteditor/css/plugins/table.css')?>" >
    <link rel="stylesheet" href="<?php echo base_url('assets/vendor/reach-texteditor/css/plugins/char_counter.css')?>" >
    <link rel="stylesheet" href="<?php echo base_url('assets/vendor/reach-texteditor/css/plugins/video.css')?>" >
    <link rel="stylesheet" href="<?php echo base_url('assets/vendor/reach-texteditor/css/plugins/fullscreen.css')?>" >
    <link rel="stylesheet" href="<?php echo base_url('assets/vendor/reach-texteditor/css/plugins/file.css')?>" >
    <link rel="stylesheet" href="<?php echo base_url('assets/vendor/reach-texteditor/css/plugins/quick_insert.css')?>" >
  

</head>

<body>
    <div class="container-xxl position-relative bg-white d-flex p-0">
        <!-- Spinner Start -->
        <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->

        <!-- Sidebar Start -->