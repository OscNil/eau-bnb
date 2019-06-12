import "bootstrap";

$(document).ready(() => {
  $('#mybanner').hide();
  $('#my-bookings').click(()=>{
    $('#mybanner').toggle();
  });
});
