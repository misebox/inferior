import nigui
import strformat
import views


proc main() =
  app.init()
  let Win=newWindow("InputTest")
  let con=newLayoutContainer(Layout_Vertical)
  Win.add(con)

  let Ta=newTextArea("Text")
  con.add(Ta)
  Ta.editable=true
  Ta.addText("Area")
  Ta.width=300
  Ta.height=100

  let Tb=newTextBox("TextBox")
  con.add(Tb)


  let Bt=newButton("Print out")
  con.add(Bt)
  Bt.onClick=proc(e:ClickEvent)=
    echo Ta.text
    echo Tb.text

  let ssCon = createSpreadSheet(6, 10)
  con.add(ssCon)

  Win.show()

  app.run()


when isMainModule:
  main()
