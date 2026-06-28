#import "section.typ": section

#let experience(experiences) = section("Experience")[
  #set text(size: 8.6pt)

  #for company in experiences [

    // Company name
    #text(
      weight: "bold",
      size: 9.5pt,
    )[
      #company.company
    ]

    #text(
      size: 8.2pt,
      fill: rgb("#666666"),
    )[
      • #company.location
    ]

    #v(2pt)

    // Roles inside company
    #for role in company.roles [

      #table(
        columns: (1fr, auto),
        gutter: 0pt,

        [
          #set text(weight: "semibold", size: 9pt)
          #role.position
        ],

        [
          #set text(size: 8.2pt, fill: rgb("#666666"))
          #role.date
        ],
      )

      #v(1pt)

      #set text(size: 8.5pt)

      #for item in role.items [
        • #item\
      ]

      #v(3pt)
    ]

  ]
]