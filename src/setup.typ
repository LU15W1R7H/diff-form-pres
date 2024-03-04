#let slides-config(doc) = {
  set page(
    paper: "presentation-16-9",
    margin: 2cm,
  )
  set text(size: 20pt)
  doc
}

#let my-config(doc) = {
  // white on black
  set page(fill: black)
  set text(fill: white)

  //set text(font: "New Computer Modern")
  set par(justify: true)
  
  show link: set text(fill: blue)

  doc
}

