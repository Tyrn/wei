#import "robinson-toc.typ": part, chapter, formatDoc

#show: doc => formatDoc(doc)

// page numbering and stuff
#set page(numbering: "1")
#set par(justify: true)
#set text(hyphenate: true)

#outline()

#pagebreak()

= This heading won't show up
== Neither will this
=== You have to create headings with the provided `makeHeading` function





#part("Part One", "This is some part one stuff")
#lorem(100)

#chapter("Chapter One", "content for first chapter")
#lorem(100)

#chapter("Chapter Two", "content for the second chapter")
#lorem(100)

#chapter("Chapter Three", "Why not add a third chapter while we're at it")
#lorem(100)





#part("Part Two", "Part two is even better than part one")
#lorem(100)

#chapter("Chapter One", "content for first chapter, but this time in part two")
#lorem(100)

#chapter("Chapter Two", "content for the second chapter, but this time in part two")
#lorem(100)

#chapter("Chapter Three", "Why not add a third chapter while we're at it, but this time in part two")
#lorem(100)








#part("Part Three", "Part three is honestly the best thing since sliced bread")
#lorem(100)

#chapter("Chapter One", "content for first chapter, but in in part three. Whaaaaat????")
#lorem(100)

#chapter("Chapter Two", "content for the second chapter, and still in part three")
#lorem(100)

#chapter("Chapter Three", "There's really no hard limit to how long these openers can be and to be quite honest I'm rather curious to see how far we can go.

Adolphus W. Green (1844–1917) started as the Principal of the Groton School in 1864. By 1865, he became second assistant librarian at the New York Mercantile Library; from 1867 to 1869, he was promoted to full librarian. From 1869 to 1873, he worked for Evarts, Southmayd & Choate, a law firm co-founded by William M. Evarts, Charles Ferdinand Southmayd and Joseph Hodges Choate. He was admitted to the New York State Bar Association in 1873.

Anyway, how's your day been?")
#lorem(100)






#part("Part Four", "Part four is where things start to get really interesting")
#lorem(100)

#chapter("Chapter One", "content for the first chapter in part four. Hold onto your hats!")
#lorem(100)

#chapter("Chapter Two", "content for the second chapter in part four. Brace yourselves!")
#lorem(100)

#chapter("Chapter Three", "Why not add a third chapter while we're at it, but this time in part four. Get ready!")
#lorem(100)












#part("Part Five", "Part five promises to take the excitement up a notch")
#lorem(100)

#chapter("Chapter One", "content for first chapter, but this time in part five. Can you handle it?")
#lorem(100)

#chapter("Chapter Two", "content for the second chapter, but this time in part five. Prepare for thrills!")
#lorem(100)

#chapter("Chapter Three", "Why not add a third chapter while we're at it, but this time in part five. It's about to get wild!")
#lorem(100)









#part("Part Six", "Part six is the grand finale you've all been waiting for")
#lorem(100)

#chapter("Chapter One", "content for first chapter, but this time in part six. The climax begins!")
#lorem(100)

#chapter("Chapter Two", "content for the second chapter, but this time in part six. Get ready for the big reveal!")
#lorem(100)

#chapter("Chapter Three", "Why not add a third chapter while we're at it, but this time in part six. Hold onto your seats!")
#lorem(100)

