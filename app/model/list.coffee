llist =
    title: "List"
    type: "array"
    uniqueItems: true
    items:
        type: "object"
        properties:
            list_title:
                title: "List Title"
                type: "string"
            list_content:
                title: "List Content"
                type: "string"
                format:"textarea"
    default: [
        list_title: ""
        list_content: ""
    ]