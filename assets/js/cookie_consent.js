(function () {
  "use strict";
  
  console.log('check cookies');
 
  var cookie_name = 'cmmid_repo_consent'; // The cookie name
  var cookie_lifetime = 30; // Cookie expiry in days
 
  /**
   * Set a cookie
   * @param cname - cookie name
   * @param cvalue - cookie value
   * @param exdays - expiry in days
   */
  var _setCookie = function (cname, cvalue, exdays) {
    var d = new Date();
    d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
    var expires = "expires=" + d.toUTCString();
    document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
  };
 
  /**
   * Get a cookie
   * @param cname - cookie name
   * @returns string
   */
  var _getCookie = function (cname) {
    var name = cname + "=";
    var ca = document.cookie.split(';');
    for (var i = 0; i < ca.length; i++) {
      var c = ca[i];
      while (c.charAt(0) == ' ') {
        c = c.substring(1);
      }
      if (c.indexOf(name) == 0) {
        return c.substring(name.length, c.length);
      }
    }
    return "";
  };
 
  /**
   * Should the cookie popup be shown?
   */
  var _shouldShowPopup = function () {
    if (_getCookie(cookie_name)) {
	  return false;
    } else {
      return true;
    }
  };
  
  // Show the cookie popup on load if not previously accepted
  if (_shouldShowPopup()) {
    $('.cookie-consent').css('display',"");
  }
 
  // Give consent
  $('.cookie-consent .cookie.agree').on('click', function () {
    _setCookie(cookie_name, 1, cookie_lifetime);
	console.log("consented");
	//enable tracking
	window['ga-disable-UA-158646461-1'] = false;
	//track this pageview
	gtag('config', 'UA-158646461-1', { 'anonymize_ip': true });
	
	$('.cookie-consent').css('display',"none");
  });
  $('.cookie-consent .cookie.disagree').on('click', function () {
    _setCookie(cookie_name, 0, cookie_lifetime);
	console.log("not consented");
	//disable tracking
	window['ga-disable-UA-158646461-1'] = true;
	
	$('.cookie-consent').css('display',"none");
  });
  
  //is there consent?
  if (_getCookie(cookie_name)){
    var cookie_value = _getCookie(cookie_name);	  
  } else {
	var cookie_value = 0;  
  }
  if(cookie_value == 1){
	console.log("consent");
    //enable tracking
	window['ga-disable-UA-158646461-1'] = false;
	//track this pageview
	gtag('config', 'UA-158646461-1', { 'anonymize_ip': true });	  
  } else {
    console.log("no consent");
  }
 
})();