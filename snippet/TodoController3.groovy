package todo

class TodoController {

    def index() {
        [todos: Todo.list()]
    }

    def save(Todo todo) {
        if (todo.hasErrors()) {
            render view: 'index', model: [todo: todo, todos: Todo.list()]
            return
        }

        todo.save(flush: true)
        redirect action: 'index'
    }

    def delete(Todo todo) {
        todo.delete(flush: true)
        redirect action: 'index'
    }
}
