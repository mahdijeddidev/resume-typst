#let header(profile) = [
  #set text(size: 22pt, weight: "bold")

  #profile.name

  #v(4pt)

  #set text(size: 11pt, weight: "regular")

  #profile.title

  #v(8pt)

  #set text(size: 9pt)

  #profile.email •
  #profile.website •
  #profile.github •
  #profile.linkedin •
  #profile.phone
]