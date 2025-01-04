//Cookies

function novenaGo(novenaName, newnumber, maxPeriod) {
	
	var today = new Date().toLocaleDateString("en-US");
	var lastdate = today;
	var lastnumber = getCookie(novenaName + "lastnumber");
	
	var num = Number(newnumber);
	num = num + 0;
	if(num > maxPeriod) {
		num = 1;
	}
	
	lastnumber = num;
	
	setCookie(novenaName + "lastdate", lastdate, 7);
	setCookie(novenaName + "lastnumber", lastnumber, 7);		
	
	return lastnumber;

}

function novenaSkip(novenaName, maxPeriod) {
	
	var today = new Date().toLocaleDateString("en-US");
	var lastdate = today;
	var lastnumber = getCookie(novenaName + "lastnumber");
	
	var num = Number(lastnumber);
	num = num + 1;
	if(num > maxPeriod) {
		num = 1;
	}
	
	lastnumber = num;
	
	setCookie(novenaName + "lastdate", lastdate, 7);
	setCookie(novenaName + "lastnumber", lastnumber, 7);		

	return lastnumber;
}

function novenaBack(novenaName, maxPeriod) {
	
	var today = new Date().toLocaleDateString("en-US");
	var lastdate = today;
	var lastnumber = getCookie(novenaName + "lastnumber");
	
	var num = Number(lastnumber);
	num = num - 1;
	if(num < 1) {
		num = maxPeriod;
	}

	if(num > maxPeriod) {
		num = 1;
	}
	
	lastnumber = num;
	
	setCookie(novenaName + "lastdate", lastdate, 7);
	setCookie(novenaName + "lastnumber", lastnumber, 7);		

	return lastnumber;
}



function novenaNumber(novenaName, maxPeriod) {
	var today = new Date().toLocaleDateString("en-US");
	var lastdate = getCookie(novenaName + "lastdate");
	var lastnumber = getCookie(novenaName + "lastnumber");
	
	if (lastnumber == "" ) {
		lastdate = today;
		lastnumber = 1;
		setCookie(novenaName + "lastdate", lastdate, 7);
		setCookie(novenaName + "lastnumber", lastnumber, 7);
	}
	
	if (today != lastdate) {
		lastdate = today;
		var num = Number(lastnumber);
		num = num + 1;
		if(num > maxPeriod) {
			num = 1;
		}
		
		lastnumber = num;
		
		setCookie(novenaName + "lastdate", lastdate, 7);
		setCookie(novenaName + "lastnumber", lastnumber, 7);		

	}
	
	return lastnumber;
}




function setCookie(cname, cvalue, exdays) {
  const d = new Date();
  d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
  let expires = "expires="+d.toUTCString();
  document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
}

function getCookie(cname) {
  let name = cname + "=";
  let ca = document.cookie.split(';');
  for(let i = 0; i < ca.length; i++) {
    let c = ca[i];
    while (c.charAt(0) == ' ') {
      c = c.substring(1);
    }
    if (c.indexOf(name) == 0) {
      return c.substring(name.length, c.length);
    }
  }
  return "";
}