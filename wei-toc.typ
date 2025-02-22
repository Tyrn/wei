#import "robinson-toc.typ": text-size, style-outline, part, chapter

/// Scene break.
#let dinkus() = {
  let star = "♢"
  set align(center)
  star + star + star
}

#let apply-wei-toc(
  body,
  title: "No Name",
  author: "Юлия Латынина",
  lang: "ru",
) = [
  #set text(lang: lang, size: text-size, hyphenate: true)
  #set par(
    spacing: 0.65em,
    first-line-indent: (
      amount: 1em,
      all: if lang != "en" { true } else { false },
    ),
    justify: true,
  )

  #place(center + horizon, dy: -10em)[
    #text(size: 25pt)[
      #title
    ]

    #text(size: text-size)[
      #author
    ]
  ]

  #pagebreak()

  #show outline: style-outline.with(outline-title: "")
  #outline()

  #pagebreak()

  #set page(numbering: "1")

  #body

  #smallcaps[
    #v(1fr)
    #set text(size: .5em)
    //#(context text.size * 2)
    #h(1fr)Built with Typst #sys.version, #datetime.today().display("[year]-[month]-[day]")
  ]
]
