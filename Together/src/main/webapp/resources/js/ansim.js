$(document).ready(function() {
  var chart = $("#myAreaChart")[0];
  chart.getContext("2d");
  var cData = {
    labels: [],
    datasets: [{
      label: "watt",
      backgroundColor: "rgba(255, 0, 0, 0.5)",
      borderColor: "rgba(255, 0, 0, 0.2)",
      data: [],
      fill: true
    }],
  };
  var cOption = {
    responsive: false
  };
  var myChart = new Chart(chart, {
    type: 'bar',
    data: cData,
    option: cOption
  });
  $.ajax({
    url: myContextPath + "/ansim",
    success: function(data) {
      var total = 0;
      for (var i = 0; i < data.length; i++) {
        total += data[i].watt;
        console.log("타이틀 : " + data[i].title);
        console.log("와트 : " + data[i].watt);
        console.log("날짜 : " + data[i].reg_string_date);
      }
      console.log("ㅌ " + total);
      insertData(myChart, data);
      if (total < 10 && total > 2200) {
        console.log("안정");
        $("#status").text("안전");
        $("#thidDiv").addClass("alert-success");
      } else {
        console.log("ㄴ안정");
        Push.create("보호대상자 위험 감지", {
          body: "대상자에게 연락을 취해보세요.",
          icon: '../resources/img/danger.png',
          timeout: 15000,
          onClick: function() {
            window.focus();
            this.close();
          }
        });
        $("#status").text("위험");
        $("#thidDiv").addClass("alert-danger");
      }
    },
    error: function(data) {
      alert("실패 " + data);
    }
  });
});

function changeData() {
  $.ajax({
    url: "getThisMonthSumData",
    success: function(data) {
      console.log(data);
      $("#sum").text(data + "kWh");
    },
    error: function() {
      alert("실패");
    }
  });
}

function insertData(myChart, arr) {
  var len = Object.keys(arr).length;
  var d;
  var dd;
  for (var i = 0; i < len; i++) {
    dd = arr[i].reg_string_date.split(" ");
    dd[1] = dd[1] + "~" + (parseInt(dd[1]) + 1);
    console.log(dd[1]);
    addData(myChart, dd[1], arr[i].watt);
  }
};

function splitDate(date) {
  var result;
  result = date.getUTCFullYear() + "/";
  result += date.getMonth() + "/";
  result += date.getDate() + "/ ";
  result += date.getHours() + ":";
  result += date.getMinutes();
  return result;
};

function addData(chart, label, data) {
  chart.data.labels.push(label);
  chart.data.datasets.forEach((dataset) => {
    dataset.data.push(data);
  });
  chart.update();
};
