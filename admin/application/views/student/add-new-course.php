<!-- Form Start -->
        
<script src="<?php echo base_url('assets/js/add_new_course.js') ?>"></script>
<?php 
//print_r($data[0]) ;
$couseDetail = $courseName = $courseId = '';
if(isset($data[0])){
   $couseDetail = $data[0]['course_description'];
   $courseName = $data[0]['course_name'];
   $courseId = $data[0]['id'];
}

?>
                
<div class="container-fluid pt-4 px-4">
    <div class="row g-4">
        <div class="col-sm-12 col-xl-6">
            <div class="bg-light rounded h-100 p-4">
                <h6 class="mb-4">Add new course</h6>
                
                <form id="addNewCourse" method="post" enctype="multipart/form-data">
                    <div class="mb-3">
                        <label for="course_name">Course Name:</label>
                        <input type="text" class="form-control" name="course_name" id="course_name" value="<?php echo $courseName; ?>">
                        <input type="hidden" name="course_id" value="<?php echo $courseId; ?>">
                        <span id="courseNameMessage" class="text-danger"></span>
                    </div>
                    <div class="form-floating mb-3">

                    <!-- <textarea class="form-control" placeholder="Leave a comment here" name="course_description" id="course_description" style="height: 150px;"></textarea> -->
                        
                        <label for="floatingTextarea">Course Description...</label>
                        <textarea class="form-control" name="course_description" id="course_description" style="height: 150px;">
                            <?php echo $couseDetail; ?>
                        </textarea>

                        <span id="courseDescNameMessage" class="text-danger"></span>
                    </div>
                    <div>
                    <!-- <textarea name="editor1" id="editor1"></textarea> -->


                    </div>
                    <div class="mb-3">
                        <label for="formFile" class="form-label">Default file input example</label>
                        <input class="form-control" type="file" name="image" id="image">
                    </div>                  
                    <button type="submit" class="btn btn-primary">Add</button>
                </form>
            </div>
        </div>
    </div>
</div>


<!-- Form End -->
<script>
        setTimeout(() => {
            jQuery('#course_description').froalaEditor({
                // Set the image upload URL.
                inlineStyles: {
                    'Big Red': 'font-size: 20px; color: red;',
                    'Small Blue': 'font-size: 14px; color: blue;',
                    'Italic': 'font-style: italic;',
                    'Normal': 'font-style: normal;'
                },
                theme: 'gray',
                height: 250,
                zIndex: 2001,
                // imageUploadURL: '/api/v1/knowledgeArticleImage',
                // imageUploadParams: {
                //     id: 'my_editor'
                // },
                // fileUploadURL: '/api/v1/knowledgeArticlefile',
                // fileUploadParams: {
                //     id: 'my_editor'
                // }
            }).on('froalaEditor.image.removed', function (e, editor, $img) {
                // $.ajax({
                //     // Request method.
                //     method: "POST",
                //     // Request URL.
                //     url: "/api/v1/knowledgeDeleteArticleImage",
                //     // Request params.
                //     data: {
                //         src: $img.attr('src')
                //     }
                // })
            });
        }, 1000);
    </script>
