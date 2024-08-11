<!-- Form Start -->
        
<script src="<?php echo base_url('assets/js/add_new_course.js') ?>"></script>
<?php 
//print_r($data[0]) ;
$couseDetail = $courseName = $courseId = $short_desc = $category ='';
if(isset($data[0])){
   $couseDetail = $data[0]['course_description'];
   $courseName = $data[0]['course_name'];
   $short_desc = $data[0]['short_desc'];
   $courseId = $data[0]['id'];
   $category = $data[0]['category_id'];
}

?>
                
<div class="container-fluid pt-4 px-4">
    <div class="row g-4">
        <div class="col-sm-12 col-xl-11">
            <div class="bg-light rounded h-100 p-4">
                <h6 class="mb-4">Add new course</h6>
                
                <form id="addNewCourse" method="post" enctype="multipart/form-data">
                    <div class="mb-3">
                        <label for="course_name">Course Name:</label>
                        <input type="text" class="form-control" name="course_name" id="course_name" value="<?php echo $courseName; ?>">
                        <input type="hidden" name="course_id" value="<?php echo $courseId; ?>">
                        <span id="courseNameMessage" class="text-danger"></span>
                    </div>
                    <div class="mb-3">
                        <label for="category_id">Select Category:</label>
                        <select name="category_id" id="category_id" class="form-control" style='width:250px'>
                            <option >Please select</option>
                            <option value="1" <?php echo (isset($category) && $category == 1) ? 'selected' : ''; ?>>Associate</option>
                            <option value="2" <?php echo (isset($category) && $category == 2) ? 'selected' : ''; ?>>Bachelor</option>
                            <option value="3" <?php echo (isset($category) && $category == 3) ? 'selected' : ''; ?>>Master</option>
                        </select>
                    </div>

                    <div class="mb-3">
                        <label for="short_desc">Short detail:</label>

                        <textarea class="form-control" placeholder="Short description" name="short_desc" id="short_desc">
                        <?php echo $short_desc; ?>
                        </textarea>
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
