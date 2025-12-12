import owlkettle

echo "hello world"

viewable App:
  counter: int

method view(app: AppState): Widget =
  result = gui:
    Window:
      title = "Counter"
      defaultSize = (200, 60)

      Box(orient = OrientX, margin = 12, spacing = 6):
        Label(text = $app.counter)
        Button {.expand: false.}:
          text = "+"
          style = [ButtonSuggested]
          proc clicked() =
            app.counter += 1

brew(gui(App()))
