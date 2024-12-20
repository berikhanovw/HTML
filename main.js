document.querySelector('.hamburger-menu').addEventListener('click', function() {
    document.querySelector('nav ul').classList.toggle('active');
});

// Плавная прокрутка
document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', function (e) {
        e.preventDefault();

        document.querySelector(this.getAttribute('href')).scrollIntoView({
            behavior: 'smooth'
        });
    });
});

// Показать информацию о модели
function showInfo(model) {
    const info = document.getElementById(model);
    if (info.style.display === 'block') {
        info.style.display = 'none';
    } else {
        info.style.display = 'block';
    }
}