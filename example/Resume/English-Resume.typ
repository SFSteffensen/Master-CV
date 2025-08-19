#import "../../template.typ": *

// Personal information - CUSTOMIZE THESE VALUES
#let name = "Your Full Name"
#let location = "Your City, Country"
#let email = "your.email@domain.com"
#let github = "github.com/yourusername"
#let linkedin = "linkedin.com/in/yourusername"
#let phone = "+XX XX XX XX XX"
#let personal-site = "www.yourwebsite.com"

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
  language: "en",
  author-position: center,
  personal-info-position: center,
)

#section-header("education", language: "en")

#edu(
  institution: "Your University",
  location: "City, Country",
  dates: dates-helper(start-date: "Aug 2020", end-date: "Jun 2024"),
  degree: "Bachelor of Science in Computer Science",
  honors: ("3.8 / 4.0 Grade Average",),
  courses: ("Data Structures", "Algorithms", "Software Engineering", "Database Systems", "Web Development"),
  highlights: ("*Senior Project*: Machine Learning Application for Data Analysis | *Computer Science, Mathematics*",),
  url: "https://www.university.edu",
  language: "en",
  consistent: true,
)

#section-header("work", language: "en")

#work(
  title: "Software Developer Intern",
  company: "Tech Company Inc.",
  location: "City",
  dates: dates-helper(start-date: "Jun 2023", end-date: "Aug 2023"),
  url: "https://www.techcompany.com",
  highlights: (
    "Developed full-stack web applications using React and Node.js, serving over 1,000 daily users.",
    "Collaborated with senior developers to implement new features and optimize database queries.",
    "Participated in code reviews and contributed to team documentation and best practices.",
  ),
)

#section-header("certificates", language: "en")

#certificates(
  name: "AWS Certified Developer",
  issuer: "Amazon Web Services",
  date: "Mar 2024",
  id: "AWS-CDA-001",
  url: "https://aws.amazon.com/certification/",
  language: "en",
)

#section-header("projects", language: "en")

#project(
  name: "Personal Portfolio Website",
  affiliation: "Personal Project",
  dates: dates-helper(start-date: "Jan 2024", end-date: "Feb 2024"),
  url: "github.com/yourusername/portfolio",
  highlights: (
    "Built responsive portfolio website using modern web technologies and best practices.",
    "Implemented automated deployment pipeline with continuous integration and testing.",
  ),
)

#project(
  name: "Task Management App",
  affiliation: "University Capstone Project",
  dates: dates-helper(start-date: "Sep 2023", end-date: "Dec 2023"),
  highlights: (
    "Developed cross-platform mobile application using React Native and Firebase.",
    "Implemented real-time synchronization and offline functionality for seamless user experience.",
  ),
)

#section-header("skills", language: "en")

#skills(
  categories: (
    (name: "Programming", skills: ("Python", "JavaScript", "Java", "C++", "HTML & CSS", "SQL")),
    (name: "Tools", skills: ("Git", "Docker", "AWS", "Visual Studio Code", "Linux", "CI/CD")),
    (name: "Frameworks", skills: ("React", "Node.js", "Express", "Django", "React Native")),
    (name: "Soft Skills", skills: ("Problem Solving", "Team Collaboration", "Communication", "Project Management")),
  ),
)

*Languages*: English (Native), [Second Language] (Proficiency Level)

*Interests*: Software Development, Open Source, Technology, [Your Hobbies]

#section-header("references", language: "en")

#references(
  name: "Dr. Jane Smith, Professor, Your University",
  reference: "An excellent student who demonstrated strong analytical skills and dedication to learning. Their ability to tackle complex problems and work effectively in team environments is impressive.",
  url: "https://www.linkedin.com/in/drjanesmith/",
)
