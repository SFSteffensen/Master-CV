#import "../../template.typ": *

// Personal information - TILPAS DISSE VÆRDIER
#let name = "Dit Fulde Navn"
#let location = "Din By, Danmark"
#let email = "din.email@domæne.dk"
#let github = "github.com/ditbrugernavn"
#let linkedin = "linkedin.com/in/ditbrugernavn"
#let phone = "(+45) XX XX XX XX"
#let personal-site = "www.dinhjemmeside.dk"

#show: resume.with(
  author: name,
  location: location,
  email: email,
  github: github,
  linkedin: linkedin,
  phone: phone,
  personal-site: personal-site,
  accent-color: "#26428b",
  link-color: "#000000",
  font: "Georgia",
  paper: "a4",
  language: "da",
  author-position: center,
  personal-info-position: center,
)

#section-header("education", language: "da")

#edu(
  institution: "Dit Universitet",
  location: "By, Danmark",
  dates: dates-helper(start-date: "Aug 2020", end-date: "Jun 2024", language: "da"),
  degree: "Bachelor i Datalogi",
  honors: ("8.5 / 12.0 Gennemsnitlig karakter",),
  courses: ("Datastrukturer", "Algoritmer", "Softwareudvikling", "Databasesystemer", "Webudvikling"),
  highlights: ("*Bachelorprojekt*: Machine Learning applikation til dataanalyse | *Datalogi, Matematik*",),
  url: "https://www.universitet.dk",
  language: "da",
  consistent: true,
)

#section-header("work", language: "da")

#work(
  title: "Software Udvikler Praktikant",
  company: "Tech Virksomhed ApS",
  location: "København",
  dates: dates-helper(start-date: "Jun 2023", end-date: "Aug 2023", language: "da"),
  url: "https://www.techvirksomhed.dk",
  highlights: (
    "Udviklede full-stack webapplikationer med React og Node.js, der betjente over 1.000 daglige brugere.",
    "Samarbejdede med senior udviklere om implementering af nye funktioner og optimering af database-forespørgsler.",
    "Deltog i kodegennemgange og bidrog til teamdokumentation og bedste praksis.",
  ),
)

#section-header("certificates", language: "da")

#certificates(
  name: "AWS Certified Developer",
  issuer: "Amazon Web Services",
  date: "Mar 2024",
  id: "AWS-CDA-001",
  url: "https://aws.amazon.com/certification/",
  language: "da",
)

#section-header("projects", language: "da")

#project(
  name: "Personlig Portfolio Hjemmeside",
  affiliation: "Personligt Projekt",
  dates: dates-helper(start-date: "Jan 2024", end-date: "Feb 2024", language: "da"),
  url: "github.com/ditbrugernavn/portfolio",
  highlights: (
    "Byggede responsiv portfolio hjemmeside ved hjælp af moderne webteknologier og bedste praksis.",
    "Implementerede automatiseret deployment pipeline med kontinuerlig integration og test.",
  ),
)

#project(
  name: "Opgavestyring App",
  affiliation: "Universitets Afgangsprojekt",
  dates: dates-helper(start-date: "Sep 2023", end-date: "Dec 2023", language: "da"),
  highlights: (
    "Udviklede cross-platform mobilapplikation ved hjælp af React Native og Firebase.",
    "Implementerede real-time synkronisering og offline funktionalitet for sømløs brugeroplevelse.",
  ),
)

#section-header("skills", language: "da")

#skills(
  categories: (
    (name: "Programmering", skills: ("Python", "JavaScript", "Java", "C++", "HTML & CSS", "SQL")),
    (name: "Værktøjer", skills: ("Git", "Docker", "AWS", "Visual Studio Code", "Linux", "CI/CD")),
    (name: "Frameworks", skills: ("React", "Node.js", "Express", "Django", "React Native")),
    (name: "Soft Skills", skills: ("Problemløsning", "Teamsamarbejde", "Kommunikation", "Projektledelse")),
  ),
)

*Sprog*: Dansk (Modersmål), [Andet Sprog] (Færdighedsniveau)

*Interesser*: Softwareudvikling, Open Source, Teknologi, [Dine Hobbyer]

#section-header("references", language: "da")

#references(
  name: "Dr. Jane Smith, Professor, Dit Universitet",
  reference: "En fremragende studerende som demonstrerede stærke analytiske færdigheder og dedikation til læring. Deres evne til at tackle komplekse problemer og arbejde effektivt i teammiljøer er imponerende.",
  url: "https://www.linkedin.com/in/drjanesmith/",
)
