$(document).ready(function () {

    $('#customer-form').validate({
        rules: {
            firstName: {
                minlength: 4,
                required: true
            },
            lastName: {
                minlength: 4,
                required: true
            },
            email: {
                required: true,
                email: true
            },
            password: {
                passwor: true,
                required: true
            },
            message: {
                minlength: 2,
                required: true
            }
        },
        /*highlight: function (element) {
            $(element).closest('.control-group').removeClass('success').addClass('error');
        },
        success: function (element) {
            element.text('OK!').addClass('valid')
                .closest('.control-group').removeClass('error').addClass('success');
        }*/
    });

});