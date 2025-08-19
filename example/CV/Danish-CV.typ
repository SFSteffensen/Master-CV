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
  honors: ("8.5 / 12.0 Gennemsnitlig karakter", "Cum Laude"),
  courses: ("Datastrukturer & Algoritmer", "Softwareudvikling", "Databasesystemer", "Computernetværk", "Operativsystemer", "Webudvikling", "Machine Learning", "Computergrafik", "Cybersikkerhed", "Mobiludvikling", "Menneske-Computer Interaktion", "Softwaretest", "Projektledelse"),
  highlights: ("*Bachelorprojekt*: AI-drevet Dataanalyse Platform | *Datalogi, Matematik*",),
  url: "https://www.universitet.dk",
  language: "da",
  consistent: true,
)

#section-header("work", language: "da")

#work(
  title: "Full Stack Udvikler",
  company: "Tech Solutions ApS",
  location: "København",
  dates: dates-helper(start-date: "Jan 2024", end-date: "Nu", language: "da"),
  url: "https://www.techsolutions.dk",
  highlights: (
    "Ledede udvikling af microservices arkitektur der betjener 50.000+ daglige aktive brugere på tværs af flere platforme.",
    "Implementerede CI/CD pipelines der reducerede deployment tid med 70% og forbedrede kodekvalitet gennem automatiseret test.",
    "Mentorede 3 junior udviklere og etablerede kodestandarder der forbedrede teamproduktivitet med 25%.",
  ),
)

#work(
  title: "Software Engineering Praktikant",
  company: "Innovation Labs",
  location: "Aarhus",
  dates: dates-helper(start-date: "Jun 2023", end-date: "Aug 2023", language: "da"),
  url: "https://www.innovationlabs.dk",
  highlights: (
    "Udviklede RESTful API'er ved hjælp af Node.js og Express, der håndterede over 10.000 forespørgsler per dag.",
    "Samarbejdede med tværfaglige teams om design og implementering af brugerautentificeringssystemer.",
    "Optimerede database-forespørgsler hvilket resulterede i 40% forbedring af applikationens svartider.",
  ),
)

#work(
  title: "Forskningsassistent",
  company: "Universitets Forskningslaboratorium",
  location: "By",
  dates: dates-helper(start-date: "Sep 2022", end-date: "Maj 2023", language: "da"),
  url: "https://www.universitet.dk/forskning",
  highlights: (
    "Gennemførte forskning i machine learning algoritmer til naturlige sprogbehandlingsapplikationer.",
    "Medforfattede 2 peer-reviewed publikationer og præsenterede resultater på 3 akademiske konferencer.",
    "Udviklede Python scripts til dataindsamling og analyse, behandlede datasæt med 1M+ poster.",
  ),
)

#section-header("certificates", language: "da")

#certificates(
  name: "AWS Certified Solutions Architect",
  issuer: "Amazon Web Services",
  date: "Mar 2024",
  id: "AWS-SAA-002",
  url: "https://aws.amazon.com/certification/",
  language: "da",
)

#certificates(
  name: "Google Cloud Professional Developer",
  issuer: "Google Cloud",
  date: "Jan 2024",
  id: "GCP-PD-001",
  url: "https://cloud.google.com/certification/",
  language: "da",
)

#certificates(
  name: "Certified Kubernetes Administrator",
  issuer: "Cloud Native Computing Foundation",
  date: "Nov 2023",
  id: "CKA-2023",
  url: "https://www.cncf.io/certification/",
  language: "da",
)

#section-header("projects", language: "da")

#project(
  name: "E-Commerce Platform",
  affiliation: "Personligt Projekt",
  dates: dates-helper(start-date: "Maj 2024", end-date: "Jul 2024", language: "da"),
  url: "github.com/ditbrugernavn/ecommerce-platform",
  highlights: (
    "Byggede full-stack e-commerce løsning ved hjælp af React, Node.js og PostgreSQL med betalingsintegration.",
    "Implementerede avancerede funktioner inklusiv real-time lagerstyring og anbefalingsmotor.",
    "Deployede ved hjælp af Docker containere med automatisk skalering på AWS ECS.",
  ),
)

