$(document).ready(function() {
$("#progress").percentageLoader({
        width : 256,  // width in pixels
        height : 256, // height in pixels
        progress: $("#progress").data('progress'),  // initialise progress bar position, within the range [0..1]
        value: $("#progress").data('total')  // initialise text label to this value
    });
// $(function() {
//     var options = {};
//     var wizard = $("#some-wizard").wizard(options);
//     wizard.show();
// });
// $('#emailContinue').click(function() {
//     $('#emailModal').each(function() {
//         if ($(this).offset().left < 0) {
//             $(this).css("left", "150%");
//         } else if ($(this).offset().left > $('#emailModal').width()) {
//             $(this).animate({
//                 left: '50%',
//             }, 1000 );
//         } else {
//             $(this).animate({
//                 left: '-150%',
//             }, 1000 );
//         }
//         login();
//     });
// 	});
//     // Animation complete.


// function login() {
//   var email = $('#user_email').val();
//   var password = $('#user_password').val();
//   var data = {remote: true, commit: "Sign in", utf8: "✓",
//               user: {remember_me: 1, password: password, email: email}};
//   $.post('/users/sign_in.json', data, function(resp) {
//     if(resp.success) {
//       // process success case
//     } else {
//       // let the user know they failed authentication
//     }
//   });
//   return false;
// }

 });


