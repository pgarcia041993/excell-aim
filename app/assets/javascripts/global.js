$(document).ready(function (e) {

    $('.text-date').datepicker();

    $('#pay-close').click(function (e) {
        e.preventDefault();
        window.location.href = '/';
    });

    $('#diploma').change(function () {
        compute();
    });

    $('#trans').change(function () {
        compute();
    });
    $('#bcard').change(function () {
        compute();
    });
    $('#diploma').keyup(function () {
        compute();
    });
    $('#trans').keyup(function () {
        compute();
    });
    $('#bcard').keyup(function () {
        compute();
    });

    function compute() {
        var trans = 1000 * $('#trans').val();
        var bcard = 1000 * parseInt($('#bcard').val());
        var diploma = 1000 * parseInt($('#diploma').val());
        var total = trans + bcard + diploma;
        $('#total').val(total);
    }
})
