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
      #set align(center)
      #it.supplement
  
      #it.body
      
    ]
  }
  #cnt
]

#let makeHeading(title, content, level) = [
  #v(10pt)
  #heading(
    level: level,
    supplement: title
  )[
    #set align(center)
    #text(size: 11pt, weight: "semibold", style: "normal")[
      #box(width: 80%)[#content]
    ]
  ]
  #v(10pt)
]

#let part(title, content) = {
  makeHeading(title, content, 1)
}

#let chapter(title, content) = {
  makeHeading(title, content, 2)
}








