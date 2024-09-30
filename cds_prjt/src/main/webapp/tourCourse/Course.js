console.log('Course.js loaded'); // 이 줄이 콘솔에 출력되는지 확인
$('.course-button').on('click', function() {
    console.log('Clicked:', $(this).data('region')); // 클릭 시 콘솔에 출력되는지 확인
    var region = $(this).data('region');
    $('#course-title').text('#' + region);
});