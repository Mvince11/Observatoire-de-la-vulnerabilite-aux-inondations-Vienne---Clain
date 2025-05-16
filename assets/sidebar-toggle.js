document.addEventListener("DOMContentLoaded", function () {
  const elem = document.getElementById("nav-menu-objectifs-n°1");
  const target = "objectif1.html";

  if (elem) {
    elem.addEventListener("click", function () {
      const current = window.location.pathname;
      if (!current.endsWith(target)) {
        window.location.href = target;
      }
    });
  }
});

