$(document).ready(function() {
  changeData();
  setInterval(changeData, 25 * 1000);
  var chart = $("#myAreaChart")[0];
  chart.getContext("2d");
  var cData = {
    labels: [],
    datasets: [{
      label: "datas",
      backgroundColor: "rgba(255, 0, 0, 0.5)",
      borderColor: "rgba(255, 0, 0, 0.2)",
      data: [],
      fill: true
    }],
  };
  var cOption = {
    responsive: true,
    scales: {
      xAxes: [{
        ticks: {
          display: false
        }
      }],
      yAxes: [{
        ticks: {
          min: 0,
          max: 100,
          stepSize: 10,
          display: true
        }
      }]
    }
  };
  var myChart = new Chart(chart, {
    type: 'line',
    data: cData,
    option: cOption
  });
  $.ajax({
    url: "getRecent12H",
    success: function(data) {
      /*
       * for (var i = 0; i < data.length; i++) { console.log("와트 : " +
       * data[i].watt); console.log("날짜 : " + data[i].reg_string_date); }
       */
      insertData(myChart, data);
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
      console.log("당월 - " + data + "kWh");
      $("#month").text(data + "kWh");
    },
    error: function() {
      alert("실패");
    }
  });
  $.ajax({
    url: "getThisDaySumData",
    success: function(data) {
      console.log("금일 - " + data + "kWh");
      $("#day").text(data + "kWh");
    },
    error: function() {
      alert("실패");
    }
  });
  $.ajax({
    url: "getThisMonthStack",
    success: function(data) {
      console.log("누진 - " + data + "단계");
      $("#stack").text(data + "단계");
    },
    error: function() {
      alert("실패");
    }
  })
}

function insertData(myChart, arr) {
  var len = Object.keys(arr).length;
  var d;
  var dd;
  for (var i = 0; i < len; i++) {
    /*
     * d = new Date(arr[i].reg_string_date); dd = splitDate(d);
     */
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
