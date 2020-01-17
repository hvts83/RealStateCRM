$(document).ready(function() {
    $('button.hh').click(function() {
        $(".hh_facebook").toggleClass("skjul vis");
        $(".hg_facebook").removeClass("vis").addClass("skjul");
});
});



$(document).ready(function() {
    $('button.hg').click(function() {
        $(".hg_facebook").toggleClass("skjul vis");
        $(".hh_facebook").removeClass("vis").addClass("skjul");
});
});

