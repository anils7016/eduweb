<!-- Form Start -->
<script src="<?php echo base_url('assets/js/add_new_course.js') ?>"></script>
<div class="container-fluid pt-4 px-4">
    <div class="row g-4">
        <div class="col-sm-12 col-xl-6">
            <div class="bg-light rounded h-100 p-4">
                <h6 class="mb-4">Add new course</h6>
                <form id="addNewCourse" method="post" enctype="multipart/form-data">
                    <div class="mb-3">
                        <label for="course_name">Course Name:</label>
                        <input type="text" class="form-control" name="course_name" id="course_name">
                        <span id="courseNameMessage" class="text-danger"></span>
                    </div>
                    <div class="form-floating mb-3">
                        <textarea class="form-control" placeholder="Leave a comment here" name="course_description" id="course_description" style="height: 150px;"></textarea>
                        <label for="floatingTextarea">Course Description...</label>
                        <span id="courseDescNameMessage" class="text-danger"></span>
                    </div>
                    <div>
                    <textarea name="editor1" id="editor1"></textarea>
<script>
    tinymce.init({
        selector: '#editor1',
        plugins: 'advlist autolink lists link image charmap print preview anchor',
        toolbar: 'undo redo | formatselect | bold italic backcolor | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | removeformat | help'
    });
</script>

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