#import "section.typ": section

#let skills(skills) = section("Skills")[
  #table(
    columns: (2.8cm, 1fr),
    gutter: 6pt,
    stroke: none,

    ..skills.map(skill => (
      [
        #text(
          size: 8.4pt,
          weight: "semibold",
          fill: rgb("#334155"),
        )[
          #skill.title:
        ]
      ],

      [
        #text(
          size: 7.9pt,
          fill: rgb("#6B7280"),
        )[
          #skill.items.join(", ")
        ]
      ],
    )).flatten()
  )
]