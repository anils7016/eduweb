$(document).ready(function () {
    let myData = [];

    let getCurrentUrl = window.location.pathname;
    var parts = getCurrentUrl.split('/');
    var lastElement = parts[parts.length - 1];
    $('#semesterNameMessage').hide();
    $('#courseSemesterMessage').hide();
    // if (lastElement == 'semester-list') {
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
    // }

    $('#addNewSemester').on('submit', function (event) {
        event.preventDefault(); // Prevent the default form submission
        let semesterName = $('#semester_name').val();
        let courseId = $('#course_id').val();
        if (semesterName == "0") {
            $('#semesterNameMessage').text('Please select semester name.');
            $('#semesterNameMessage').show();
            return;
        } else {
            $('#semesterNameMessage').hide();
        }
        if (courseId == "0") {
            $('#courseSemesterMessage').text('Please select course name.');
            $('#courseSemesterMessage').show();
            return;
        } else {
            $('#courseSemesterMessage').hide();
        }
        $.ajax({
            url: 'semester/saveSemester', // URL of the server-side script
            type: 'POST',
            data: {
                course_id : courseId,
                semester_name : semesterName
            },
            dataType: 'json',
            success: function (response) {
                if (response.error_code == 200) { // couse added successfully.
                    toastr.success(response.message);
                    setTimeout(function () {
                        window.location.href = 'semester-list';
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

    if (lastElement == 'semester-list') {
        debugger
        $.ajax({
            url: 'semester/getSemesterList', // URL of the server-side script
            type: 'GET',
            success: function (response) {
                if (response.error_code == 200) { // couse list get successfully.
                    toastr.success(response.message);
                    debugger
                    semesterList = response.data;
                    console.log('data', semesterList);
                    let tbody = $('#semester-list-table tbody');
                    let htmlStatus = ``;
                    $.each(semesterList, function (index, sem) {
                        // var editButton = '<button type="button" class="btn btn-primary btn-sm edit-btn" data-course-id="' + sem.semester_course_id + '">Edit</button>';
                        // var deleteButton = '<button type="button" class="btn btn-danger btn-sm delete-btn" data-course-id="' + sem.semester_course_id + '">Delete</button>';
                        // var actionHtml = editButton + ' | ' + deleteButton;
                        // if (course.is_active == 1) {
                        //     htmlStatus = '<button type="button" class="btn btn-success btn-sm edit-btn">Active</button>';
                        // } else {
                        //     htmlStatus = '<button type="button" class="btn btn-danger rounded-pill m-2">Danger</button>';
                        // }
                        var row = $('<tr></tr>');
                        row.append('<td>' + (index + 1) + '</td>'); // Increment index to start from 1
                        row.append('<td>' + sem.course_name + '</td>');
                        row.append('<td>' + sem.semester_name + '</td>');
                        row.append('<td>' + sem.first_name + ' ' + sem.last_name + '</td>');
                        // row.append('<td>' + htmlStatus + '</td>');
                        // row.append('<td>' + actionHtml + '</td>');
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
    }
});
