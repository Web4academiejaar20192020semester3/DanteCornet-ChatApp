var friends = document.getElementById("friends")
friends.onclick = friendSelect;

function openForm(id) {
    document.getElementById(id + "0").style.display = "block";
}

function closeForm(id) {
    document.getElementById(id + "0").style.display = "none";
}
function postMessages(rec) {
    var message = $("."+rec).val();
    $.post("Controller?action=Messaging",
        { to: rec, message: message },
        function (json) {
        /*var newText = $('<p />').text(json);
            $('.'+rec+'d').append(newText);*/
            getMessages(rec);
        }
        );
}

function getMessages(rec) {
    $.ajax({
        type: "GET",
        url: "Controller?action=GetMessages",
        dataType: "json",
        success: function(json){
            $(json).each(function(index, message) {
                alert(message);
                $('.'+rec+'d').append($('<p />').text(message));
                setTimeout(getMessages(rec), 10000);
            })
        },
        error: function() {
            alert("An error occurred  getting a new quote ...");
            setTimeout(getMessages(rec), 10000);
        }
    });
    
}