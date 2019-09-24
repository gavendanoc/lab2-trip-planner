<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'trip.label', default: 'Trip')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-trip" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>


        <div class='container'>
            <h1 class="display-4">Find your Trip</h1>
        <!-- -------------------------     --->
            <form action="find" method="GET">

                <div class="form-group col-sm-6">
                    <label for="exampleInputEmail1">Price</label>
                    <input type="text" class="form-control" id="exampleInputText" aria-describedby="" placeholder="Enter maximum budget" name="price">
                    <small id="textHelp" class="form-text text-muted">We'll find trips acording to your budget.</small>
                </div>
    <!--
                Precio:<br>
                <input type="text" name="precio" value="">
                <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                <input type="submit" value="Find" class="btn btn-primary">-->
                <button type="submit" class="btn btn-primary my-color">Search</button>
            </form>
        <!-- -------------------------     --->


        <!--  
        <div class="form-group">
            <label for="exampleInputEmail1">Email address</label>
            <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
        </div>
        <div class="form-group">
            <label for="exampleInputPassword1">Password</label>
            <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
        </div>
        <div class="form-group form-check">
            <input type="checkbox" class="form-check-input" id="exampleCheck1">
            <label class="form-check-label" for="exampleCheck1">Check me out</label>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>



          -->



        </div> 


        <div class="nav" role="navigation">
            <ul>
                <li><g:link class="home" action="index"><g:message code="Home" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                <!---
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--->
            </ul>
        </div>



        <div id="list-trip" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:table collection="${tripList}" />
            <div class="pagination">
                <g:paginate total="${tripCount ?: 0}" />
            </div>
        </div>


       
    </body>
</html>