var loadJSON = function (event,s1){
	event.stopPropagation();
	if(s1.value != ""){
		var $drug_info = $('#drug_info');
		$.ajax({
			type: 'POST',
			url: '/show_drug_ByCategory/'+s1.value,
			success: function(event,s1,response){
				$('#display').html(" ")
				ans = eval(response.responseText)
				$('#display').append("<tr><td>id</td>"+"<td>name</td>"+"<td>quantity</td>"+"<td>price</tr>");
				for (i = 0; i < ans.length; i++) { 
    				$('#display').append("<tr><td>"+ans[i].id+"</td>"+"<td>"+ans[i].name+"</td>"+"<td>"+ans[i].quantity+"</td>"+"<td>"+ans[i].price+"</td>");

		    }
			}
		});
	}
	else
		alert("please select atleast one value");
}