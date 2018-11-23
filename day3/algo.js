





let x = new function(callback) {
    var y = "algo";

    setTimeout( callback(),1);
}

x(function(){
    print(y);
});