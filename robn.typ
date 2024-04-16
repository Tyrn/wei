#import "robinson-pip.typ": part, chapter, formatDoc

#show: doc => formatDoc(doc)
#set text(lang: "es")
#set par(first-line-indent: 1em, justify: true)
#set text(hyphenate: true)


#place(center + horizon, dy: -10em)[
  #text(size: 25pt)[
    The title of our book
  ]
  
  #text(size: 15pt)[
    A subtitle for the book
  ]
]

#pagebreak()

#[
  #set align(center)
  #text(size: 25pt)[
    Acknowledgments
  ]
  
  #set align(center)
  
  I just wanted to take a moment to express my deepest gratitude to each and every one of you. Whether you've been by my side through thick and thin or have just recently crossed paths with me, your presence means the world to me.
  
  To my friends, family, and loved ones: Thank you for your unwavering support, love, and understanding. You make every day brighter, and I am endlessly grateful for the joy you bring into my life.
  
  To my mentors and teachers: Thank you for your guidance, wisdom, and encouragement. Your belief in me has helped shape me into the person I am today, and I am forever thankful for your impact on my journey.
  
  To my colleagues and peers: Thank you for your collaboration, camaraderie, and shared experiences. Your dedication and passion inspire me to strive for greatness, and I am honored to work alongside such incredible individuals.
  
  To the strangers who have crossed my path: Thank you for your kindness, compassion, and random acts of generosity. Your unexpected gestures of goodwill remind me of the beauty in humanity, and I am humbled by your warmth and generosity.
  
  And to everyone else: Thank you for being you. Whether we've laughed together, cried together, or simply shared a passing moment, your presence has left an imprint on my heart, and for that, I am eternally grateful.
  
  So, from the bottom of my heart, thank you. Thank you for being a part of my life, for sharing in my journey, and for making each day a little brighter. I am blessed to know each and every one of you, and I look forward to the many adventures that lie ahead.
]

#pagebreak()


// start numbering from this point onwards
#set page(numbering: "1")



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

#chapter("Chapter Three")[
There's really no hard limit to how long these openers can be and to be quite honest I'm rather curious to see how far we can go.

Adolphus W. Green (1844–1917) started as the Principal of the Groton School in 1864. By 1865, he became second assistant librarian at the New York Mercantile Library; from 1867 to 1869, he was promoted to full librarian. From 1869 to 1873, he worked for Evarts, Southmayd & Choate, a law firm co-founded by William M. Evarts, Charles Ferdinand Southmayd and Joseph Hodges Choate. He was admitted to the New York State Bar Association in 1873.

Anyway, how's your day been?
]
#lorem(100)






#part("Part Four", "Part four is where things start to get really interesting")
#lorem(100)

#chapter("Chapter One")[
Content for the first chapter in part four.
Already we are boldly launched upon the deep; but soon we shall be lost in its unshored, harbourless immensities. Ere that come to pass; ere the Pequod’s weedy hull rolls side by side with the barnacled hulls of the leviathan; at the outset it is but well to attend to a matter almost indispensable to a thorough appreciative understanding of the more special leviathanic revelations and allusions of all sorts which are to follow.
]
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
