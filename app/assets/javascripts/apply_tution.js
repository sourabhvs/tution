
$(document).ready(function()
{
  $("#apply-tution-form").validate({
    rules: {
      "apply_tution[name]": {
        required: true
      },

      "apply_tution[collage]":{
       required: true,
      },

      "apply_tution[place]":{
       required: true,
      },

      "apply_tution[s_class]":{
       required: true,
      },

      "apply_tution[telephone]": {
       required: true,
       minlength:9,
       maxlength:10,
       number: true
      },

      errorElement: "span",
      errorClass: "help-block",
      messages: {
        "apply_tution[name]": {
         required : "Please specify Name"
        },
        "apply_tution[collage]": {
         required : "Please specify Collage Name"
        },
        "apply_tution[place]": {
         required : "Please specify Place Name"
        },
        "apply_tution[s_class]": {
         required : "Please specify Which Class"
        },
        "apply_tution[telephone]": {
         apply_tution_telephone: "Please specify Mobile Number",
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

  $("#apply-tution-form").validate({
      onfocusout: false,
      invalidHandler: function(form, validator) {
          var errors = validator.numberOfInvalids();
          if (errors) {
              validator.errorList[0].element.focus();
          }
      }
  });
});
