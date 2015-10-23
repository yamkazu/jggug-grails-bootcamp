package todo

class TodoController {

    def index() {
        [todos: Todo.list()]
    }

    def save(Todo todo) {
        todo.save(flush: true)
        redirect action: 'index'
    }

    def delete(Todo todo) {
        todo.delete(flush: true)
        redirect action: 'index'
    }
}
