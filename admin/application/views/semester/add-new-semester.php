<!-- Form Start -->

<script src="<?php echo base_url('assets/js/add_new_semester.js') ?>"></script>
<div class="container-fluid pt-4 px-4">
    <div class="row g-4">
        <div class="col-sm-12 col-xl-6">
            <div class="bg-light rounded h-100 p-4">
                <h6 class="mb-4">Add new semester</h6>
                <form id="addNewSemester" method="post">
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
                        <select class="form-select" id="semester_name" name="semester_name" aria-label="Floating label select example">
                            <option selected value="0">Please select semester</option>
                            <option value="1">1-semester</option>
                            <option value="2">2-semester</option>
                            <option value="3">3-semester</option>
                            <option value="4">4-semester</option>
                            <option value="5">5-semester</option>
                            <option value="6">6-semester</option>
                            <option value="7">7-semester</option>
                            <option value="8">8-semester</option>
                        </select>
                        <label for="floatingSelect">Works with selects</label>
                        <span id="semesterNameMessage" class="text-danger"></span>
                    </div>
                    <button type="submit" class="btn btn-primary">Add</button>
                </form>
            </div>
        </div>
    </div>
</div>


<!-- Form End -->