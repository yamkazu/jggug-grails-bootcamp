package todo

class Todo {

    String content

    static constraints = {
        content blank: false, maxSize: 20
    }
}