#project(
  name: "Machine Learning Model Deployment",
  affiliation: "Akademisk Projekt",
  dates: dates-helper(start-date: "Feb 2024", end-date: "Apr 2024", language: "da"),
  url: "github.com/ditbrugernavn/ml-deployment",
  highlights: (
    "Udviklede og deployede machine learning modeller ved hjælp af TensorFlow og Flask til real-time forudsigelser.",
    "Skabte omfattende API dokumentation og automatiseret test suite med 95% kodedækning.",
    "Implementerede modelovervågning og A/B test framework til kontinuerlig forbedring.",
  ),
)

#project(
  name: "Mobil Sundhedssporing App",
  affiliation: "Teamprojekt",
  dates: dates-helper(start-date: "Sep 2023", end-date: "Dec 2023", language: "da"),
  url: "github.com/ditbrugernavn/health-tracker",
  highlights: (
    "Ledede 4-personers team der udviklede cross-platform mobil app ved hjælp af React Native og Firebase.",
    "Integrerede wearable device API'er og implementerede datavisualisering med interaktive diagrammer.",
    "Opnåede 4.8/5.0 brugervurdering i beta test med 500+ aktive brugere.",
  ),
)

#project(
  name: "Distribueret Chat Applikation",
  affiliation: "Open Source Bidrag",
  dates: dates-helper(start-date: "Jan 2023", end-date: "Mar 2023", language: "da"),
  url: "github.com/ditbrugernavn/distributed-chat",
  highlights: (
    "Byggede skalérbart real-time chat system ved hjælp af WebSockets, Redis og microservices arkitektur.",
    "Implementerede end-to-end kryptering og moderationsværktøjer til sikker kommunikation.",
    "Håndterede 1.000+ samtidige forbindelser med sub-100ms beskedleveringstider.",
  ),
)

#section-header("skills", language: "da")

#skills(
  categories: (
    (name: "Programmeringssprog", skills: ("Python", "JavaScript/TypeScript", "Java", "C++", "Go", "Rust", "SQL")),
    (name: "Frontend Teknologier", skills: ("React", "Vue.js", "Angular", "HTML5/CSS3", "Tailwind CSS", "Bootstrap")),
    (name: "Backend Teknologier", skills: ("Node.js", "Express", "Django", "Flask", "Spring Boot", "GraphQL", "REST API'er")),
    (name: "Databaser", skills: ("PostgreSQL", "MongoDB", "MySQL", "Redis", "Elasticsearch", "DynamoDB")),
    (name: "Cloud & DevOps", skills: ("AWS", "Google Cloud", "Docker", "Kubernetes", "Jenkins", "GitHub Actions", "Terraform")),
    (name: "Værktøjer & Platforme", skills: ("Git", "Visual Studio Code", "IntelliJ IDEA", "Postman", "Figma", "Jira", "Slack")),
    (name: "Soft Skills", skills: ("Teamledelse", "Projektledelse", "Teknisk Skrivning", "Offentlig Tale", "Problemløsning")),
  ),
)

*Sprog*: Dansk (Modersmål), [Andet Sprog] (Færdighedsniveau), [Tredje Sprog] (Grundlæggende)

*Interesser*: Software Arkitektur, Open Source Udvikling, Kunstig Intelligens, Cloud Computing, [Dine Personlige Interesser]

#section-header("references", language: "da")

#references(
  name: "Dr. Sarah Johnson, Professor i Datalogi, Dit Universitet",
  reference: "En exceptionel studerende og forsker som demonstrerede fremragende tekniske evner og lederegenskaber. Deres innovative tilgang til problemløsning og dedikation til excellens gør dem til et værdifuldt aktiv for ethvert team.",
  url: "https://www.linkedin.com/in/drsarahjohnson/",
)
