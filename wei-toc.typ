#import "robinson-toc.typ": text-size, style-outline, part, chapter

/// Scene break.
#let dinkus() = {
  let star = sym.lozenge
  set align(center)
  star + " " + star + " " + star
}

#let open-book = sym.dash.en
#let close-book = sym.dash.en

#let apply-wei-toc(
  body,
  title: "No Name",
  author: "Юлия Латынина",
  book-number: "0",
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

    #text(size: 25pt, fill: silver)[
      #v(2em)
      #open-book #book-number #close-book
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
