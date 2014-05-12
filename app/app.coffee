# `import config from "app/config"`
# `import store from "app/store"`

# `import $ from "app/helpers/selector"`

`import applicationTemplate from "app/templates/application"`
`import dashboardTemplate from "app/templates/dashboard"`

init = ->
    # Replaces clicks with touchevents to remove 300ms delay (for non-IE)
    # FastClick.attach document.body

    # Render and insert application
    document.body.insertAdjacentHTML "afterbegin", applicationTemplate()

    # Render and insert templates
    $("#viewport").append dashboardTemplate()
    # $("#viewport").insertAdjacentHTML "beforeend", headerTemplate()
    # $("#viewport").insertAdjacentHTML "beforeend", frontTemplate(context)

    $("#action").click (e) ->
        e.preventDefault()
        save()

    $("#dragElement").on "dragstart", (e) ->
        drag(e)

save = ->
    objectArr = []

    $("form").each ->
        textobjForm = $(this).serializeArray()

        textobj = {}

        $.each textobjForm, (i, v) ->
            textobj[v.name] = v.value

        objectArr.push(textobj)
    
    jsonstring = JSON.stringify(objectArr)

    $("#jsonOutput").html(jsonstring)

drag = (evt) ->
    console.log evt.target.id


`export default init`