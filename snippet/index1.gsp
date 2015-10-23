<!doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>MYTODO</title>
    </head>
    <body>
        <h2>TODOリスト</h2>
        <ul>
            <g:each in="${todos}" var="todo">
                <li>${todo.content}</li>
            </g:each>
        </ul>
    </body>
</html>

