$(function() {
  $('#checkin_datepicker').datepicker();
  $('#checkout_datepicker').datepicker({
    useCurrent: false //Important! See issue #1075
  });
  $("#checkin_datepicker").on("changeDate", function(e) {
    $('#checkout_datepicker').datepicker('setStartDate', e.date)
  });
  $("#checkout_datepicker").on("changeDate", function(e) {
    $('#checkin_datepicker').datepicker('setEndDate', e.date)
  });
});
