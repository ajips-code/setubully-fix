const sr = ScrollReveal({
    distance: "60px",
    duration: 2500,
    delay: 400,
});

sr.reveal(`.landing-title, .landing-description, .landing-button`, {
    delay: 600,
});
sr.reveal(`.sharing-image`, { origin: "left", delay: 700 });
sr.reveal(`.stories-title, .stories-description`, {
    origin: "right",
    delay: 600,
});
sr.reveal(`.stories-image`, { delay: 700 });
sr.reveal(`.footer-text, .footer-link`, { origin: "top", delay: 600 });

function isElementInViewport(el) {
    const rect = el.getBoundingClientRect();
    return (
        rect.top >= 0 &&
        rect.left >= 0 &&
        rect.bottom <=
            (window.innerHeight || document.documentElement.clientHeight) &&
        rect.right <=
            (window.innerWidth || document.documentElement.clientWidth)
    );
}

function handleScroll() {
    const images = document.querySelectorAll(".home-images");
    images.forEach((image) => {
        if (isElementInViewport(image)) {
            image.classList.add("animate");
        }
    });
}

window.addEventListener("scroll", handleScroll);