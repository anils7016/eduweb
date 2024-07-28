
$(document).ready(function () {
    let myData = [];

    //CKEDITOR.replace('editor1');

    $('#courseNameMessage').hide();
    $('#courseDescNameMessage').hide();
    toastr.options = {
        "closeButton": true,
        "debug": false,
        "newestOnTop": false,
        "progressBar": true,
        "positionClass": "toast-top-right",
        "preventDuplicates": false,
        "onclick": null,
        "showDuration": "300",
        "hideDuration": "1000",
        "timeOut": "5000",
        "extendedTimeOut": "1000",
        "showEasing": "swing",
        "hideEasing": "linear",
        "showMethod": "fadeIn",
        "hideMethod": "fadeOut"
    };
    $('#addNewCourse').on('submit', function (event) {
        event.preventDefault(); // Prevent the default form submission
        let courseName = $('#course_name').val();
        let courseDescription = $('#course_description').val();
        var formData = new FormData(this);
        var sitebaseUrl = "<?php echo base_url(); ?>";

        if (courseName == "") {
            $('#courseNameMessage').text('Please enter course name.');
            $('#courseNameMessage').show();
            return;
        } else {
            $('#courseNameMessage').hide();
        }
        if (courseDescription == "") {
            $('#courseDescNameMessage').text('Please enter course discription.');
            $('#courseDescNameMessage').show();
            return;
        } else {
            $('#courseDescNameMessage').hide();
        }
        $.ajax({
            url: siteBaseUrl+'course/saveCourse', // URL of the server-side script
            type: 'POST',
            // data: {
            //     courseName: courseName,
            // },
            // dataType: 'json',
            data: formData,
            contentType: false,
            processData: false,
            success: function (response) {
                if (response.error_code == 200) { // couse added successfully.
                    toastr.success(response.message);
                    setTimeout(function () {
                        window.location.href = 'course-list';
                    }, 2000);
                } else {
                    toastr.error(response.message);
                }
            },
            error: function (xhr, status, error) {
                toastr.error(error);
            }
        });
    });

    $.ajax({
        //url: 'course/getCourseList', // URL of the server-side script
        url: 'course/getStudentList', // direct controller method
        type: 'GET',
        success: function (response) {
            if (response.error_code == 200) { // couse list get successfully.
                toastr.success(response.message);
                courseList = response.data;
                console.log('data', courseList);
                let tbody = $('#student-list-table tbody');
                let htmlStatus = ``;
                let courseImage = '';
                $.each(courseList, function (index, course) {
                    
                    var row = $('<tr></tr>');
                    row.append('<td>' + (index + 1) + '</td>'); // Increment index to start from 1
                    row.append('<td>' + course.first_name + '' + course.last_name + '</td>');
                    row.append('<td>' + course.email + '</td>');
                    row.append('<td>' + course.mobile + '</td>');
                    row.append('<td>' + course.acadamic_course + '</td>');
                    row.append('<td>' + course.countryName + '</td>');
                    
                    tbody.append(row);
                });
            } else {
                toastr.error(response.message);
            }
        },
        error: function (xhr, status, error) {
            toastr.error(error);
        }
    });
});
