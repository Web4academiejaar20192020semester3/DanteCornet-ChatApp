<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:h="http://xmlns.jcp.org/jsf/html"
      xmlns:ui="http://xmlns.jcp.org/jsf/facelets"
      xmlns:f="http://xmlns.jcp.org/jsf/core">

<head>
    <jsp:include page="head.jsp">
        <jsp:param name="title" value="Blog" />
    </jsp:include>
</head>
<body>
<jsp:include page="header.jsp">
    <jsp:param name="title" value="Chat" />
</jsp:include>
<main>
    <div class="media">
        <img class="d-flex rounded-circle avatar z-depth-1-half mr-3" src="https://mdbootstrap.com/img/Photos/Avatars/avatar-5.jpg"
             alt="Avatar">
        <div class="media-body">
            <h5 class="mt-0 font-weight-bold blue-text">Anna Smith</h5>
            Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus
            odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate
            fringilla. Donec lacinia congue felis in faucibus.

            <div class="media mt-3 shadow-textarea">
                <img class="d-flex rounded-circle avatar z-depth-1-half mr-3" src="https://mdbootstrap.com/img/Photos/Avatars/avatar-8.jpg"
                     alt="Generic placeholder image">
                <div class="media-body">
                    <h5 class="mt-0 font-weight-bold blue-text">Danny Tatuum</h5>
                    <div class="form-group basic-textarea rounded-corners">
                        <div id="messages0"></div>
                            <div class="form-row">
                                <div class="form-group col-md-6"><input class="form-control " id="name0"  placeholder="Your name..."></div>
                                <div class="form-group col-md-6"><input class="form-control " type="integer" id="rating0" placeholder="Rating"></div>
                            </div>
                        <input class="form-control " id="messageinput0" rows="3" placeholder="Write your comment...">
                            <button type="button" onclick="openSocket();" >Open</button>
                            <button type="button" onclick="send(0);" >Send</button>
                            <button type="button" onclick="closeSocket();" >Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="media">
        <img class="d-flex rounded-circle avatar z-depth-1-half mr-3" src="https://mdbootstrap.com/img/Photos/Avatars/avatar-10.jpg"
             alt="Avatar">
        <div class="media-body">
            <h5 class="mt-0 font-weight-bold blue-text">Caroline Horwitz</h5>
            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis odit minima eaque dignissimos recusandae
            officiis commodi nulla est, tempore atque voluptas non quod maxime, iusto, debitis aliquid? Iure ipsum,
            itaque.

            <div class="media mt-3 shadow-textarea">
                <img class="d-flex rounded-circle avatar z-depth-1-half mr-3" src="https://mdbootstrap.com/img/Photos/Avatars/avatar-8.jpg"
                     alt="Generic placeholder image">
                <div class="media-body">
                    <h5 class="mt-0 font-weight-bold blue-text">Danny Tatuum</h5>
                    <div class="form-group basic-textarea rounded-corners">
                        <div id="messages1"></div>
                        <div class="form-row">
                            <div class="form-group col-md-6"><input class="form-control " id="name1"  placeholder="Your name..."></div>
                            <div class="form-group col-md-6"><input class="form-control " type="integer" id="rating1" placeholder="Rating"></div>
                        </div>
                        <input class="form-control " id="messageinput1" rows="3" placeholder="Write your comment...">
                        <button type="button" onclick="openSocket();" >Open</button>
                        <button type="button" onclick="send(1);" >Send</button>
                        <button type="button" onclick="closeSocket();" >Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
        <div class="media">
        <img class="d-flex rounded-circle avatar z-depth-1-half mr-3" src="https://mdbootstrap.com/img/Photos/Avatars/avatar-10.jpg"
             alt="Avatar">
        <div class="media-body">
            <h5 class="mt-0 font-weight-bold blue-text">Caroline Horwitz</h5>
            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis odit minima eaque dignissimos recusandae
            officiis commodi nulla est, tempore atque voluptas non quod maxime, iusto, debitis aliquid? Iure ipsum,
            itaque.

            <div class="media mt-3 shadow-textarea">
                <img class="d-flex rounded-circle avatar z-depth-1-half mr-3" src="https://mdbootstrap.com/img/Photos/Avatars/avatar-8.jpg"
                     alt="Generic placeholder image">
                <div class="media-body">
                    <h5 class="mt-0 font-weight-bold blue-text">Danny Tatuum</h5>
                    <div class="form-group basic-textarea rounded-corners">
                        <div id="messages2"></div>
                        <div class="form-row">
                            <div class="form-group col-md-6"><input class="form-control " id="name2"  placeholder="Your name..."></div>
                            <div class="form-group col-md-6"><input class="form-control " type="integer" id="rating2" placeholder="Rating"></div>
                        </div>
                        <input class="form-control " id="messageinput2" rows="3" placeholder="Write your comment...">
                        <button type="button" onclick="openSocket();" >Open</button>
                        <button type="button" onclick="send(2);" >Send</button>
                        <button type="button" onclick="closeSocket();" >Close</button>
                    </div>
                </div>
            </div>
    </div>
        </div>
    </div>
    <div class="media">
        <img class="d-flex rounded-circle avatar z-depth-1-half mr-3" src="https://mdbootstrap.com/img/Photos/Avatars/avatar-10.jpg"
             alt="Avatar">
        <div class="media-body">
            <h5 class="mt-0 font-weight-bold blue-text">Caroline Horwitz</h5>
            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis odit minima eaque dignissimos recusandae
            officiis commodi nulla est, tempore atque voluptas non quod maxime, iusto, debitis aliquid? Iure ipsum,
            itaque.

            <div class="media mt-3 shadow-textarea">
                <img class="d-flex rounded-circle avatar z-depth-1-half mr-3" src="https://mdbootstrap.com/img/Photos/Avatars/avatar-8.jpg"
                     alt="Generic placeholder image">
                <div class="media-body">
                    <h5 class="mt-0 font-weight-bold blue-text">Danny Tatuum</h5>
                    <div class="form-group basic-textarea rounded-corners">
                        <div id="messages3"></div>
                        <div class="form-row">
                            <div class="form-group col-md-6"><input class="form-control " id="name3"  placeholder="Your name..."></div>
                            <div class="form-group col-md-6"><input class="form-control " type="integer" id="rating3" placeholder="Rating"></div>
                        </div>
                        <input class="form-control " id="messageinput3" rows="3" placeholder="Write your comment...">
                        <button type="button" onclick="openSocket();" >Open</button>
                        <button type="button" onclick="send(3);" >Send</button>
                        <button type="button" onclick="closeSocket();" >Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div><div class="media">
        <img class="d-flex rounded-circle avatar z-depth-1-half mr-3" src="https://mdbootstrap.com/img/Photos/Avatars/avatar-10.jpg"
             alt="Avatar">
        <div class="media-body">
            <h5 class="mt-0 font-weight-bold blue-text">Caroline Horwitz</h5>
            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis odit minima eaque dignissimos recusandae
            officiis commodi nulla est, tempore atque voluptas non quod maxime, iusto, debitis aliquid? Iure ipsum,
            itaque.

            <div class="media mt-3 shadow-textarea">
                <img class="d-flex rounded-circle avatar z-depth-1-half mr-3" src="https://mdbootstrap.com/img/Photos/Avatars/avatar-8.jpg"
                     alt="Generic placeholder image">
                <div class="media-body">
                    <h5 class="mt-0 font-weight-bold blue-text">Danny Tatuum</h5>
                    <div class="form-group basic-textarea rounded-corners">
                        <div id="messages4"></div>
                        <div class="form-row">
                            <div class="form-group col-md-6"><input class="form-control " id="name4"  placeholder="Your name..."></div>
                            <div class="form-group col-md-6"><input class="form-control " type="integer" id="rating4" placeholder="Rating"></div>
                        </div>
                        <input class="form-control " id="messageinput4" rows="3" placeholder="Write your comment...">
                        <button type="button" onclick="openSocket();" >Open</button>
                        <button type="button" onclick="send(4);" >Send</button>
                        <button type="button" onclick="closeSocket();" >Close</button>
                    </div>
                </div>
            </div>
        </div>
