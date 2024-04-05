#let to-string(content) = {
  if content.has("text") {
    content.text
  } else if content.has("children") {
    content.children.map(to-string).join("")
  } else if content.has("child") {
    to-string(content.child)
  } else if content.has("body") {
    to-string(content.body)
  } else if content == [ ] {
    " "
  } else {
    content
  }
}

#let formatDoc(cnt) = [
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
    
    let description = text(style: "normal", size: 10pt)[
      #to-string(body)
    ]
  
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
      #set par(
        hanging-indent: 1em,
        justify: true,
      )
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
  #cnt
]



#let makeHeading(title, content, level: 1) = [
  #heading(
    level: level,
    supplement: title
  )[
    // You can customise the font size for the
    // content here, if you wish
    #set align(center)
    #text(size: 11pt, weight: "regular", style: "italic")[
      #box(width: 80%)[#content]
    ]
  ]
]













