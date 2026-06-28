#import "section.typ": section

#let projects(projects) = section("Projects")[
  #for project in projects [

    *#project.name*
    #text(fill: rgb("#666666"))[
      — #project.url
    ]

    \
    #project.description

   #v(4pt)

  ]
]