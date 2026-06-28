#import "section.typ": section

#let skills(skills) = section("Skills")[
  #table(
    columns: (3cm, 1fr),

    ..skills.map(skill => (
      [*#skill.title*],
      [#skill.items.join(", ")],
    )).flatten()
  )
]