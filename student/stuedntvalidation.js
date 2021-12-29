function ValidateForm() {
    var first_name, last_name, gender, age;
    first_name = document.getElementById("txtfname").value;
    last_name = document.getElementById("txtlname").value;
    gender = document.getElementById("RadioButtonList1").value;
    age = document.getElementById("txtage").value;
    //EmailId = document.getElementById("txtmail").value;
    //emailExp = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([com\co\.\in])+$/; // to validate email id    
    if (first_name == '' && last_name == '' && gender == 0  && age == '' &&  {
        alert("Enter All Fields");
        return false;
    }
    if (first_name == '') {
        alert("Please Enter Your First Name");
        return false;
        }
    if (last_name == '') {
        alert("Please Enter Your Last Name");
        return false;
    }
    if (gender == 0) {
        alert("Please Select gender");
        return false;
    }
    if (gender == 0) {
        alert("Please Enter Your Age");
        return false;
    }
    
    return true;
}