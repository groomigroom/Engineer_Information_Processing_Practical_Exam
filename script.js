let h_three = document.querySelectorAll("h3");

h_three.forEach((hh) => {
    hh.addEventListener("click", () => {
        hh.style.color = "#333333";
    });
});