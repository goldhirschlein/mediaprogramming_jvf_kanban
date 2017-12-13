// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require_tree .

function showTask(task, id) {
  var parent = task.parentElement;
  var x = parent.querySelector("#task-content-" + id);

  if(x != null){
    if (x.style.display === "none") {
      console.log("show task " + id);
      x.style.display = "table-row";
    } else {
      console.log("hide task " + id);
      x.style.display = "none";
    }
  } else {
    console.log("couldn't find task content");
  }
}
