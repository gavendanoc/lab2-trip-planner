<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'trip.label', default: 'Trip')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-trip" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><g:link class="home" action="index"><g:message code="Home" args="[entityName]" /></g:link></li>
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