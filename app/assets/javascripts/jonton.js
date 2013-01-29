
$(document).ready(function() {
$('#emailContinue').click(function() {
    $('#emailModal').each(function() {
        if ($(this).offset().left < 0) {
            $(this).css("left", "150%");
        } else if ($(this).offset().left > $('#emailModal').width()) {
            $(this).animate({
                left: '50%',
            }, 1000 );
        } else {
            $(this).animate({
                left: '-150%',
            }, 1000 );
        }
    });
	});
    // Animation complete.
 });

