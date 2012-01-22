
function jqmSimpleMessage(message) {
    $("<div class='ui-loader ui-overlay-shadow ui-body-b ui-corner-all'><h1>" + message + "</h1></div>")
        .css({
            display: "block",
            opacity: 1,
            top: window.pageYOffset+100,
            background: "#FFFFC0"

        })
        .appendTo("body").delay(1200)
        .fadeOut(1000, function(){
            $(this).remove();
        });
}

  function countChecked() {
    var n = $("input:checked").length;
    if (n == 5) {
      $('input:checkbox').not(':checked').attr('disabled','true').parent().css("opacity", ".4");
    }
    else if (n < 5)
      $('input:checkbox').removeAttr('disabled').parent().css("opacity", "1");
  }

  function check() {
    var n = $("input:checked").length;
    if ($("#location").val() == 0) {
      jqmSimpleMessage("You must choose a location!");
      return false;
    }
    else if ($("#time").val() == 0){
      jqmSimpleMessage("You must choose a pickup time!");
      return false;
    }
    else if (n == 0) {
      jqmSimpleMessage("You must choose at least one item!");
      return false;
    }
    else
      return true;
  }



function hideall1() {
  $("#dressing1").hide();
  $("#bread1").hide();
  $("#cheese1").hide();
}

function hideall2() {
  $("#dressing2").hide();
  $("#bread2").hide();
  $("#cheese2").hide();
}

function update1() {
        hideall1();
        if ($('#entree1').val() == "Chef%27s%2BSalad") {
            $("#dressing1").slideToggle();
            jqmSimpleMessage("Note: The Chef's Salad counts as two entrees. If you order the Chef Salad, other salads or sandwiches will be ignored.")
        }
        if ($('#entree1').val() == "Turkey") {
            $("#bread1").slideToggle();
            $("#cheese1").slideToggle();
        }
        if ($('#entree1').val() == "Chicken%2BSalad") {
            $("#bread1").slideToggle();
            $("#cheese1").slideToggle();
        }
        if ($('#entree1').val() == "Ham") {
            $("#bread1").slideToggle();
            $("#cheese1").slideToggle();
        }
        if ($('#entree1').val() == "Tuna%2BSalad") {
            $("#bread1").slideToggle();
            $("#cheese1").slideToggle();
        }

        if ($('#entree1').val() == "Egg%2BSalad") {
            $("#bread1").slideToggle();
            $("#cheese1").slideToggle();
        }

        if ($('#entree1').val() == "PB%26J") {
            $("#bread1").slideToggle();
        }

        if ($('#entree1').val() == "Gluten-Free%2BSandwich") {
            $("#cheese1").slideToggle();
        }

        if ($('#entree1').val() == "3-Cheese") {
            $("#bread1").slideToggle();
        }


        if ($('#entree1').val() == "Side%2BSalad") {
            $("#dressing1").slideToggle();
        }

        if ($('#entree1').val() == "Gluten-Free%2BSalad") {
            $("#dressing1").slideToggle();
        }
      }


function update2() {
        hideall2();
        if ($('#entree2').val() == "Chef%27s%2BSalad") {
            $("#dressing2").slideToggle();
            jqmSimpleMessage("Note: The Chef's Salad counts as two entrees. If you order the Chef Salad, other salads or sandwiches will be ignored.")
        }
        if ($('#entree2').val() == "Turkey") {
            $("#bread2").slideToggle();
            $("#cheese2").slideToggle();
        }
        if ($('#entree2').val() == "Chicken%2BSalad") {
            $("#bread2").slideToggle();
            $("#cheese2").slideToggle();
        }
        if ($('#entree2').val() == "Ham") {
            $("#bread2").slideToggle();
            $("#cheese2").slideToggle();
        }
        if ($('#entree2').val() == "Tuna%2BSalad") {
            $("#bread2").slideToggle();
            $("#cheese2").slideToggle();
        }

        if ($('#entree2').val() == "Egg%2BSalad") {
            $("#bread2").slideToggle();
            $("#cheese2").slideToggle();
        }

        if ($('#entree2').val() == "PB%26J") {
            $("#bread2").slideToggle();
        }

        if ($('#entree2').val() == "Gluten-Free%2BSandwich") {
            $("#cheese2").slideToggle();
        }

        if ($('#entree2').val() == "3-Cheese") {
            $("#bread2").slideToggle();
        }


        if ($('#entree2').val() == "Side%2BSalad") {
            $("#dressing2").slideToggle();
        }

        if ($('#entree2').val() == "Gluten-Free%2BSalad") {
            $("#dressing2").slideToggle();
        }
      }

function checklunch() {
  if (($("#entree1").val() == "none") && ($("#entree2").val() == "none")) {
    jqmSimpleMessage("You must select an entree!");
    return false;
  }
  if ($("#location").val() == 0) {
      jqmSimpleMessage("You must choose a location!");
      return false;
    }
    else if ($("#time").val() == 0){
      jqmSimpleMessage("You must choose a pickup time!");
      return false;
    }
    else return true;
}


$(document).ready(function() {
  hideall1();
  hideall2();
  $("#entree1").change(update1);
  $("#entree2").change(update2);
  $(":checkbox").click(countChecked);
  $("#main").live('submit', function(e) { e.preventDefault(); e.stopPropagation(); return check(); });

  })
