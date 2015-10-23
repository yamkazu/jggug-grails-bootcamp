<!doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>MYTODO</title>
    </head>
    <body>
        <g:hasErrors bean="${todo}">
            <g:renderErrors bean="${todo}" />
        </g:hasErrors>
        <g:form action="save">
            <g:textField name="content" value="${task?.content}" />
            <g:submitButton name="create" value="追加" />
        </g:form>

        <h2>TODOリスト</h2>
        <ul>
            <g:each in="${todos}" var="todo">
                <li>
                    ${todo.content}
                    <g:form action="delete" id="${todo.id}">
                        <g:submitButton name="delete" value="削除" />
                    </g:form>
                </li>
            </g:each>
         </ul>
    </body>
</html>
