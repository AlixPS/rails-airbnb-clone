$(function() {
  $('#checkin_datepicker').datepicker();
  $('#checkout_datepicker').datepicker({
    useCurrent: false //Important! See issue #1075
  });
  $("#checkin_datepicker").on("dp.change", function(e) {
    $('#checkout_datepicker').data("DateTimePicker").minDate(e.date);
  });
  $("#checkout_datepicker").on("dp.change", function(e) {
    $('#checkin_datepicker').data("DateTimePicker").maxDate(e.date);
  });

  $('#datetimepicker6').datetimepicker();
  $('#datetimepicker7').datetimepicker({
    useCurrent: false //Important! See issue #1075
  });
  $("#datetimepicker6").on("dp.change", function(e) {
    $('#datetimepicker7').data("DateTimePicker").minDate(e.date);
  });
  $("#datetimepicker7").on("dp.change", function(e) {
    $('#datetimepicker6').data("DateTimePicker").maxDate(e.date);
  });
});
