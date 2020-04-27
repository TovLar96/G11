$(document).ready(function () {
	$("#GymMemberRegistration").validate({});
	$("#TrainingSessionRegistration").validate({		});
	$("#BookingRegistration").validate({		});
	$("#find").click( function() { 
		var strValue = $("#memberId").val(); 
		alert(strValue);
		if (strValue != "") { 
			$.ajax({
				type: 'GET', 
				url: "http://localhost:8080/GymProjectClient/GymMemberServlet/"+strValue,  
				error: ajaxFindReturnError,  
				success: ajaxFindReturnSuccess 
			})
				
		}
		$.ajax({
			method: "GET",
			url: "http://api.ipstack.com/194.47.249.17?access_key=d88d508efc896b6eb4b24f06724b8930", error: ajaxReturn_Error,
			success: ajaxReturn_Success
			})
			function ajaxReturn_Success(result, status, xhr) { ParseJsonFileWeather(result); }
			function ajaxReturn_Error(result, status, xhr) { console.log("Find ip-address: "+status);
			}
			});

			function ParseJsonFile(result) { 
			var lat = result.latitude;
			var long = result.longitude; 
			var city = result.city;
			var ipNbr = result.ip
			$("#city").text(city);
			$("#ipNbr").text(ipNbr);
			 }

			$.ajax({
			method: "GET", 
			url: "http://api.openweathermap.org/data/2.5/weather?lat="+lat+"&lon="+long+"&units= metric"+ "&APPID=f6acadbe8101f56f69b6f616a99403fa",
			error: ajaxWeatherReturn_Error,
			success: ajaxWeatherReturn_Success })
			function ajaxWeatherReturn_Success(result, status, xhr) { 
			var sunrise = result.sys.sunrise;
			var sunset = result.sys.sunset;
			var sunriseDate = new Date(sunrise*1000);
			var timeStrSunrise = sunriseDate.toLocaleTimeString(); 
			var sunsetDate = new Date(sunset*1000);
			var timeStrSunset = sunsetDate.toLocaleTimeString();
			$("#sunrise").text("Sunrise: "+timeStrSunrise); $("#sunset").text("Sunset: "+timeStrSunset);
			$("#weather").text(result.weather[0].main);
			$("#degree").text(result.main.temp+" \u2103"); }
			function ajaxWeatherReturn_Error(result, status, xhr) { alert("Error i OpenWeaterMap Ajax"); console.log("Ajax-find movie: "+status);
			}
	
	})//btnclick 
	$("#findAll").click( function() { 
	
			$.ajax({
				type: 'GET', 
				url: "http://localhost:8080/GymProjectClient/GymMemberServlet/",  
				error: ajaxFindReturnError,  
				success: ajaxFindReturnSuccess 
			})
				
		function ajaxFindReturnSuccess(result, status, xhr) {
			System.out.println("find all success");
			ParseJsonFileWeather(result); 
		} 
		function ajaxFindReturnError(result, status, xhr) { 
			alert("Error"); 
			console.log("Ajax-find movie: "+status); 
			}
		
	
	
	})//btnclick 
$("#DeleteByMemberId").click( function() {
	var strValue = $("#memberId").val();
	if (strValue != "") { 
		$.ajax({ 
			method: "DELETE",   
			url: "http://localhost:8080/GymProjectClient/GymMemberServlet/"+strValue,  
			error: ajaxDelReturnError,  
			success: ajaxDelReturnSuccess         
			})
			function ajaxDelReturnSuccess(result, status, xhr) { 
				$("#memberId").attr("placeholder","Movie deleted" );           
			} function ajaxDelReturnError(result, status, xhr) { 
				alert("Error"); 
				console.log("Ajax-find movie: "+status);
				}
			}
	})//btnclick
$("#CreateGymMember").click( function() {
	alert("create clicked");
	var strName = $("#name").val();
	var strAddress = $("#address").val();
	var strEmail = $("#email").val();
	var strPhoneNumber = $("#phoneNumber").val();
	var obj = { name: strName, address: strAddress, email: strEmail, phoneNumber: strPhoneNumber}; 
	var jsonString = JSON.stringify(obj); 
	
		$.ajax({
			type: "POST", 
			url: "http://localhost:8080/GymProjectClient/GymMemberServlet/",  
			data: jsonString, 
			dataType:'json', 
			error: ajaxAddReturnError,  
			success: ajaxAddReturnSuccess 
			}) 
		function ajaxAddReturnSuccess(result, status, xhr) {
			clearFields();
			$("#name").attr("placeholder","GymMember added" ); 
			} 
		function ajaxAddReturnError(result, status, xhr) {
			alert("Error Add"); 
			console.log("Ajax-find movie: "+status); 
			}

	})//btnclick
	$("#UpdateGymMember").click( function() { 
		var strMemberId = $("#memberId").val();
		var strName = $("#name").val();
		var strAddress = $("#address").val();
		var strEmail = $("#email").val();
		var strPhoneNumber = $("#phoneNumber").val();
		var obj = { name: strName, address: strAddress, email: strEmail, phoneNumber: strPhoneNumber}; 
		var jsonString = JSON.stringify(obj); 
		if (strMemberId != "") { 
			$.ajax({  
				type: "PUT", 
				url: "http://localhost:8080/GymProjectClient/GymMemberServlet/"+strMemberId,   
				data: jsonString,  
				dataType:'json',  
				error: ajaxUpdateReturnError,   
				success: ajaxUpdateReturnSuccess      
				})
			function ajaxUpdateReturnSuccess(result, status, xhr) { 
				clearFields(); 
				$("#name").attr("placeholder","GymMember updated" ); 
				}
			function ajaxUpdateReturnError(result, status, xhr) { 
				alert("Error Update");  
				console.log("Ajax-find movie: "+status); 
				}
			}
	})
function ParseJsonFileMovie(result) { 
	$("#name").val(result.name); 
	$("#address").val(result.address);
	$("#email").val(result.email); 
	$("#phoneNumber").val(result.phoneNumber);
	$("#memberId").val(result.memberId);
		   
		

	

}
function clearFields() { 
	$("#name").val(""); 
	$("#address").val("");
	$("#email").val(""); 
	$("#phoneNumber").val("");
	$("#memberId").val("");
}


