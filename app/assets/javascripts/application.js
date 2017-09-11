// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require turbolinks
//= require jquery_ujs
//= require_tree .
function set_value(element){
  var id = element.id.substring(0,element.id.indexOf("_"))+element.id.substring(element.id.lastIndexOf("_"),element.id.length)+element.id.substring(element.id.indexOf("_"),element.id.lastIndexOf("_"));
  if(element.id.substring(element.id.lastIndexOf("_"),element.id.length) != element.id.substring(element.id.indexOf("_"),element.id.lastIndexOf("_"))){
    var x = document.getElementById(id);
    var num = 1/element.value;
    var num2 = Math.trunc(num*1000)/1000;
    if(num2 > 1){
      num2 = num2.toFixed(1);
    }
    if(num == "1"){
      num2 = "1.0";
    }
    x.value = num2;
  }else{
    element.value = "1.0";
  }
 }
