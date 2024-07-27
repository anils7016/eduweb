<!-- Main content goes here -->
<script src="<?php echo base_url('assets/js/add_new_semester.js') ?>"></script>
<div class="container-fluid pt-4 px-4">
    <a href="<?php echo base_url('add-new-semester')?>"><button type="button" class="btn btn-primary m-2">Add semester + </button></a>
    <div class="col-12">
        <div class="bg-light rounded h-100 p-4">
            <h6 class="mb-4">Semester Data</h6>
            <div class="table-responsive">
                <table id="semester-list-table" class="table">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Course Name</th>
                            <th scope="col">Semester Name</th>
                            <th scope="col">Created By</th>
                            <!-- <th scope="col">Status</th>
                            <th scope="col">Action</th> -->
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