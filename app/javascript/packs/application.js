import "bootstrap";
import "../plugins/flatpickr"

$('#mybanner').hide();
$('#my-bookings').click(() => {
  $('#mybanner').slideToggle("slow");
});

