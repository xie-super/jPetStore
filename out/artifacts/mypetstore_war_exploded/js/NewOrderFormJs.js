var tabNavItem = document.querySelectorAll(".tab-nav>li");
var tabNavActive = document.querySelector(".tabNav-active");

var tabBoxItem = document.querySelectorAll(".tabBox");
var tabBoxActive = document.getElementById("PaymentDetails");
for(let i = 0;i < tabNavItem.length;i++){
    tabNavItem[i].onmouseenter = function () {
        tabNavActive.className = "";
        this.className = "tabNav-active";
        tabNavActive = this;

        tabBoxActive.id="";
        tabBoxItem[i].id = "PaymentDetails";
        tabBoxActive = tabBoxItem[i];
    }
}

$(document).ready(function () {
    $("#newOrderForm").submit(function () {
        var cardNumber = document.getElementById("cardNumber").value;
        var firstName = document.getElementById("firstName").value;
        var lastName = document.getElementById("lastName").value;
        var phone = document.getElementById("phone").value;

        if(cardNumber === "" || firstName === "" || lastName === "" || phone === ""){
            console.info("错误");
            alert("请将前两栏基本信息填写完整");
            return false;
        }
        else
            return true;
    })
})