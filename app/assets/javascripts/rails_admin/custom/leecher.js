$(document).on("click", ".btn.btn-primary", function(){  
  var trans_id = document.getElementById('order_transaction_id').value
  var user_id = document.getElementById('order_user_id').value
  var remember = document.getElementById('order_status');
  if (remember.checked){
  	data = "checked"
  	id= user_id
    transaction_id= trans_id
  }else{
  	data = "unchecked"
  	id= user_id
    transaction_id= trans_id
  }
  $.ajax({
        url : "/preorder",
        type : "post",
        data : { 'data' : data, 'id' : user_id, 'transaction_id' : trans_id }
    });
});


 