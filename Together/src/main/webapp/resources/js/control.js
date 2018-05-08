$(document)
  .ready(
    function() {
      var check = $("input[type='checkbox']");
      var url = "http://net.yjc.ac.kr:100/isocketsapi?cmd=getControlPortStatus&devid=361A24C0B62ABA394510230920B88641&port=1";
      $.ajax({
        url: url,
        dataType: "json",
        success: function(data) {
          // alert("성공 - " + data.status);
          if (data.status == "on") {
            // $("p").toggle();
            check.trigger("click");
          }
        }
      });
      check
        .click(function() {
          var command = "http://net.yjc.ac.kr:100/isocketsapi?cmd=setControlPortStatus&devid=361A24C0B62ABA394510230920B88641&port=1&on=";
          if (check.is(":checked") == true) {
            $.ajax({
              url: command + "1",
              dataType: "json",
              success: function(data) {
                if (data.result == "success") {
                  $("p").toggle();
                } else {
                  alert("실패1");
                }
              },
              error: function(data) {
                alert("실패");
              }
            });
            // isocketsapi?cmd=setControlPortStatus&devid=디바이스번호&port=포트번호&on=[0/1]
          } else {
            $.ajax({
              url: command + "0",
              dataType: "json",
              success: function(data) {
                if (data.result == "success") {
                  $("p").toggle();
                } else {
                  alert("실패1");
                }
              },
              error: function(data) {
                alert("실패");
              }
            });
          }
        });
    });
