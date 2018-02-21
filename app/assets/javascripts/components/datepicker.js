$(function() {
  today = new Date(Date.now());

  $('#checkin_datepicker').datepicker({language: 'fr'})
                          .datepicker('setDate', today)
                          .datepicker('setStartDate', today);
  $('#checkout_datepicker').datepicker({useCurrent: false, //Important! See issue #1075
                                        language: 'fr'})
                           .datepicker('setStartDate', today)

  $("#checkin_datepicker").on("changeDate", function(e) {
    $('#checkout_datepicker').datepicker('setStartDate', e.date)
  });
  $("#checkout_datepicker").on("changeDate", function(e) {
    $('#checkin_datepicker').datepicker('setEndDate', e.date)
  });
});
