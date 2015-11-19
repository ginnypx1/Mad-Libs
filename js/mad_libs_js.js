// DEFAULT GAME VARIABLES
var word1 = "Goldilocks";
var word2 = "bear";
var word3 = "forest";
var word4 = "porridge";
var word5 = "hot";
var word6 = "cold";
var word7 = "chairs";
var word8 = "tall";
var word9 = "short";
var word10 = "bed";
var word11 = "soft";
var word12 = "hard";

// TELL THE STORY
function tellStory() {
    // add the title
    $("h1").text(word1.toUpperCase() + " & THE 3 " + word2.toUpperCase() + "S");
    $(".word1").append(word1);
    $(".word2").append(word2);
    $(".word3").append(word3);
    $(".word4").append(word4);
    $(".word5").append(word5);
    $(".word6").append(word6);
    $(".word7").append(word7);
    $(".word8").append(word8);
    $(".word9").append(word9);
    $(".word10").append(word10);
    $(".word11").append(word11);
    $(".word12").append(word12);
}; // end function tellStory

// SUBMIT THE FORM TO TELL THE STORY
$("#tell-story").click(function () {
    word1 = $("#input1:text").val();
    word2 = $("#input2:text").val();
    word3 = $("#input3:text").val();
    word4 = $("#input4:text").val();
    word5 = $("#input5:text").val();
    word6 = $("#input6:text").val();
    word7 = $("#input7:text").val();
    word8 = $("#input8:text").val();
    word9 = $("#input9:text").val();
    word10 = $("#input10:text").val();
    word11 = $("#input11:text").val();
    word12 = $("#input12:text").val();
    $("#form").hide();
    $("#tell-story").hide();
    tellStory();
    $("#play-again").show();
    $("#story").show();
    $("h1").css("font-size", "8em");
    $(".right-story").css("min-height", "1500px");
    $(function() {
        $('.left-form').matchHeight({
            target: $('.right-story')
        });
    });
}); // end function submit-form

$("#play-again").click(function() {
    location.reload(true);
}); // end click function