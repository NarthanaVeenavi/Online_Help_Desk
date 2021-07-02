/**
 * 
 */
var modal = document.getElementById('reset')

window.onclick = function(event)
    {
        if(event.target == loginbackground)
        {
            loginbackground.style.display ="none";
        }
    }

    function pwVisibility(){
        var x = document.getElementsByClassName("eyereset");
        var y = document.getElementById("resetpw1");
        if(y.type === "password"){
            y.type = "text";
        }
        else{
            y.type = "password";
        }
    } 

    function passwVisibility(){
        var x = document.getElementsByClassName("eyereset");
        var y = document.getElementById("resetpw2");
        if(y.type === "password"){
            y.type = "text";
        }
        else{
            y.type = "password";
        }
    }

    function enablebutton(){
        if(document.getElementById("rscheckBox").checked){
        document.getElementById("resetbtn").disabled = false;
        }
        else{
        document.getElementById("resetbtn").disabled = true;
        }
    } 