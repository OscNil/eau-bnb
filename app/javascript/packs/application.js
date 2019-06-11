import "bootstrap";


const bookings = document.getElementById("my-bookings");
bookings.addEventListener("click", (event) => {
  console.log("Hej");
  console.log(event);
  console.log(event.currentTarget);
});
