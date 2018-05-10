$(document).ready(function() {
  var check = $("input[type='checkbox']");
  $.ajax({
    url: "getStatus",
    dataType: "json",
    success: function(data) {
      // alert("성공 - " + data.status);
      if (data.result == "success") {
        // $("p").toggle();
        check.trigger("click");
      }
    }
  });
  check.click(function(e) {
    if (check.is(":checked") == true) {
      run("on", e);
    } else {
      run("off", e);
    }
  });

  function run(param, e) {
    console.log(param);
    $.ajax({
      crossOrigin: true,
      url: param,
      data: {
        deviceId: "361A24C0B62ABA394510230920B88641"
      },
      dataType: "json",
      success: function(data) {
        if (data.result == "success") {
          $("p").toggle();
        } else {
          alert("실패1");
          // e.preventDefault();
          return false;
        }
      },
      error: function(data) {
        alert("실패");
        return false;
      }
    });
  }
});
