import nigui
import strformat

type
  FieldType* {.pure.} = enum
    String
    Integer

  Field* = object
    case kind*: FieldType
    of FieldType.String:
      sVal*: string
    of FieldType.Integer:
      iVal*: int
    # TODO JSON types??

  Record* = object
    fields: seq[Field]

  DataTable* = object
    con*: LayoutContainer
    records*: seq[Record]

# proc newDataTable(): DataTable =
#   DataTable(con=
# proc createDataTable*(nField: int, nRow: int): DataTable =
#   #let dt = newDataTable()
#   let con = newLayoutContainer(Layout_Vertical)
#   for yi in 0..nRow:
#     let rowCon = newLayoutContainer(Layout_Horizontal)
#     for xi in 0..nField:
#       let cell = newTextBox(fmt"({xi:02}, {yi:02})")
#       rowCon.add(cell)
#       cell.editable=true
#       cell.width=80
#       cell.height=20
#     con.add(rowCon)
#   con
    

proc createSpreadSheet*(nField: int, nRow: int): LayoutContainer =
  let con = newLayoutContainer(Layout_Vertical)
  for yi in 0..nRow:
    let rowCon = newLayoutContainer(Layout_Horizontal)
    for xi in 0..nField:
      let cell = newTextBox(fmt"({xi:02}, {yi:02})")
      rowCon.add(cell)
      cell.editable=true
      cell.width=80
      cell.height=20
    con.add(rowCon)
  con
    

