// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
function $(id){
	return document.getElementById(id);	
}

function addToCart(user){
	if( typeof(user) == "undefined" ){
		$("login_suggest").ClassNames = "suggest play";
		url = window.location.href;
		var language = url.substr( url.lastIndexOf("/")+1, 2);
		setTimeout(function(){window.location.href="login?locale="+language+"&backurl="+window.location.href;}, 2000)
	}
}

//get parameter from current url
function getParam(paramName)
{
	paramValue = "";
	isFound = false;
	if (this.location.search.indexOf("?") == 0 && this.location.search.indexOf("=")>1){
		arrSource = unescape(this.location.search).substring(1,this.location.search.length).split("&");
		i = 0;
		while (i < arrSource.length && !isFound){
			if (arrSource[i].indexOf("=") > 0){
				if (arrSource[i].split("=")[0].toLowerCase()==paramName.toLowerCase()){
					paramValue = arrSource[i].split("=")[1];
					isFound = true;
				}
			}
			i++;
		}   
	}
	return paramValue;
}