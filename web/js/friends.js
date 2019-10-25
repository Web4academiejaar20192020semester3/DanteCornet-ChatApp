var submit = document.getElementById("friend")
submit.onclick = addFriend;

var xHRObject = new XMLHttpRequest();
var xHR2 = new XMLHttpRequest();

function addFriend () {
    var newFriend = document.getElementById("newStatus").value;
    // encodeURIComponent om UTF-8 te gebruiken en speciale karakters om te zetten naar code
    var information = "newStatus=" + encodeURIComponent(newFriend);
    xHR2.open("POST", "Controller?action=addFriend", true);
    // belangrijk dat dit gezet wordt anders kan de servlet de informatie niet interpreteren!!!
    // protocol header information
    xHR2.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
    xHR2.send(information); // quote=XXX
    getFriends();
}

function getFriends() {
    xHRObject.open("GET", "Controller?action=ShowFriends", true);
    xHRObject.onreadystatechange = getFriendsData;
    xHRObject.send(null);
}

function getFriendsData () {
    if (xHRObject.status == 200) {
        if (xHRObject.readyState == 4) {
            var serverResponse = JSON.parse(xHRObject.responseText);
            var friends = serverResponse; // of je kan ook doen: serverResponse["quote"]
            var friendsDiv = document.getElementById("friends");
            var tablerow = friendsDiv.childNodes[0];
            var footerWrap = document.getElementById("footer")
            var footer = footerWrap.childNodes[0];
            footer = document.createElement('p');


            var arrayLength = friends.length;
            var offlinefriends = 0;
            var onlinefriends = arrayLength;

            for (var i = 0; i < arrayLength; i++) {
                if(friends[i].status != "offline"){
                    offlinefriends++;
                    onlinefriends--;
                }
                if (tablerow == null) {
                    tablerow = document.createElement('tr');
                    var tableColumn = tablerow.childNodes[i];

                    tableColumn = document.createElement('td');
                    var userid = document.createTextNode(friends[i].userId+"\n\r");
                    tablerow.id = friends[i].userId;
                    tableColumn.appendChild(userid);
                    tablerow.appendChild(tableColumn);

                    tableColumn = document.createElement('td');
                    var status = document.createTextNode(friends[i].status+"\n\r");
                    tableColumn.appendChild(status);
                    tablerow.appendChild(tableColumn);
                    friendsDiv.appendChild(tablerow);
                }
                else if(friends[i-1].userId == friends[i].userId){}
                else {
                    tablerow = document.createElement('tr');
                    var tableColumn = tablerow.childNodes[i];

                    tableColumn = document.createElement('td');
                    var userid = document.createTextNode(friends[i].userId+"\n\r");
                    tablerow.id = friends[i].userId;
                    tableColumn.appendChild(userid);
                    tablerow.appendChild(tableColumn);

                    tableColumn = document.createElement('td');
                    var status = document.createTextNode(friends[i].status+"\n\r");
                    tableColumn.appendChild(status);
                    tablerow.appendChild(tableColumn);
                    friendsDiv.appendChild(tablerow);
                }
            }

            var off = document.createTextNode("offline friends: " + offlinefriends);
            var on = document.createTextNode("  online friends: " + onlinefriends);
            footer.appendChild(off);
            footer.appendChild(on);
            footerWrap.appendChild(footer);



            //setInterval(getStatus, 2000);
        }
    }}

function friendSelect(){
    if (xHRObject.status == 200) {
        if (xHRObject.readyState == 4) {
            var serverResponse = JSON.parse(xHRObject.responseText);
            var friends = serverResponse; // of je kan ook doen: serverResponse["quote"]
            for (var i = 0; i < friends.length; i++) {
                document.getElementById(friends[i].userId).addEventListener("click", function () {
                    openForm(this.id);
                });
            }
        }}

}
