document.addEventListener("DOMContentLoaded", function () {
  const objectif1Link = document.getElementById("nav-menu-objectifs-n°1");

  if (objectif1Link) {
    objectif1Link.addEventListener("click", function () {
      window.location.href = "objectif1.html";
    });
  }
});

