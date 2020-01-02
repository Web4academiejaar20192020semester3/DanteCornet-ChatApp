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
        { to: rec + "@ucll.be", message: message },
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
        data: {Person2: rec +"@ucll.be"},
        success: function(json){

            $(json).each(function(index, chat) {
                $('.'+rec+'d').empty()

                console.log(chat.length)
                console.log(chat.messages.length);
                for(var i = 0; i < chat.messages.length; i++ ){
                    $('.'+rec+'d').append($('<p />').text(chat.messages[i].message));
                }
                setTimeout(getMessages(rec), 10000);
            })
        },
        error: function() {
            setTimeout(getMessages(rec), 10000);
        }
    });

}