</div>
    <div class="media">
        <img class="d-flex rounded-circle avatar z-depth-1-half mr-3" src="https://mdbootstrap.com/img/Photos/Avatars/avatar-10.jpg"
             alt="Avatar">
        <div class="media-body">
            <h5 class="mt-0 font-weight-bold blue-text">Caroline Horwitz</h5>
            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis odit minima eaque dignissimos recusandae
            officiis commodi nulla est, tempore atque voluptas non quod maxime, iusto, debitis aliquid? Iure ipsum,
            itaque.

            <div class="media mt-3 shadow-textarea">
                <img class="d-flex rounded-circle avatar z-depth-1-half mr-3" src="https://mdbootstrap.com/img/Photos/Avatars/avatar-8.jpg"
                     alt="Generic placeholder image">
                <div class="media-body">
                    <h5 class="mt-0 font-weight-bold blue-text">Danny Tatuum</h5>
                    <div class="form-group basic-textarea rounded-corners">
                        <div id="messages5"></div>
                        <div class="form-row">
                            <div class="form-group col-md-6"><input class="form-control " id="name5"  placeholder="Your name..."></div>
                            <div class="form-group col-md-6"><input class="form-control " type="integer" id="rating5" placeholder="Rating"></div>
                        </div>
                        <input class="form-control " id="messageinput5" rows="3" placeholder="Write your comment...">
                        <button type="button" onclick="openSocket();" >Open</button>
                        <button type="button" onclick="send(5);" >Send</button>
                        <button type="button" onclick="closeSocket();" >Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div><div class="media">
        <img class="d-flex rounded-circle avatar z-depth-1-half mr-3" src="https://mdbootstrap.com/img/Photos/Avatars/avatar-10.jpg"
             alt="Avatar">
        <div class="media-body">
            <h5 class="mt-0 font-weight-bold blue-text">Caroline Horwitz</h5>
            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis odit minima eaque dignissimos recusandae
            officiis commodi nulla est, tempore atque voluptas non quod maxime, iusto, debitis aliquid? Iure ipsum,
            itaque.

            <div class="media mt-3 shadow-textarea">
                <img class="d-flex rounded-circle avatar z-depth-1-half mr-3" src="https://mdbootstrap.com/img/Photos/Avatars/avatar-8.jpg"
                     alt="Generic placeholder image">
                <div class="media-body">
                    <h5 class="mt-0 font-weight-bold blue-text">Danny Tatuum</h5>
                    <div class="form-group basic-textarea rounded-corners">
                        <div id="messages6"></div>
                        <div class="form-row">
                            <div class="form-group col-md-6"><input class="form-control " id="name6"  placeholder="Your name..."></div>
                            <div class="form-group col-md-6"><input class="form-control " type="integer" id="rating6" placeholder="Rating"></div>
                        </div>
                        <input class="form-control " id="messageinput6" rows="3" placeholder="Write your comment...">
                        <button type="button" onclick="openSocket();" >Open</button>
                        <button type="button" onclick="send(6);" >Send</button>
                        <button type="button" onclick="closeSocket();" >Close</button>
                    </div>
                </div>
            </div>
    </div>
    </div>
</main>

<script type="text/javascript" src="js/blog.js"></script>

</body>
</html>