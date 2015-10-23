<!doctype html>
<html>
    <head>
        <meta name="layout" content="main"/>
        <title><g:message code="app.name" /></title>
    </head>
    <body>
        <g:hasErrors bean="${todo}">
            <div class="alert alert-danger" role="alert">
                <g:renderErrors bean="${todo}" />
            </div>
        </g:hasErrors>
        <g:form action="save">
            <div class="input-group">
                <g:textField name="content" value="${task?.content}" class="form-control" placeholder="なにするの？" />
                <span class="input-group-btn">
                    <g:submitButton name="create" value="${message(code: 'default.button.create.label')}" class="btn btn-success"/>
                </span>
            </div>
        </g:form>

        <h2><g:message code="default.list.label" args="${[message(code: 'todo.label')]}"/></h2>

        <div class="well">
            <g:form action="index">
                <div  class="input-group">
                    <g:textField name="keyword" value="${params.keyword}" class="form-control"/>
                    <span class="input-group-btn">
                        <g:submitButton name="search" value="絞り込み" class="btn btn-default"/>
                    </span>
                </div>
            </g:form>
        </div>
        <ul class="list-group">
            <g:each in="${todos}" var="todo">
                <li class="list-group-item">
                    ${todo.content}
                    <g:form action="delete" id="${todo.id}" class="pull-right">
                        <g:submitButton name="delete" value="${message(code: 'default.button.delete.label')}" class="btn btn-danger btn-xs" />
                    </g:form>
                </li>
            </g:each>
        </ul>
    </body>
</html>
