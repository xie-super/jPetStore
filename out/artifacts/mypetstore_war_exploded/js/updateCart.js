var xmlHttpRequest;
function createXMLHttpRequest()
{
    if (window.XMLHttpRequest) //非IE浏览器
    {
        xmlHttpRequest = new XMLHttpRequest();
    }
    else if (window.ActiveObject)//IE6以上版本的IE浏览器
    {
        xmlHttpRequest = new ActiveObject("Msxml2.XMLHTTP");
    }
    else //IE6及以下版本IE浏览器
    {
        xmlHttpRequest = new ActiveObject("Microsoft.XMLHTTP");
    }
}


$(".quantity").each(function () {
    $(this).on("blur",function () {
        ItemId=$(this).attr("id");

        var quantity=document.getElementById(ItemId).value;
        console.log(quantity);
        sendRequest("updateCartJSServlet?quantity="+quantity+"&itemId="+ItemId);
    });
});
/*function  updateCart() {


    //console.log($(".quantity").attr("id"));
    var productQuantity="quantity";
    console.log(ItemId);



}*/
function  sendRequest(url){

    createXMLHttpRequest();
    xmlHttpRequest.open("GET",url,true);
    xmlHttpRequest.onreadystatechange=processResponse;
    xmlHttpRequest.send(null);
}
function processResponse() {
    if(xmlHttpRequest.readyState==4)
        if(xmlHttpRequest.status==200)
        {
            var resp=xmlHttpRequest.responseText;
            var array=resp.split(",");

            var productQuantity="quantity";
            var quantity=document.getElementById(ItemId);
            var productTotal="total"+ItemId;
            var total=document.getElementById(productTotal);
            var productSubTotal="subtotal";
            var subtotal=document.getElementById(productSubTotal);

            quantity.innerText=array[0];
            total.innerText=array[1];
            subtotal.innerText=array[2];
        }

}