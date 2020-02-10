$(document).on('change', '.meal_select', '', (element) => {
    let id = '#' + element.target.id; // html id
    let value = element.target.value; //db id
    console.log(element);
    //$(id).parents('.nested-fields').children('.price-td').children('.price').val(value)
    $.ajax({
        type: "GET",
        url:    "/meals/" + value + ".json", // should be mapped in routes.rb
        datatype:"json", // check more option
        success: function(data) {
            $(id).parents('.nested-fields').children('.price-td').children('.price').val(data['price'])
        },
        async:   true
    });
});