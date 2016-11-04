jQuery.validator.addMethod("user_email", function(value) {
   return /^(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})$/i.test(value)
});

$(document).ready(function()
{
  $("#employee-request-form").validate({
    rules: {
      "employee_request[name]": {
        required: true
      },

      "employee_request[email]":{
       required: true,
      },

      "employee_request[qualification]":{
       required: true,
      },

      "employee_request[telephone]": {
       required: true,
       minlength:9,
       maxlength:10,
       number: true
      },

      errorElement: "span",
      errorClass: "help-block",
      messages: {
        "employee_request[name]": {
         user_name: "Only Alphabets of max length 32 characters",
         required : "Please specify First Name"
        },
        "employee_request[email]": {
         required : "Please specify Email ID",
         user_email : "Please enter a valid email",
         remote : "Email already in use"
        },
        "employee_request[qualification]": {
         employee_request_qualification: "Only Alphabets of max length 32 characters",
         required : "Please specify First Name"
        },
        "employee_request[telephone]": {
         employee_request_telephone: "Please specify Mobile Number",
         required : "Please specify Mobile Number"
        },
      },

    highlight: function(element) {
      $(element).parent().addClass("has-error");
    },
    unhighlight: function(element) {
      $(element).parent().removeClass("has-error");
    },

    submitHandler: function(form) {
      form.submit();
    }
  }
  });

  $("#employee-request-form").validate({
      onfocusout: false,
      invalidHandler: function(form, validator) {
          var errors = validator.numberOfInvalids();
          if (errors) {
              validator.errorList[0].element.focus();
          }
      }
  });
});
