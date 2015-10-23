<!doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title><g:layoutTitle default="${message(code: 'app.name')}" /></title>
        <asset:stylesheet src="application.css"/>
        <asset:javascript src="application.js"/>
        <g:layoutHead/>
    </head>
    <body>
        <div class="container">
            <div class="page-header">
                <h1><g:message code="app.name" /></h1>
            </div>
            <g:layoutBody/>
        </div>
    </body>
</html>
