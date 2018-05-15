$(document).ready(function() {
  $(".super").click(function() {
    var groupNo = $(this).attr('id');
    //alert('건물'+groupNo);
  });
  $("button").click(
    function() {
      //alert('버튼 클릭'+$(this).attr('id'));
      var idvalue = $(this).attr('id');
      $(".consent").empty();
      $.ajax({
        url: "consentlist",
        data: {
          parent_group: idvalue
        },
        dataType: 'json',
        success: function(data) {
          //var dataArray=new Array();
          $("#container").empty();
          //alert('사이즈'+data.length);
          for (var i = 0; i < data.length; i++) {
            var item = $('<div></div><br>');
            var itemText2 = $(
              '<button class="btn btn-primary item" id="' + data[i].group_no + '"></button>').text('콘센트 일련번호:' + data[i].group_name).appendTo(item);
            item.appendTo($('.consent'));
          }
          $(".item").click(
            function() {
              var consentNo = $(this).attr('id');
              var dataArray = new Array();
              //alert('콘센트 번호'+consentNo);
              $.ajax({
                url: "AvgData",
                data: {
                  plug_no: consentNo
                },
                dataType: 'json',
                success: function(data) {
                  //alert('테스트'+data.length);
                  var arr = new Array();
                  for (var i = 0; i < data.length; i++) {
                    arr[i] = data[i].ampere;
                    //alert("배열값"+arr[i]);
                  }
                  square(arr);
                },
                error: function() {
                  //alert('실패');
                }
              });
            });
        },
        error: function() {
          //alert('실패');
        }
      });
      /* $('.room').each(function(){ 

      	 //var text = $(this).text(); 

      	 var text = $(this).attr('id');

      	  //console.log(test); 

      	  alert(text); 

      	 // 경고창으로 값을 확인 하고 싶다면 console.log나 alert 중 하나를 선택하셔서 확인 해보시면 됩니다. 

      	}); */
      //var idvalue=$(".room").attr("id");
      //alert('아이디값'+idvalue); 
    });
});

function square(arr) {
  //var arr4 = new Array(100, 2, 4, 8, 16, 32, 64, 128, 256, 512,518,520,2000,10000);
  Highcharts.chart('container', {
    title: {
      text: 'chart'
    },
    xAxis: {
      tickInterval: 1
    },
    yAxis: {
      type: 'logarithmic',
      minorTickInterval: 0.5
    },
    tooltip: {
      headerFormat: '<b></b><br />',
      pointFormat: '{point.x}시 평균 전력 소비량:{point.y}'
    },
    series: [{
      data: [arr[0], arr[1], arr[2], arr[3], arr[4], arr[5],
        arr[6], arr[7], arr[8], arr[9]
      ],
      pointStart: 1
    }]
  });
}
