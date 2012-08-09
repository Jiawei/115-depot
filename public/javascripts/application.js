// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults


function addToCart(user){
	if( typeof(user) == "undefined" ){
		document.getElementById("login_suggest").className = "suggest play";
		var url = window.location.href;
		var language = url.substr(url.lastIndexOf('/')+1, 2);
		if( language != "en" || language != "es"){
			language ="en";
		}
		setTimeout(function(){window.location.href = "login?locale="+language;},3000);
	}
}
