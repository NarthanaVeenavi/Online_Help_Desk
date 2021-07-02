function passwordVisibility(){
    var x = document.getElementsByClassName("eye1");
    var y = document.getElementById("pwd");
    if(y.type === "password"){
        y.type = "text";
    }
    else{
        y.type = "password";
    }
}
function enableButton(){
    if(document.getElementById("checkBox1").checked){
    document.getElementById("submitBu").disabled = false;
    }
    else{
    document.getElementById("submitBu").disabled = true;
    }
} 

function checkPassword(){
    if(document.getElementById("resetpw1").value != document.getElementById("resetpw2").value)
    {
        alert("Password mismatched!");
        return false;
    }  
    else{
        alert("Success!");
        return true;
    }
}