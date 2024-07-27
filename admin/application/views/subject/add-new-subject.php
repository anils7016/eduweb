<!-- Form Start -->

<script src="<?php echo base_url('assets/js/add_new_subject.js') ?>"></script>
<div class="container-fluid pt-4 px-4">
    <div class="row g-4">
        <div class="col-sm-12 col-xl-6">
            <div class="bg-light rounded h-100 p-4">
                <h6 class="mb-4">Add new subject</h6>
                <form id="addNewSubject" method="post" enctype="multipart/form-data">
                    <div class="form-floating mb-3">
                        <select class="form-select" id="course_id" name="course_id" aria-label="Floating label select example">
                            <option selected value="0">Open select course</option>
                            <?php
                            foreach ($courseList['data'] as $key => $value) {
                            ?>
                                <option value="<?php echo $value['id']; ?>"><?php echo $value['course_name']; ?></option>
                            <?php
                            }
                            ?>
                        </select>
                        <label for="floatingSelect">Works with selects</label>
                        <span id="courseSemesterMessage" class="text-danger"></span>
                    </div>
                    <div class="form-floating mb-3">
                        <select class="form-select" id="semester_id" name="semester_id" aria-label="Floating label select example">
                            <option value="">Select Semester</option>
                        </select>
                        <label for="semester_id">Works with selects</label>
                        <span id="semesterNameMessage" class="text-danger"></span>
                    </div>
                    <div class="mb-3">
                        <label for="subject_code">Subject Code:</label>
                        <input type="text" class="form-control" name="subject_code" id="subject_code">
                        <span id="courseNameMessage" class="text-danger"></span>
                        <span id="subjectCodeNameMessage" class="text-danger"></span>
                    </div>
                    <div class="mb-3">
                        <label for="subject_name">Subject Name:</label>
                        <input type="text" class="form-control" name="subject_name" id="subject_name">
                        <span id="subjectNameMessage" class="text-danger"></span>
                    </div>
                    <div class="form-floating mb-3">
                        <textarea class="form-control" placeholder="Leave a comment here" name="subject_description" id="subject_description" style="height: 150px;"></textarea>
                        <label for="floatingTextarea">Subject Description...</label>
                        <span id="subjectDescNameMessage" class="text-danger"></span>
                    </div>
                    <div class="mb-3">
                        <label for="formFile" class="form-label">Subject Image</label>
                        <input class="form-control" type="file" name="image" id="image">
                    </div>
                    <br>
                    <button type="submit" class="btn btn-primary">Add</button>
                </form>
            </div>
        </div>
    </div>
</div>


<!-- Form End -->