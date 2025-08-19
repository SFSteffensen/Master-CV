#import "@preview/scienceicons:0.1.0": orcid-icon

// Language configuration for multi-language support
#let lang-config = (
  en: (
    education: "Education",
    work: "Work Experience",
    projects: "Projects",
    certificates: "Licenses & Certifications",
    extracurriculars: "Extracurricular Activities",
    references: "References",
    skills: "Skills",
    issued-by: "Issued by",
    grade: "Grade Average",
    courses: "Courses",
    dear: "Dear",
    sincerely: "Sincerely",
    months: (
      Jan: "Jan", Feb: "Feb", Mar: "Mar", Apr: "Apr",
      May: "May", Jun: "Jun", Jul: "Jul", Aug: "Aug",
      Sep: "Sep", Oct: "Oct", Nov: "Nov", Dec: "Dec"
    )
  ),
  da: (
    education: "Uddannelse",
    work: "Erhvervserfaring",
    projects: "Projekter",
    certificates: "Licenser & Certificeringer",
    extracurriculars: "Fritidsaktiviteter",
    references: "Referencer",
    skills: "Kompetencer",
    issued-by: "Udstedt af",
    grade: "Gennemsnitlig karakter",
    courses: "Kurser",
    dear: "Kære",
    sincerely: "Med venlig hilsen",
    months: (
      Jan: "Jan", Feb: "Feb", Mar: "Mar", Apr: "Apr",
      May: "Maj", Jun: "Jun", Jul: "Jul", Aug: "Aug",
      Sep: "Sep", Oct: "Okt", Nov: "Nov", Dec: "Dec"
    )
  )
)

#let resume(
  author: "",
  author-position: left,
  personal-info-position: left,
  pronouns: "",
  location: "",
  email: "",
  github: "",
  linkedin: "",
  phone: "",
  personal-site: "",
  orcid: "",
  accent-color: "#000000",
  link-color: "#0066cc", // New parameter for link color
  font: "New Computer Modern",
  paper: "a4", // Changed default to a4 for European users
  author-font-size: 20pt,
  font-size: 10pt,
  language: "en", // Language support
  body,
) = {

  // Sets document metadata
  set document(author: author, title: author)

  // Document-wide formatting, including font and margins
  set text(
    font: font,
    size: font-size,
    lang: language,
    // Disable ligatures so ATS systems do not get confused when parsing fonts.
    ligatures: false
  )

  // Recommended to have 0.5in margin on all sides
  set page(
    margin: (0.5in),
    paper: paper,
  )

  // Link styles
  show link: underline

  // Small caps for section titles
  show heading.where(level: 2): it => [
    #pad(top: 0pt, bottom: -10pt, [#smallcaps(it.body)])
    #line(length: 100%, stroke: 1pt)
  ]

  // Accent Color Styling
  show heading: set text(
    fill: rgb(accent-color),
  )

  show link: set text(
    fill: rgb(link-color),
  )

  // Name will be aligned left, bold and big
  show heading.where(level: 1): it => [
    #set align(author-position)
    #set text(
      weight: 700,
      size: author-font-size,
    )
    #pad(it.body)
  ]

  // Level 1 Heading
  [= #(author)]

  // Personal Info Helper
  let contact-item(value, prefix: "", link-type: "") = {
    if value != "" {
      if link-type != "" {
        link(link-type + value)[#(prefix + value)]
      } else {
        value
      }
    }
  }

  // Personal Info
  pad(
    top: 0.25em,
    align(personal-info-position)[
      #{
        let items = (
          contact-item(pronouns),
          contact-item(phone),
          contact-item(location),
          contact-item(email, link-type: "mailto:"),
          contact-item(github, link-type: "https://"),
          contact-item(linkedin, link-type: "https://"),
          contact-item(personal-site, link-type: "https://"),
          contact-item(orcid, prefix: [#orcid-icon(color: rgb("#AECD54"))orcid.org/], link-type: "https://orcid.org/"),
        )
        items.filter(x => x != none).join("  |  ")
      }
    ],
  )

  // Main body.
  set par(justify: true)

  body
}

// Generic two by two component for resume
#let generic-two-by-two(
  top-left: "",
  top-right: "",
  bottom-left: "",
  bottom-right: "",
) = {
  [
    #top-left #h(1fr) #top-right \
    #bottom-left #h(1fr) #bottom-right
  ]
}

// Generic one by two component for resume
#let generic-one-by-two(
  left: "",
  right: "",
) = {
  [
    #left #h(1fr) #right
  ]
}

// Translate date string to target language
#let translate-date(date-str, language: "en") = {
  if language == "en" {
    return date-str
  }

  let config = lang-config.at(language, default: lang-config.en)
  let translated = date-str

  // Replace English month abbreviations with target language
  for (en-month, target-month) in config.months {
    translated = translated.replace(str(en-month), target-month)
  }

  translated
}

// Language-aware date helper
#let dates-helper(
  start-date: "",
  end-date: "",
  language: "en",
) = {
  let start = translate-date(start-date, language: language)
  let end = translate-date(end-date, language: language)
  start + " " + $dash.em$ + " " + end
}

// Localized section header helper
#let section-header(section-key, language: "en") = {
  let config = lang-config.at(language, default: lang-config.en)
  heading(level: 2)[#config.at(section-key)]
}

