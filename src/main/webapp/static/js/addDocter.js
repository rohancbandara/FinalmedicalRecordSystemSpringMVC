$(document).ready(function(){
	
	
})

function docterRegister(d_id){
	
	
}

function clearFileds(){

	$('#txtFname').val('');
	$('#txtEmail').val('');
	$('#txtLname').val('');
	
	
}

function registerEmployee() {
	
	var email = $('#txtEmail').val();
	var name = $('#txtName').val();
	var add = $('#txtAdd').val();
	var tel = $('#txtTel').val();
	
	
	var requestObj = {
			
			"email":email,
			"name":name,
			"address":add,
			"telephone":tel,
			
		}
	
	$.ajax({ 
	    url: '/saveEmployee',    
	    type: "POST", 
	    headers: { 
	        'Accept': 'application/json', 
	        'Content-Type': 'application/json' 
	    },
	    dataType:"json",
	    data: JSON.stringify(requestObj), //Stringified JSON Object

	    success: function(data) {  
	    	if(!data.success) {
	    		alert(data.statusList);	
	    	} else {
	    		
	    		alert("Successfully Registered.")
	    		clearFileds();
	    		
	    	}  
	    },
	    error: function(data){
	    	console.log(data.success);
	    }
	});
}