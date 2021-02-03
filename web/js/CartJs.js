var items = document.getElementsByClassName("cartSelect");


var xhr;
function process() {
    if(xhr.readyState == 4){
        if(xhr.status == 200){
            console.info("成功");
            var str = xhr.responseText;
            var array = str.split(",");
            var listPrice = document.getElementById(array[2] + "Total");
            listPrice.innerHTML = "$" + array[0];
            var totalPrice = document.getElementById("totalPrice");
            totalPrice.innerHTML = "Sub Total:" + "$" + array[1];
        }
    }
}
for(var i = 0;i < items.length;i++) {
    items[i].onchange= function () {
        console.info("ww");
        xhr = new XMLHttpRequest();
        xhr.onreadystatechange = process;
        console.info("正在建立请求");
        xhr.open("GET","updateCart?itemId="+this.id+"&quantity="+this.value);
        xhr.send(null);
    };
}