// Enhanced education function with honors, courses, and highlights
#let edu(
  institution: "",
  dates: "",
  degree: "",
  gpa: "",
  location: "",
  honors: (),
  courses: (),
  highlights: (),
  url: "",
  language: "en",
  // Makes dates on upper right like rest of components
  consistent: false,
) = {
  let config = lang-config.at(language, default: lang-config.en)

  if consistent {
    // edu-consistent style (dates top-right, location bottom-right)
    generic-two-by-two(
      top-left: if url != "" {
        strong(link(url)[#institution])
      } else {
        strong(institution)
      },
      top-right: dates,
      bottom-left: emph(degree),
      bottom-right: emph(location),
    )
  } else {
    // original edu style (location top-right, dates bottom-right)
    generic-two-by-two(
      top-left: if url != "" {
        strong(link(url)[#institution])
      } else {
        strong(institution)
      },
      top-right: location,
      bottom-left: emph(degree),
      bottom-right: emph(dates),
    )
  }

  // Add honors, courses, and highlights if provided
  if honors.len() > 0 [
    - *#config.grade*: #honors.join(", ")
  ]
  if courses.len() > 0 [
    - *#config.courses*: #courses.join(", ")
  ]
  if highlights.len() > 0 {
    for highlight in highlights [
      - #highlight
    ]
  }
}

// Enhanced work function with URL and highlights
#let work(
  title: "",
  dates: "",
  company: "",
  location: "",
  url: "",
  highlights: (),
) = {
  generic-two-by-two(
    top-left: if url != "" {
      strong(link(url)[#company])
    } else {
      strong(company)
    },
    top-right: location,
    bottom-left: emph(title),
    bottom-right: emph(dates),
  )

  if highlights.len() > 0 {
    for highlight in highlights [
      - #highlight
    ]
  }
}

// Enhanced project function with affiliation and highlights
#let project(
  role: "",
  name: "",
  url: "",
  dates: "",
  affiliation: "",
  highlights: (),
) = {
  generic-one-by-two(
    left: {
      if role == "" {
        if url != "" {
          [*#link("https://" + url)[#name]*]
        } else {
          [*#name*]
        }
      } else {
        if url != "" {
          [*#role*, #link("https://" + url)[#name]]
        } else {
          [*#role*, #name]
        }
      }
      if affiliation != "" [
        \ #emph(affiliation)
      ]
    },
    right: dates,
  )

  if highlights.len() > 0 {
    for highlight in highlights [
      - #highlight
    ]
  }
}

// Enhanced certificates function with ID field and language support
#let certificates(
  name: "",
  issuer: "",
  url: "",
  date: "",
  id: "",
  language: "en",
) = {
  let config = lang-config.at(language, default: lang-config.en)
  if url != "" [
    *#link(url)[#name]* #if id != "" [#emph[(#id)]] \
    #config.issued-by #emph(issuer)
    #h(1fr) #date
  ] else [
    *#name* #if id != "" [#emph[(#id)]] \
    #config.issued-by #emph(issuer)
    #h(1fr) #date
  ]
}

// New references function
#let references(
  name: "",
  reference: "",
  url: "",
) = {
  [
    #if url != "" [
      - *#link(url)[#name]*: "#reference"
    ] else [
      - *#name*: "#reference"
    ]
  ]
}

// Enhanced extracurriculars function with highlights
#let extracurriculars(
  activity: "",
  dates: "",
  highlights: (),
) = {
  generic-one-by-two(
    left: strong(activity),
    right: dates,
  )

  if highlights.len() > 0 {
    for highlight in highlights [
      - #highlight
    ]
  }
}

// Skills section with multiple categories
#let skills(
  categories: (),
) = {
  for category in categories [
    - *#category.name*: #category.skills.join(", ")
  ]
}

// Cover Letter Template
#let cover-letter(
  author: "",
  location: "",
  email: "",
  phone: "",
  personal-site: "",
  recipient-name: "",
  recipient-title: "",
  company: "",
  company-address: "",
  date: "",
  subject: "",
  greeting: "",
  closing: "",
  accent-color: "#000000",
  link-color: "#0066cc",
  font: "New Computer Modern",
  paper: "a4",
  author-font-size: 16pt,
  font-size: 11pt,
  language: "en",
  body,
) = {
  let config = lang-config.at(language, default: lang-config.en)

  // Sets document metadata
  set document(author: author, title: "Cover Letter - " + author)

  // Document-wide formatting
  set text(
    font: font,
    size: font-size,
    lang: language,
    ligatures: false
  )

  set page(
    margin: (0.75in),
    paper: paper,
  )

  // Link styles
  show link: underline
  show link: set text(fill: rgb(link-color))

  // Author header
  align(left)[
    #text(
      size: author-font-size,
      weight: 700,
      fill: rgb(accent-color)
    )[#author]

    #v(0.25em)

    #{
      let contact-items = ()
      if location != "" { contact-items.push(location) }
      if phone != "" { contact-items.push(phone) }
      if email != "" { contact-items.push(link("mailto:" + email)[#email]) }
      if personal-site != "" { contact-items.push(link("https://" + personal-site)[#personal-site]) }
      contact-items.join("  |  ")
    }
  ]

  v(1.5em)

  // Date
  align(right)[
    #date
  ]

  v(1em)

  // Recipient information
  if recipient-name != "" or company != "" [
    #{
      if recipient-name != "" and recipient-title != "" [
        #recipient-name \
        #recipient-title \
      ] else if recipient-name != "" [
        #recipient-name \
      ]

      if company != "" [
        #company \
      ]

      if company-address != "" [
        #company-address
      ]
    }

    #v(1.5em)
  ]

  // Subject line
  if subject != "" [
    *Subject: #subject*

    #v(1em)
  ]

  // Greeting
  if greeting != "" [
    #greeting,
  ] else if recipient-name != "" [
    #config.dear #recipient-name,
  ] else [
    #config.dear Hiring Manager,
  ]

  v(1em)

  // Main body with justified text
  set par(justify: true, leading: 0.65em)
  body

  v(1.5em)

  // Closing
  if closing != "" [
    #closing,
  ] else [
    #config.sincerely,
  ]

  v(2em)

  // Signature line
  author
}
