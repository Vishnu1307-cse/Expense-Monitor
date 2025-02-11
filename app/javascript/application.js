// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
document.addEventListener("DOMContentLoaded", function () {
  let flashNotice = document.getElementById("flash-notice");
  if (flashNotice) {
    setTimeout(() => {
      flashNotice.style.transition = "opacity 0.5s";
      flashNotice.style.opacity = "0";
      setTimeout(() => flashNotice.remove(), 500); // Remove it after fade-out
    }, 3000); // 👈 Disappears after 3 seconds
  }
});
