// function statusChangeCallback(response) {
//   console.log('statusChangeCallback');
//   console.log(response);
//
//   if (response.status === 'connected') {
//     testAPI();
//   }
// };
//
// function checkLoginState() {
//   FB.getLoginStatus(function(response) {
//     statusChangeCallback(response);
//   });
// };
//
// window.fbAsyncInit = function() {
//   FB.init({
//     appId      : '637801966385250',
//     cookie     : true,  // enable cookies to allow the server to access
//                         // the session
//     xfbml      : true,  // parse social plugins on this page
//     version    : 'v2.5' // use graph api version 2.5
//   });
//   FB.getLoginStatus(function(response) {
//     statusChangeCallback(response);
//   });
// };
//
// // Load the SDK asynchronously
// (function(d, s, id) {
//   var js, fjs = d.getElementsByTagName(s)[0];
//   if (d.getElementById(id)) return;
//   js = d.createElement(s); js.id = id;
//   js.src = "//connect.facebook.net/en_US/sdk.js";
//   fjs.parentNode.insertBefore(js, fjs);
// }(document, 'script', 'facebook-jssdk'));
//
// // Here we run a very simple test of the Graph API after login is
// // successful.  See statusChangeCallback() for when this call is made.
// function testAPI() {
//   console.log('Welcome!  Fetching your information.... ');
//   FB.api('/me', function(response) {
//     console.log(response);
//     console.log('Successful login for: ' + response.name);
//     // document.getElementById('status').innerHTML = 'Thanks for logging in, ' + response.name + '!';
//     img = "<img src='http://graph.facebook.com/" + response.id + "/picture'>";
//     console.log(img);
//     $('#status').append("<div>").html(img)
//     $('#status:has(img)').addClass('profile-image');
//   });
// }
