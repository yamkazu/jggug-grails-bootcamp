package todo

class TodoController {

    def index() {
        [todos: Todo.list()]
    }
}
