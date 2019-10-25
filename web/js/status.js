var submit = document.getElementById("submit")
submit.onclick = changeStatus;

var xHRObject = new XMLHttpRequest();
var xHR2 = new XMLHttpRequest();


function getStatus() {
    xHRObject.open("GET", "Controller?action=ShowStatus", true);
    xHRObject.onreadystatechange = getData;
    xHRObject.send(null);
}



function changeStatus () {
    var newStatus = document.getElementById("newStatus").value;
    // encodeURIComponent om UTF-8 te gebruiken en speciale karakters om te zetten naar code
    var information = "newStatus=" + encodeURIComponent(newStatus);
    xHR2.open("POST", "Controller?action=ChangeStatus", true);
    // belangrijk dat dit gezet wordt anders kan de servlet de informatie niet interpreteren!!!
    // protocol header information
    xHR2.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
    xHR2.send(information); // quote=XXX
    getStatus();
}

function getData () {
    if (xHRObject.status == 200) {
        if (xHRObject.readyState == 4) {
            var serverResponse = JSON.parse(xHRObject.responseText);
            var status = serverResponse.status;
            var statusDiv = document.getElementById("status");
            var statusParagraph = statusDiv.childNodes[0];

            if (statusParagraph == null) {
                statusParagraph = document.createElement('p');
                statusParagraph.id = "quoteText";
                var quoteText = document.createTextNode(status);
                statusParagraph.appendChild(quoteText);
                statusDiv.appendChild(statusParagraph);
            }
            else {
                var quoteText = document.createTextNode(status);
                statusParagraph.removeChild(statusParagraph.childNodes[0]);
                statusParagraph.appendChild(quoteText);
            }
            getFriends();

            //setInterval(getStatus, 2000);
        }
    }}


