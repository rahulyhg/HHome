$(document).ready(function () {
    $('#rbtnUserType').click(function () {
        debugger;
        var selectedVal = "";
        var selected = $("#rbtnUserType input[type='radio']:checked");
        if (selected.length > 0) {
            selectedVal = selected.val();
            alert(selectedVal);
        }
    });

    $("p").click(function () {
        $(this).hide();
    });
});