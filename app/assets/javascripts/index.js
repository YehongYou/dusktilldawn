$(document).ready(function() {
  $('.js-login-btn').click(function(event) {
    event.preventDefault();
    $('.login-popup-wrap').toggle();
  });

  var picker = new Pikaday({
    field: $('.datepicker')[0],
    onSelect: function(date) {
      console.log(picker.toString('YYYY-MM-DD'));
    }
  });

  $('.timepicker').timepicker({ 'timeFormat': 'H:i:s' });
  // var picker = new Pikaday({
  //   field: document.getElementById('datepicker'),
  //   format: 'D MMM YYYY',
  //   onSelect: function() {
  //     console.log(this.getMoment().format('Do MMMM YYYY'));
  //   }
  // });


})
