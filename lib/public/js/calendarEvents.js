$(document).ready(function(){
  var date_input=$('input[name="date"]');
  var options={
    dateFormat: 'mm-dd-yy',
    todayHighlight: true,
    autoclose: true,
  };

    $('#date_picker .input-group.date').datepicker({
      dateFormat: 'mm-dd-yy',
      todayHighlight: true,
      autoclose: true,
    });
});
