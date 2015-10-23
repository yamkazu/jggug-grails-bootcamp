import todo.Todo

class BootStrap {

    def init = { servletContext ->
        environments {
            development {
                new Todo(content: "山田さんに電話").save()
                new Todo(content: "ゴミ袋を買う").save()
                new Todo(content: "ネコに餌をやる").save()
            }
        }
    }

    def destroy = {
    }
}
