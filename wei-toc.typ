#import "robinson-toc.typ": text-size, style-outline, part, chapter

/// Scene break.
#let dinkus() = {
  let star = "♢"
  set align(center)
  star + star + star
}

#let apply-wei-toc(body, title: "No Name") = [
  #set text(lang: "ru")
  #set text(size: text-size)
  #set text(hyphenate: true)
  #set par(spacing: 0.65em)
  #set par(first-line-indent: 1em, justify: true)
  
  #place(center + horizon, dy: -10em)[
    #text(size: 25pt)[
      #title
    ]
    
    #text(size: text-size)[
      Юлия Латынина
    ]
  ]
  
  #pagebreak()
  
  #show outline: style-outline.with(outline-title: "")
  #outline()
  
  #pagebreak()
  
  #set page(numbering: "1")

  #body
]
