<!-- Main content goes here -->
<div class="container-fluid pt-4 px-4">
    <div class="row g-4">
        <div class="col-sm-12 col-xl-6">
            <div class="bg-light rounded h-100 p-4">
                <h6 class="mb-4">
                    <p>Email: <?php echo $this->session->userdata('email'); ?></p>
                </h6>
                <h6 class="mb-4">
                    <p>First name: <?php echo $this->session->userdata('first_name'); ?></p>
                </h6>
            </div>
        </div>
    </div>
</div>
<!-- </div> -->
<!-- Content End -->