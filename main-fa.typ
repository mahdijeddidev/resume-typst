#import "src/page.typ"
#import "src/resume.typ": resume

#import "src/data/fa.typ": profile, summary, experiences, projects, skills

#set text(
  font: "Vazirmatn",
  lang: "fa",
)

#resume(
  profile,
  summary,
  experiences,
  projects,
  skills,
)