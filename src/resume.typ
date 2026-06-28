#import "components/header.typ": header
#import "components/section.typ": section
#import "components/experience.typ": experience
#import "components/projects.typ": projects
#import "components/skills.typ": skills

#let resume(
  profile,
  summary,
  experiences,
  projectList,
  skillList,
) = [
  #header(profile)

  // summary
  #text(
    size: 10.5pt,
    weight: "medium",
    fill: rgb("#444444"),
  )[
    #summary
  ]
  #experience(experiences)

  #projects(projectList)

  #skills(skillList)

]
