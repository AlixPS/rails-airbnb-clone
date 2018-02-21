$(function() {
  const today = new Date(Date.now());

  // $('#checkin_datepicker').datepicker({language: 'fr'})
  //                         .datepicker('setDate', today)
  //                         .datepicker('setStartDate', today);
  // $('#checkout_datepicker').datepicker({useCurrent: false, Important! See issue #1075
  //                                       language: 'fr'})
  //                          .datepicker('setStartDate', today)
  //
  // $("#checkin_datepicker").on("changeDate", function(e) {
  //   $('#checkout_datepicker').datepicker('setStartDate', e.date)
  // });
  // $("#checkout_datepicker").on("changeDate", function(e) {
  //   $('#checkin_datepicker').datepicker('setEndDate', e.date)
  // });

  $('#checkin_datepicker ').datetimepicker();
  $('#checkout_datepicker').datetimepicker({
    useCurrent: false //Important! See issue #1075
  });
  $("#checkin_datepicker").on("dp.change", function(e) {
    $('#checkout_datepicker').data("DateTimePicker").minDate(e.date);
  });
  $("#checkout_datepicker").on("dp.change", function(e) {
    $('#checkin_datepicker').data("DateTimePicker").maxDate(e.date);
  });
});
