$(document).ready(function () {
    let myData = [];

    let getCurrentUrl = window.location.pathname;
    var parts = getCurrentUrl.split('/');
    var lastElement = parts[parts.length - 1];
    $('#semesterNameMessage').hide();
    $('#courseSemesterMessage').hide();
    $('#subjectCodeNameMessage').hide();
    $('#subjectNameMessage').hide();
    $('#subjectDescNameMessage').hide();
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

    $('#course_id').change(function () {
        var courseId = $(this).val();
        if (courseId) {
            $.ajax({
                // url: '<?php echo site_url('semester/ get_by_course / '); ?>' + courseId,
                url: 'semester/get_by_course/' + courseId,
                type: 'GET',
                dataType: 'json',
                success: function (data) {
                    debugger
                    $('#semester_id').empty();
                    $('#semester_id').append('<option value="">Select Semester</option>');
                    $.each(data, function (key, value) {
                        $('#semester_id').append('<option value="' + value.id + '">' + value.semester_name + '</option>');
                    });
                }
            });
        } else {
            $('#semester_id').empty();
            $('#semester_id').append('<option value="">Select Semester</option>');
        }
    })

    $('#fetch_subjects').click(function () {
        var semesterId = $('#semester_id').val();
        if (semesterId) {
            $.ajax({
                url: 'subject/get_subjects/' + semesterId,
                type: 'GET',
                dataType: 'json',
                success: function (data) {
                    let subjectImage = '';
                    if (data.length > 0) {
                        $('#subjects_table tbody').empty();
                        $.each(data, function (key, value) {
                            if(value.subject_image==""){
                                subjectImage = "download.jfif";
                            }else{
                                subjectImage = value.subject_image;
                            }
                            $('#subjects_table tbody').append(
                                '<tr><td>' + value.subject_code + 
                                '</td><td>' + value.subject_name + 
                                '</td><td>' + value.subject_description + 
                                '</td><td><img src="' + baseUrl + 'uploads/' + subjectImage + '" class="rounded-img" alt="' + value.subject_name + '"></td></tr>'+
                                '</td></tr>'
                            );
                        });
                    } else {
                        $('#subjects_table tbody').append('<p><center>Sorry data not found!</center></p>');
                    }

                }
            });
        } else {
            alert('Please select a semester');
        }
    });

    $('#course_id').on('change',function(){
        let courseId = $('#course_id').val();
        if(courseId!=""){
            $('#courseSemesterMessage').hide();
        }
    })
    
    $('#semester_id').on('change',function(){
        let courseId = $('#semester_id').val();
        if(courseId!=""){
            $('#semesterNameMessage').hide();
        }
    })

    $('#addNewSubject').on('submit', function (event) {
        event.preventDefault(); // Prevent the default form submission
        var formData = new FormData(this);
        let courseId = $('#course_id').val();
        let semesterId = $('#semester_id').val();
        let subjectCode = $('#subject_code').val();
        let subjectName = $('#subject_name').val();
        let subjectDescription = $('#subject_description').val();
        
        if (courseId == "0") {
            $('#courseSemesterMessage').text('Please select course name.');
            $('#courseSemesterMessage').show();
            return;
        } else {
            $('#courseSemesterMessage').hide();
        }

        if (semesterId == "0" || semesterId == "") {
            $('#semesterNameMessage').text('Please select semester.');
            $('#semesterNameMessage').show();
            return;
        } else {
            $('#semesterNameMessage').hide();
        }

        if (semesterId == "0" || semesterId == "") {
            $('#semesterNameMessage').text('Please select semester.');
            $('#semesterNameMessage').show();
            return;
        } else {
            $('#semesterNameMessage').hide();
        }

        if (subjectCode == "") {
            $('#subjectCodeNameMessage').text('Please enter subject code.');
            $('#subjectCodeNameMessage').show();
            return;
        } else {
            $('#subjectCodeNameMessage').hide();
        }
        
        if (subjectName == "") {
            $('#subjectNameMessage').text('Please enter subject name.');
            $('#subjectNameMessage').show();
            return;
        } else {
            $('#subjectNameMessage').hide();
        }

        if (subjectDescription == "") {
            $('#subjectDescNameMessage').text('Please enter subject description.');
            $('#subjectDescNameMessage').show();
            return;
        } else {
            $('#subjectDescNameMessage').hide();
        }

        $.ajax({
            url: 'subject/saveSubject', // URL of the server-side script
            type: 'POST',
            // data: {
            //     semester_d: semesterId,
            //     subject_code: subjectCode,
            //     subject_name: subjectName
            // },
            // dataType: 'json',
            data: formData,
            contentType: false,
            processData: false,
            success: function (response) {
                if (response.error_code == 200) { // couse added successfully.
                    toastr.success(response.message);
                    setTimeout(function () {
                        window.location.href = 'subject-list';
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
