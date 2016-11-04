jQuery.validator.addMethod("user_email", function(value) {
   return /^(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})$/i.test(value)
});

$(document).ready(function()
{
  $("#new_user").validate({
    rules: {
      "user[name]": {
        required: true
      },

      "user[email]":{
       required: true,
      },

      "user[password]":{
       required: true,
       pwcheck: true
      },

      "user[password_confirmation]":{
       equalTo: "#user_password"
      },

      "user[telephone]": {
       required: true,
       minlength:9,
       maxlength:10,
       number: true
      },

      errorElement: "span",
      errorClass: "help-block",
      messages: {
        "user[name]": {
         user_name: "Only Alphabets of max length 32 characters",
         required : "Please specify First Name"
        },
        "user[email]": {
         required : "Please specify Email ID",
         user_email : "Please enter a valid email",
         remote : "Email already in use"
        },
        "user[password]": {
         required : "Please specify Password",
         pwcheck: "Password needs to be minium 8 characters long."
        },
        "user[password_confirmation]": {
          equalTo: "Your password and confirmation password do not match."
        },

        "user[telephone]": {
         required : "Please specify Mobile Number",
         remote: "Mobile Number already in use"
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

  $("#new_user").validate({
      onfocusout: false,
      invalidHandler: function(form, validator) {
          var errors = validator.numberOfInvalids();
          if (errors) {
              validator.errorList[0].element.focus();
          }
      }
  });
});
