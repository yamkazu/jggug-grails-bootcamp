<!doctype html>
<html>
    <head>
        <meta name="layout" content="main"/>
        <title><g:message code="app.name" /></title>
    </head>
    <body>
        <g:hasErrors bean="${todo}">
            <g:renderErrors bean="${todo}" />
        </g:hasErrors>
        <g:form action="save">
            <g:textField name="content" value="${task?.content}" />
            <g:submitButton name="create" value="${message(code: 'default.button.create.label')}" />
        </g:form>

        <h2><g:message code="default.list.label" args="${[message(code: 'todo.label')]}"/></h2>

        <g:form action="index">
            <g:textField name="keyword" value="${params.keyword}"/>
            <g:submitButton name="filter" value="絞り込み"/>
        </g:form>
        <ul>
            <g:each in="${todos}" var="todo">
                <li>
                    ${todo.content}
                    <g:form action="delete" id="${todo.id}">
                        <g:submitButton name="delete" value="${message(code: 'default.button.delete.label')}" />
                    </g:form>
                </li>
            </g:each>
        </ul>
    </body>
</html>
