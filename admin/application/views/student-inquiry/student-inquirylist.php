<!-- Main content goes here -->
<script>
    var baseUrl = "<?php echo base_url(); ?>";
</script>
<script src="<?php echo base_url('assets/js/student.js') ?>"></script>
<div class="container-fluid pt-4 px-4">
    
    <div class="col-12">
        <div class="bg-light rounded h-100 p-4">
            <h6 class="mb-4">Student Data</h6>
            <div class="table-responsive">
                <table id="student-list-table" class="table">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Full Name </th>
                            <th scope="col">Email</th>
                            <th scope="col">Mobile</th>
                            <th scope="col">Course</th>
                            <th scope="col">Country</th>
                        </tr>
                    </thead>
                    <tbody></tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<!-- </div> -->
<!-- Content End -->