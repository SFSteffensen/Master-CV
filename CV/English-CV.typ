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
  courses: (
    [Discrete Mathematics],
    [Mathematics 1A],
    [Introductory Programming],
    [Mathematics 1B],
    [Software Engineering 1],
    [Algorithms and Data Structures],
    [Physics 1],
  ),
  highlights: (),
  url: "https://www.dtu.dk",
  language: "en",
  consistent: true,
)

#section-header("work", language: "en")

#work(
  title: "Surveillance",
  company: "AGC Biologics A/S",
  location: "Copenhagen",
  dates: dates-helper(start-date: "Dec 2025", end-date: "Present"),
  url: "https://www.agcbio.com",
  highlights: (
    [Monitor production equipment, supply facilities, and laboratories outside normal working hours in a GMP-regulated biopharmaceutical environment.],
    [Serve as the primary point of contact externally during evening, night, and weekend shifts, ensuring compliance with quality and regulatory standards.],
    [Maintain detailed awareness of critical compliance, quality, and documentation requirements to ensure patient safety and uphold regulatory standards.],
    [Respond calmly and effectively to unexpected situations while maintaining high standards of accountability and teamwork.],
  ),
)

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
  name: "SimpleSnake & AdvancedSnake",
  affiliation: "DTU 02104 Exam Project",
  dates: dates-helper(start-date: "Jan 2026", end-date: "Jan 2026"),
  highlights: (
    [Developed a Java 21 / JavaFX Snake game in a team of four using a shared multi-module Gradle architecture, with a reusable MVC core library consumed by both the basic and advanced application variants.],
    [Designed and implemented a plugin system via a GamePlugin interface with full lifecycle hooks (move veto, onDotEaten, onGameOver, dispose), enabling the advanced version to be composed entirely from independently configurable, toggleable plugins.],
    [Authored high-score persistence using SQLite via JDBC, including schema initialization, parameterized queries, and top-N leaderboard logic with platform-specific data directory management.],
    [Wrote JUnit 5 unit and integration tests across model, controller, and persistence layers, using \@TempDir for isolated database testing and mock plugin strategies for controller verification.],
    [Maintained code quality with PMD static analysis and Google Java Format (Spotless), with CI/CD via GitHub Actions.],
  ),
)

#project(
  name: "Tretten - Hybrid market",
  affiliation: "Personal Project",
  dates: dates-helper(start-date: "Jan 2025", end-date: "Apr 2026"),
  highlights: (
    [Built a full-stack peer-to-peer rental marketplace using SvelteKit (TypeScript) and Tailwind CSS for the frontend, with a Rust (Axum) REST API backend and PostgreSQL, containerized via Docker Compose with nginx as a reverse proxy.],
    [Designed and implemented a RESTful API with nested routing, query-based filtering (category, search, price sort), enabling seamless data integration between frontend and backend.],
    [Implemented Redis for multi-layer caching and as a job queue backend (Apalis), enabling event-driven worker pattern.],
    [Deployed the full stack as Infrastructure-as-Code using Docker Compose with health-checked services (PostgreSQL, Redis), environment-driven configuration, and S3-compatible file storage (DigitalOcean Spaces) with CDN delivery.],
  ),
)

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
    (name: "Soft Skills", skills: ([Communication], [Critical Thinking], [Technical Writing], [Prompt Engineering])),
    (name: "Programming", skills: (
      [Rust],
      [C\#],
      [Java],
      [Python],
      [HTML & CSS],
      [Javascript/Typescript],
      [SQL],
      [SQLite],
      [Postgres],
      [Typst],
      [LaTeX],
    )),
    (name: "Tools", skills: (
      [Git],
      [Docker],
      [Visual Studio Code],
      [Various Jetbrains IDEs],
      [MacOS],
      [Linux],
      [CI/CD],
      [Claude Code],
      [Redis],
      [Apalis],
    )),
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
