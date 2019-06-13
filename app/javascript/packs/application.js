import "bootstrap";

// $(document).ready(() => {
//   $('#my-bookings').click(()=>{
//     $('#mybanner').toggle('slow');
//   });
// });

$('#mybanner').hide();
$('#my-bookings').click(() => {
  $('#mybanner').slideToggle("slow");
});
