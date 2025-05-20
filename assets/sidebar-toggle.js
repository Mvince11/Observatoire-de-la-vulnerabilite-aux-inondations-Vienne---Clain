document.addEventListener("DOMContentLoaded", function () {
  const elem = document.getElementById("nav-menu-objectif-n°1");
  const target = "objectif1.html";

  if (elem) {
    elem.addEventListener("click", function () {
      const current = window.location.pathname;
      if (!current.endsWith(target)) {
        window.location.href = target;
      }
    });
  }
  
    // Ouvre le sous-menu si on est sur une page Objectifs
  const objectifsPages = ["batiments_plain_pied.html", "etablissements_sensibles.html"];
  if (objectifsPages.some(p => currentPath.endsWith(p))) {
    const parentLink = document.querySelector('.nav-link.dropdown-toggle');
    const menu = parentLink?.nextElementSibling;
    if (parentLink && menu?.classList.contains("dropdown-menu")) {
      parentLink.classList.add("show");
      menu.classList.add("show");
    }
  }

});


