
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
            url: 'course/saveCourse', // URL of the server-side script
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
        url: 'course/getCourseList', // URL of the server-side script
        type: 'GET',
        success: function (response) {
            if (response.error_code == 200) { // couse list get successfully.
                toastr.success(response.message);
                courseList = response.data;
                console.log('data', courseList);
                let tbody = $('#course-list-table tbody');
                let htmlStatus = ``;
                let courseImage = '';
                $.each(courseList, function (index, course) {
                    if (course.course_image == "") {
                        courseImage = "download.jfif";
                    } else {
                        courseImage = course.course_image;
                    }
                    var editButton = '<button type="button" class="btn btn-primary btn-sm edit-btn" data-course-id="' + course.id + '">Edit</button>';
                    var deleteButton = '<button type="button" class="btn btn-danger btn-sm delete-btn" data-course-id="' + course.id + '">Delete</button>';
                    var actionHtml = editButton + ' | ' + deleteButton;
                    if (course.is_active == 1) {
                        htmlStatus = '<button type="button" class="btn btn-success btn-sm edit-btn">Active</button>';
                    } else {
                        htmlStatus = '<button type="button" class="btn btn-danger rounded-pill m-2">Danger</button>';
                    }
                    var row = $('<tr></tr>');
                    row.append('<td>' + (index + 1) + '</td>'); // Increment index to start from 1
                    row.append('<td>' + course.course_name + '</td>');
                    row.append('<td><img src="' + baseUrl + 'uploads/' + courseImage + '" class="rounded-img" alt="' + course.course_name + '"></td>');
                    row.append('<td>' + course.first_name + ' ' + course.last_name + '</td>');
                    row.append('<td>' + htmlStatus + '</td>');
                    row.append('<td>' + actionHtml + '</td>');
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
