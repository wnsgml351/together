$(document).ready(function() {
  $('#test').click(function() {
    var roomId = $("#room_name").val();
    var consentId = $("#consent_name").val();
    //alert("방 이름:"+roomId+"콘센트 이름:"+consentId);
    //ajax2번호출
    $.ajax({
      url: "roomConfirm",
      data: {
        group_name: roomId
      },
      success: function(data) {
        alert('성공' + data);
        $.ajax({
          url: "groupRepeat",
          data: {
            group_name: consentId,
            parent_group: data
          },
          success: function(data) {
            alert('콘센트 등록');
            $("#room_name").val('');
            $("#consent_name").val('');
          },
          error: function() {
            alert('콘센트 등록 실패');
          }
        });
      },
      error: function() {
        alert('방 이름을 다시 입력하세요.');
        $("#room_name").val('');
        $("#consent_name").val('');
      }
    });
  });
  $("#consentlist").click(function() {
    //window.location.href="consentList";
    var roomId = $("#room_name").val();
    $(".consent").empty();
    alert(roomId + '에 대한 콘센트 리스트가 보여집니다.');
    $.ajax({
      url: "roomConfirm",
      data: {
        group_name: roomId
      },
      success: function(data) {
        //alert("그룹넘버:"+data);
        $.ajax({
          url: "consentlist",
          data: {
            parent_group: data
          },
          dataType: 'json',
          success: function(data) {
            //alert('콘센트 리스트 성공');
            var item = $('<div></div>').addClass('item');
            //alert('사이즈'+data.length);
            var itemText1 = $('<p></p>').text('해당 방 이름:' + roomId).appendTo(item);
            for (var i = 0; i < data.length; i++) {
              var itemText2 = $('<p></p>').text('해당 콘센트 일련번호:' + data[i].group_name).appendTo(item);
              item.appendTo($('.consent'));
            }
          },
          error: function(data) {
            alert('콘센트 리스트 실패');
          }
        });
      }
    });
  });
});
