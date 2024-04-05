#show outline.entry: it => {
  if it.element.bookmarked == false {
    return
  }
  if it.element.supplement == [Section] {
    return
  }
  let body = it.body
  let elem = it.element
  let title = body.fields().children.at(1)
  let description = body

  if elem.level == 1 {
    return link(elem.location())[
        #v(30pt)
        #set align(center)
        #smallcaps[#text(
          size: 18pt
        )[#elem.supplement]]
        
        #set align(left)
        #description
      ]
  }
  //else
  return link(elem.location())[
    #let sizes = (12pt, 10pt, 6pt)
    #set align(center)
    #smallcaps[#text(
      size: sizes.at(elem.level - 2)
    )[#elem.supplement]]

    #set align(left)
    #description #box(width: 1fr, repeat[.]) #it.page
  ]
}

#show heading: it => {
  if it.supplement == [Section] {
    return
  }
  return [
    #it.supplement

    #it.body

  ]
}

#set text(size: 11pt)
#let makeHeading(title, content, level: 1) = [
  #heading(
    level: level,
    supplement: title
  )[
    #text(size: 11pt, weight: "regular")[
      // You can customise the font size for the
      // content here, if you wish
      #content
    ]
  ]
]


// page numbering and stuff
#set page(numbering: "1")
#set par(justify: true)
#set text(hyphenate: true)

#outline()

#pagebreak()

= This heading won't show up
== Neither will this
=== You have to create headings with the provided `makeHeading` function





#makeHeading("Part One", "This is some part one stuff")
#lorem(100)

#makeHeading("Chapter One", "content for first chapter", level: 2)
#lorem(100)

#makeHeading("Chapter Two", "content for the second chapter", level: 2)
#lorem(100)

#makeHeading("Chapter Three", "Why not add a third chapter while we're at it", level: 2)
#lorem(100)





#makeHeading("Part Two", "Part two is even better than part one")
#lorem(100)

#makeHeading("Chapter One", "content for first chapter, but this time in part two", level: 2)
#lorem(100)

#makeHeading("Chapter Two", "content for the second chapter, but this time in part two", level: 2)
#lorem(100)

#makeHeading("Chapter Three", "Why not add a third chapter while we're at it, but this time in part two", level: 2)
#lorem(100)








#makeHeading("Part Three", "Part three is honestly the best thing since sliced bread")
#lorem(100)

#makeHeading("Chapter One", "content for first chapter, but in in part three. Whaaaaat????", level: 2)
#lorem(100)

#makeHeading("Chapter Two", "content for the second chapter, and still in part three", level: 2)
#lorem(100)

#makeHeading("Chapter Three", "There's really no hard limit to how long these openers can be and to be quite honest I'm rather curious to see how far we can go.

Adolphus W. Green (1844–1917) started as the Principal of the Groton School in 1864. By 1865, he became second assistant librarian at the New York Mercantile Library; from 1867 to 1869, he was promoted to full librarian. From 1869 to 1873, he worked for Evarts, Southmayd & Choate, a law firm co-founded by William M. Evarts, Charles Ferdinand Southmayd and Joseph Hodges Choate. He was admitted to the New York State Bar Association in 1873.

Anyway, how's your day been?", level: 2)
#lorem(100)






#makeHeading("Part Four", "Part four is where things start to get really interesting")
#lorem(100)

#makeHeading("Chapter One", "content for the first chapter in part four. Hold onto your hats!", level: 2)
#lorem(100)

#makeHeading("Chapter Two", "content for the second chapter in part four. Brace yourselves!", level: 2)
#lorem(100)

#makeHeading("Chapter Three", "Why not add a third chapter while we're at it, but this time in part four. Get ready!", level: 2)
#lorem(100)












#makeHeading("Part Five", "Part five promises to take the excitement up a notch")
#lorem(100)

#makeHeading("Chapter One", "content for first chapter, but this time in part five. Can you handle it?", level: 2)
#lorem(100)

#makeHeading("Chapter Two", "content for the second chapter, but this time in part five. Prepare for thrills!", level: 2)
#lorem(100)

#makeHeading("Chapter Three", "Why not add a third chapter while we're at it, but this time in part five. It's about to get wild!", level: 2)
#lorem(100)









#makeHeading("Part Six", "Part six is the grand finale you've all been waiting for")
#lorem(100)

#makeHeading("Chapter One", "content for first chapter, but this time in part six. The climax begins!", level: 2)
#lorem(100)

#makeHeading("Chapter Two", "content for the second chapter, but this time in part six. Get ready for the big reveal!", level: 2)
#lorem(100)

#makeHeading("Chapter Three", "Why not add a third chapter while we're at it, but this time in part six. Hold onto your seats!", level: 2)
#lorem(100)

