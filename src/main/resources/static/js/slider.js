$('.slides').slick({
    slidesToShow: 1,
    slidesToScroll: 1,
    autoplay: true,
    autoplaySpeed: 4000,
    asNavFor: '.slides2'
});

$('.slides2').slick({
    slidesToShow: 5,
    centerMode: true,
    centerPadding: '20px',
    asNavFor: '.slides',
    focusOnSelect: true,
    arrows: false
});