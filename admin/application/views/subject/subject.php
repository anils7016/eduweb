<!-- Main content goes here -->
<script>
    var baseUrl = "<?php echo base_url(); ?>";
</script>
<script src="<?php echo base_url('assets/js/add_new_subject.js') ?>"></script>
<div class="container-fluid pt-4 px-4">
    <a href="<?php echo base_url('add-new-subject') ?>"><button type="button" class="btn btn-primary m-2">Add Subject + </button></a>
    <div class="row g-4">
        <div class="col-sm-12 col-xl-6">
            <div class="bg-light rounded h-100 p-4">
                <!-- <form id="addNewSemester" method="post"> -->
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
                    <label for="floatingSelect">Works with selects</label>
                </div>
                <button id="fetch_subjects" class="btn btn-success">Fetch Subject</button>
                <!-- </form> -->
            </div>
        </div>
    </div>
    <br>
    <div class="row g-4">
        <div class="col-12">
            <div class="bg-light rounded h-100 p-4">
                <h6 class="mb-4">Subject list</h6>
                <div class="table-responsive">
                    <table class="table" id="subjects_table">
                        <thead>
                            <tr>
                                <th>Subject Code</th>
                                <th>Subject Name</th>
                                <th>Subject Description</th>
                                <th>Subject Image</th>
                            </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- </div> -->
<!-- Content End -->