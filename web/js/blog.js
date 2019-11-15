var webSocket;
var messages;
function openSocket(){
    if(webSocket == null){
    webSocket = new WebSocket("ws://localhost:8080/echo");
    }
    webSocket.onopen = function(event){
        // writeResponse("Connection opened")

    };

    webSocket.onmessage = function(event){
        writeResponse(event.data);
    };

    webSocket.onclose = function(event){
        writeResponse("Connection closed");
    };
}

function send(i){

    var text = document.getElementById("name"+i).value;
    text += " wrote: " + document.getElementById("messageinput"+i).value;
    text += ". Rating: " + document.getElementById("rating"+i).value;
    messages = document.getElementById("messages"+i);
    openSocket()
    webSocket.send(text);
}

function closeSocket(){
    webSocket.close();
}

function writeResponse(text){
    messages.innerHTML += "<br/>" + text;
}