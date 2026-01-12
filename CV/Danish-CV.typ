#import "../template.typ": *

// Personal information
#let name = "Sebastian F. Steffensen"
#let location = "Søborg, Hovedstaden, Danmark"
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

#section-header("education", language: "da")

#edu(
  institution: "Zealand Business College",
  location: "Slagelse, Sjælland, Danmark",
  dates: dates-helper(start-date: "Aug 2021", end-date: "Jun 2024", language: "da"),
  degree: "Højere Teknisk Eksamen i Robotteknologi",
  honors: ([9.9 / 12.0 Gennemsnitlig karakter],),
  courses: (
    [Matematik A],
    [Teknik A],
    [Engelsk A],
    [Dansk A],
    [Programmering B],
    [Fysik B],
    [Kemi B],
    [Historie B],
    [Teknologi B],
    [Biologi C],
    [Kommunikation og IT C],
    [Samfundsfag C],
    [Psykologi C],
  ),
  highlights: ([*StudieOmrådeProjekt (SOP)*: Neurale netværk: Teori, praksis og optimering | *Matematik A, Programmering B*],),
  url: "https://www.zbc.dk",
  language: "da",
  consistent: true,
)

#edu(
  institution: "Danmarks Tekniske Universitet",
  location: "Lyngby, Sjælland, Danmark",
  dates: dates-helper(start-date: "Sep 2025", end-date: "Jun 2028", language: "da"),
  degree: "Bachelor i Software Teknologi",
  courses: ([Diskret Matematik], [Matematik 1A], [Indledende Programmering]),
  highlights: (),
  url: "https://www.dtu.dk",
  language: "da",
  consistent: true,
)

#section-header("work", language: "da")

#work(
  title: "Kontraktudvikler",
  company: "Zealand Business College (ZBC)",
  location: "Slagelse",
  dates: dates-helper(start-date: "Jan 2024", end-date: "Jun 2024", language: "da"),
  url: "https://www.zbc.dk",
  highlights: (
    [Ledede udviklingen af en digital løsning for ZBC's konditorafdeling i et tre-personers team, skabte en hjemmeside til styring af ingredienser og overholdelse af ernæringsstandarder.],
    [Designet, bygget og administreret en PostgreSQL-database, inklusiv et sikkert adminpanel til kontrol af ingrediens- og næringsdata.],
    [Udviklede autentificeringsmekanismer for at sikre eksklusiv administrativ adgang, opretholdelse af dataintegritet og sikkerhed.],
  ),
)

#work(
  title: "Ungarbejder",
  company: "Multiline",
  location: "Søborg",
  dates: dates-helper(start-date: "Sep 2018", end-date: "Sep 2024", language: "da"),
  url: "https://multiline.dk",
  highlights: (
    [Jeg arbejdede som ungarbejder hos Multiline, specifikt i lager- og pakkeafdelingen. Mine opgaver inkluderede materiale sortering og sikring af korrekt bortskaffelse og genbrug af affald.],
  ),
)

#section-header("certificates", language: "da")

#certificates(
  name: "Cyber Karriere",
  issuer: "Talentfulde Unge Øst",
  date: "Sep 2024",
  id: "CC-2024",
  url: "https://cdn.sfsteffensen.dev/CyberCareer.pdf",
  language: "da",
)

#certificates(
  name: "Cyber Talent Akedemi",
  issuer: "Talentfulde Unge Øst",
  date: "Apr 2023",
  id: "CTA-2023",
  url: "https://cdn.sfsteffensen.dev/CTA-Diploma.pdf",
  language: "da",
)

#section-header("projects", language: "da")

#project(
  name: "SolidJS Portfolio",
  affiliation: "Personligt Projekt",
  dates: dates-helper(start-date: "May 2024", end-date: "Jun 2024", language: "da"),
  url: "www.sfsteffensen.dev",
  highlights: (
    [Erstattede min tidligere portefølje med en ny skrevet i SolidJS.],
    [Fokuserede på at forbedre brugeroplevelsen og forbedre ydeevnen med optimeret routing og state management.],
  ),
)

#project(
  name: "DTime",
  affiliation: "Personligt Projekt",
  dates: dates-helper(start-date: "Aug 2024", end-date: "Aug 2024", language: "da"),
  url: "github.com/SFSteffensen/DTime",
  highlights: (
    [Udviklede en simpel og effektiv applikation til beregning af downloadtid baseret på internethastighed.],
    [Bygget med en Rust-backend og en SolidJS-frontend ved hjælp af Tauri V2.],
    [Administrerede et offentligt GitHub-repository, implementerede CI/CD ved hjælp af GitHub Actions for at sikre korrekte regler, kvalitetssikring og kontinuerlig integration/levering.],
    [Fik praktisk erfaring med opsætning af automatiserede workflows til test og deployment.],
  ),
)

#project(
  name: "PassMan - Adgangskodehåndteringen",
  affiliation: "Programmeringseksamen",
  dates: dates-helper(start-date: "Jan 2023", end-date: "May 2023", language: "da"),
  highlights: (
    [Udviklede en adgangskodehåndtering ved hjælp af Tauri, Rust, Svelte og Sveltekit, inklusivt et BCrypt hash-check-system og en tilpasselig adgangskodegenerator med automatisk entropiberegning.],
    [Konstruerede et robust system til opbevaring og håndtering af brugerkonti og adgangskoder.],
  ),
)

#project(
  name: "RustCNN",
  affiliation: "Det individuelle projekt",
  dates: dates-helper(start-date: "Sep 2023", end-date: "Dec 2023", language: "da"),
  url: "cdn.sfsteffensen.dev/ConvNetRust.pdf",
  highlights: (
    [Udviklede en Rust-baseret CNN, der integrerer flere aktiveringsfunktioner og optimeringsteknikker, forbedrer modelpræstation og nøjagtighed.],
    [Udførte omfattende test og benchmarking, forbedrede netværkseffektivitet og pålidelighed betydeligt.],
  ),
)

#section-header("skills", language: "da")

#skills(categories: ((
  name: "Soft Skills",
  skills: ([Kommunikation], [Kritisk tænkning], [Debatterende], [Overtalende skrivning], [Teknisk skrivning], [Prompt Engineering]),
), (
  name: "Programmering",
  skills: ([Rust], [C\#], [Python], [HTML & CSS], [Javascript/Typescript], [Typst], [LaTeX]),
), (name: "Værktøjer", skills: (
  [Microsoft Word],
  [Docker],
  [Git],
  [Visual Studio Code],
  [Forskellige Jetbrains IDE'er],
  [MacOS],
  [Unity],
  [CI/CD],
)), (name: "Webudvikling", skills: ([Svelte], [Tailwind CSS], [Node & Bun], [NextJS], [SolidJS])),))

*Sprog*: Dansk (Modersmål), Engelsk (Modersmål)

*Interesser*: Programmering, Videospil, Læsning af faglitteratur, Musik

#section-header("references", language: "da")

#references(
  name: "Lars Reng, CIO, Zealand Business College",
  reference: "Sebastian er en dedikeret og talentfuld studerende og undervisningsassistent, der har vist stort potentiale i sine studier. Hans evne til at forstå koncepter og anvende dem i praktiske projekter, samt at hjælpe og guide sine kammerater, er imponerende. Jeg er ikke i tvivl om, at han vil udmærke sig i enhver rolle, han påtager sig i fremtiden.",
  url: "https://www.linkedin.com/in/larsreng/",
)
