#let text-size = 18pt

#let calc-elem-size(elem, sizes: (12pt, 10pt, 8pt, 6pt, 4pt)) = {
  let size = 3pt
  if elem.level - 2 < sizes.len() {
    size = sizes.at(elem.level - 2)
  }
  return size
}

// randomly generated IDs
#let gs = state(
  "VIvouA",
  (),
) // global state that stores all headings and associated summaries
#let elemcounter = counter("k1lRPA") // counter, used to display the outline correctly

// Use a custom supplement to know
// which headings should be included in the TOC
#let supl = [Symmaryst Heading]

#let style-outline(ol, outline-title: [Table of Contents]) = [
  #set par(first-line-indent: 0.01pt)
  // for some reason setting first-line-indent to
  // exactly 0pt messes with the outline summaries

  #show heading: it => [
    // Ignore headings not made through the `make-heading` (in this case the summary)
    #if it.supplement != supl {
      return none
    }
  ]

  #show outline.entry: it => {
    if it.element.supplement != supl {
      // ignore headings not made `make-heading`
      // use -2em so as to not take up any space
      return v(-2em)
    }
    let lvl = it.element.level
    let loc = it.element.location()

    context {
      // Get all the elements that were added to the document
      let idx = calc.rem(elemcounter.get().first(), gs.final().len())
      let (cnt, subcnt) = gs.final().at(idx)

      // style h1's differently from lower level headings
      if lvl == 1 {
        return box(
          link(loc)[
            #v(30pt)
            #set align(center)
            #smallcaps[#text(size: 18pt)[#cnt]]

            #set align(left)
            #subcnt
          ],
        )
      }
      // else
      return box(
        link(loc)[
          #let size = calc-elem-size(it.element)
          #set align(left)

          #v(1em)
          #box(width: 89%)[
            #set text(hyphenate: true)
            #set par(justify: true)
            #strong(cnt)
            #subcnt
            #box(width: 1fr, repeat[.])
          ]
          #box(width: 7%)[#h(1fr)#it.page()]
        ],
      )
    }

    elemcounter.step()
  }

  #if outline-title != none [
    #text(size: text-size, weight: 500)[
      #set align(center)
      #outline-title
    ]
  ]

  #ol
  #pagebreak()

  #counter(page).update(1)
]


#let make-heading(cnt, subcnt, level: 1) = [
  #gs.update(x => {
    // Update the state by including the content and summary
    x.push((cnt, subcnt))
    x
  })

  #heading(level: level, supplement: supl)[#box(width: 100%)[

      #v(2.5em)
      #set align(center)
      #cnt

      #v(.5em)
      #text(size: text-size, weight: "regular", style: "italic")[
        #box(width: 80%)[#subcnt]
      ]
      #v(.5em)
    ]]
]

#let part(title, content) = {
  make-heading(title, content)
}

#let chapter(title, content) = {
  make-heading(title, content, level: 2)
}
