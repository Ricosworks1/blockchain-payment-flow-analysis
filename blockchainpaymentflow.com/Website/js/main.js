// Smooth scrolling for anchor links
document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', function (e) {
        e.preventDefault();
        const target = document.querySelector(this.getAttribute('href'));
        if (target) {
            target.scrollIntoView({
                behavior: 'smooth',
                block: 'start'
            });
        }
    });
});

// Add active class to current nav item
document.addEventListener('DOMContentLoaded', function() {
    const currentPage = window.location.pathname.split('/').pop() || 'index.html';
    document.querySelectorAll('.nav-menu a').forEach(link => {
        if (link.getAttribute('href') === currentPage) {
            link.classList.add('active');
        }
    });
});

// Responsive navigation toggle (for mobile)
const createMobileNav = () => {
    const nav = document.querySelector('.nav-menu');
    if (window.innerWidth < 768 && !document.querySelector('.nav-toggle')) {
        const toggle = document.createElement('button');
        toggle.classList.add('nav-toggle');
        toggle.innerHTML = '☰';
        toggle.addEventListener('click', () => {
            nav.classList.toggle('active');
        });
        document.querySelector('.navbar .container').prepend(toggle);
    }
};

window.addEventListener('resize', createMobileNav);
createMobileNav();

// Add fade-in animation on scroll
const observerOptions = {
    threshold: 0.1,
    rootMargin: '0px 0px -50px 0px'
};

const observer = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
        if (entry.isIntersecting) {
            entry.target.style.opacity = '1';
            entry.target.style.transform = 'translateY(0)';
        }
    });
}, observerOptions);

document.querySelectorAll('.network-card, .category-card, .infra-card').forEach(el => {
    el.style.opacity = '0';
    el.style.transform = 'translateY(20px)';
    el.style.transition = 'opacity 0.6s ease, transform 0.6s ease';
    observer.observe(el);
});
