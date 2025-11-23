#import "../template.typ": *

// Personal information
#let name = "Sebastian F. Steffensen"
#let location = "Søborg, Capital Region, Denmark"
#let email = "Sebastian@sfsteffensen.dev"
#let github = "github.com/SFSteffensen"
#let linkedin = "linkedin.com/in/sfsteffensen"
#let phone = "(+45) 27 60 62 96"
#let personal-site = "www.sfsteffensen.dev"

#show: resume.with(
  author: name,
  location: location,
  email: email,
  github: github,
  linkedin: linkedin,
  phone: phone,
  personal-site: personal-site,
  accent-color: "#1E2650",
  link-color: "#000000",
  font: "Georgia",
  paper: "a4",
  language: "da",
  author-position: center,
  personal-info-position: center,
)

#section-header("education", language: "en")

#edu(
  institution: "Zealand Business College",
  location: "Slagelse, Zealand, Denmark",
  dates: dates-helper(start-date: "Aug 2021", end-date: "Jun 2024"),
  degree: "Higher Technical Examination Programme in Robot Technology",
  honors: ([9.9 / 12.0 Grade Average],),
  courses: (
    [Mathematics A],
    [Engineering A],
    [English A],
    [Danish A],
    [Programming B],
    [Physics B],
    [Chemistry B],
    [History B],
    [Technology B],
    [Biology C],
    [Communication and IT C],
    [Social Studies C],
    [Psychology C],
  ),
  highlights: (
    [*The Individual Project (SOP)*: Neural Networks: Theory, Practice, and Optimization | *Mathematics A, Programming B*],
  ),
  url: "https://www.zbc.dk",
  language: "en",
  consistent: true,
)

#edu(
  institution: "Technical University of Denmark",
  location: "Lyngby, Zealand, Denmark",
  dates: dates-helper(start-date: "Sep 2025", end-date: "Jun 2028"),
  degree: "Bachelor of Science in Software Technology",
  courses: ([Discrete Mathematics], [Mathematics 1A], [Introductory Programming]),
  highlights: (),
  url: "https://www.dtu.dk",
  language: "en",
  consistent: true,
)

#section-header("work", language: "en")

#work(
  title: "Contract Developer",
  company: "Zealand Business College (ZBC)",
  location: "Slagelse",
  dates: dates-helper(start-date: "Jan 2024", end-date: "Jun 2024"),
  url: "https://www.zbc.dk",
  highlights: (
    [Led the development of a digital solution for ZBC's confectionary department in a three-person team, creating a website for ingredient management and compliance with nutritional standards.],
    [Designed, built, and managed a PostgreSQL database, including a secure admin panel for controlling ingredient and nutrient data.],
    [Developed authentication mechanisms to ensure exclusive administrative access, maintaining data integrity and security.],
  ),
)

#work(
  title: "Youth Worker",
  company: "Multiline",
  location: "Søborg",
  dates: dates-helper(start-date: "Sep 2018", end-date: "Sep 2024"),
  url: "https://multiline.dk",
  highlights: (
    [I worked as a youth worker at Multiline, specifically in the storage and packaging department. My duties included material sorting and ensuring the proper disposal and recycling of waste.],
  ),
)

#section-header("certificates", language: "en")

#certificates(
  name: "Cyber Karriere",
  issuer: "Talentfulde Unge Øst",
  date: "Sep 2024",
  id: "CC-2024",
  url: "https://cdn.sfsteffensen.dev/CyberCareer.pdf",
  language: "en",
)

#certificates(
  name: "Cyber Talent Akedemi",
  issuer: "Talentfulde Unge Øst",
  date: "Apr 2023",
  id: "CTA-2023",
  url: "https://cdn.sfsteffensen.dev/CTA-Diploma.pdf",
  language: "en",
)

#section-header("projects", language: "en")

#project(
  name: "SolidJS Portfolio",
  affiliation: "Personal Project",
  dates: dates-helper(start-date: "May 2024", end-date: "Jun 2024"),
  url: "www.sfsteffensen.dev",
  highlights: (
    [Replaced my previous portfolio with a new one written in SolidJS.],
    [Focused on improving the user experience and enhancing performance with optimized routing and state management.],
  ),
)

#project(
  name: "DTime",
  affiliation: "Personal Project",
  dates: dates-helper(start-date: "Aug 2024", end-date: "Aug 2024"),
  url: "github.com/SFSteffensen/DTime",
  highlights: (
    [Developed a simple and efficient application for calculating download time based on internet speed.],
    [Built with a Rust backend and a SolidJS frontend using Tauri V2.],
    [Managed a public GitHub repository, implementing CI/CD using GitHub Actions to ensure proper rules, quality assurance, and continuous integration/delivery.],
    [Gained practical experience in setting up automated workflows for testing and deployment.],
  ),
)

#project(
  name: "PassMan - The Password Manager",
  affiliation: "Programming Exam",
  dates: dates-helper(start-date: "Jan 2023", end-date: "May 2023"),
  highlights: (
    [Developed a password manager using Tauri, Rust, Svelte, and Sveltekit, incorporating a BCrypt hash-check system and a customizable password generator with automatic entropy calculation.],
    [Engineered a robust system for storing and managing user accounts and passwords.],
  ),
)

#project(
  name: "RustCNN",
  affiliation: "The Individual Project",
  dates: dates-helper(start-date: "Sep 2023", end-date: "Dec 2023"),
  url: "cdn.sfsteffensen.dev/ConvNetRust.pdf",
  highlights: (
    [Developed a Rust-based CNN that integrates multiple activation functions and optimization techniques, enhancing model performance and accuracy.],
    [Performed extensive testing and benchmarking, significantly improving network efficiency and reliability.],
  ),
)

#section-header("skills", language: "en")

#skills(
  categories: (
    (
      name: "Soft Skills",
      skills: ([Communication], [Critical Thinking], [Debating], [Persuasive Writing], [Technical Writing]),
    ),
    (
      name: "Programming",
      skills: ([Rust], [C\#], [Python], [HTML & CSS], [Javascript/Typescript], [Typst], [LaTeX]),
    ),
    (
      name: "Tools",
      skills: ([Microsoft Word], [Docker], [Git], [Visual Studio Code], [Various Jetbrains IDEs], [MacOS], [Unity], [CI/CD]),
    ),
    (name: "Web Development", skills: ([Svelte], [Tailwind CSS], [Node & Bun], [NextJS], [SolidJS])),
  ),
)

*Languages*: Danish (Native speaker), English (Native speaker)

*Interests*: Programming, Video Games, Reading Non-fiction, Music

#section-header("references", language: "en")

#references(
  name: "Lars Reng, CIO, Zealand Business College",
  reference: "Sebastian is a dedicated and talented student and teaching assistant who has shown great promise in his studies. His ability to grasp concepts and apply them in practical projects, as well as assist and guide his peers, is impressive. I have no doubt that he will excel in any role he takes on in the future.",
  url: "https://www.linkedin.com/in/larsreng/",
)
