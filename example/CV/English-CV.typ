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
  honors: ("3.8 / 4.0 Grade Average", "Magna Cum Laude"),
  courses: ("Data Structures & Algorithms", "Software Engineering", "Database Systems", "Computer Networks", "Operating Systems", "Web Development", "Machine Learning", "Computer Graphics", "Cybersecurity", "Mobile Development", "Human-Computer Interaction", "Software Testing", "Project Management"),
  highlights: ("*Senior Capstone Project*: AI-Powered Data Analytics Platform | *Computer Science, Mathematics*",),
  url: "https://www.university.edu",
  language: "en",
  consistent: true,
)

#section-header("work", language: "en")

#work(
  title: "Full Stack Developer",
  company: "Tech Solutions Inc.",
  location: "City",
  dates: dates-helper(start-date: "Jan 2024", end-date: "Present"),
  url: "https://www.techsolutions.com",
  highlights: (
    "Led development of microservices architecture serving 50,000+ daily active users across multiple platforms.",
    "Implemented CI/CD pipelines reducing deployment time by 70% and improving code quality through automated testing.",
    "Mentored 3 junior developers and established coding standards that improved team productivity by 25%.",
  ),
)

#work(
  title: "Software Engineering Intern",
  company: "Innovation Labs",
  location: "City",
  dates: dates-helper(start-date: "Jun 2023", end-date: "Aug 2023"),
  url: "https://www.innovationlabs.com",
  highlights: (
    "Developed RESTful APIs using Node.js and Express, handling over 10,000 requests per day.",
    "Collaborated with cross-functional teams to design and implement user authentication systems.",
    "Optimized database queries resulting in 40% improvement in application response times.",
  ),
)

#work(
  title: "Research Assistant",
  company: "University Research Lab",
  location: "City",
  dates: dates-helper(start-date: "Sep 2022", end-date: "May 2023"),
  url: "https://www.university.edu/research",
  highlights: (
    "Conducted research on machine learning algorithms for natural language processing applications.",
    "Co-authored 2 peer-reviewed publications and presented findings at 3 academic conferences.",
    "Developed Python scripts for data collection and analysis, processing datasets with 1M+ records.",
  ),
)

#section-header("certificates", language: "en")

#certificates(
  name: "AWS Certified Solutions Architect",
  issuer: "Amazon Web Services",
  date: "Mar 2024",
  id: "AWS-SAA-002",
  url: "https://aws.amazon.com/certification/",
  language: "en",
)

#certificates(
  name: "Google Cloud Professional Developer",
  issuer: "Google Cloud",
  date: "Jan 2024",
  id: "GCP-PD-001",
  url: "https://cloud.google.com/certification/",
  language: "en",
)

#certificates(
  name: "Certified Kubernetes Administrator",
  issuer: "Cloud Native Computing Foundation",
  date: "Nov 2023",
  id: "CKA-2023",
  url: "https://www.cncf.io/certification/",
  language: "en",
)

#section-header("projects", language: "en")

#project(
  name: "E-Commerce Platform",
  affiliation: "Personal Project",
  dates: dates-helper(start-date: "May 2024", end-date: "Jul 2024"),
  url: "github.com/yourusername/ecommerce-platform",
  highlights: (
    "Built full-stack e-commerce solution using React, Node.js, and PostgreSQL with payment integration.",
    "Implemented advanced features including real-time inventory management and recommendation engine.",
    "Deployed using Docker containers with automated scaling on AWS ECS.",
  ),
)

#project(
  name: "Machine Learning Model Deployment",
  affiliation: "Academic Project",
  dates: dates-helper(start-date: "Feb 2024", end-date: "Apr 2024"),
  url: "github.com/yourusername/ml-deployment",
  highlights: (
    "Developed and deployed machine learning models using TensorFlow and Flask for real-time predictions.",
    "Created comprehensive API documentation and automated testing suite with 95% code coverage.",
    "Implemented model monitoring and A/B testing framework for continuous improvement.",
  ),
)

#project(
  name: "Mobile Health Tracking App",
  affiliation: "Team Project",
  dates: dates-helper(start-date: "Sep 2023", end-date: "Dec 2023"),
  url: "github.com/yourusername/health-tracker",
  highlights: (
    "Led 4-person team developing cross-platform mobile app using React Native and Firebase.",
    "Integrated wearable device APIs and implemented data visualization with interactive charts.",
    "Achieved 4.8/5.0 user rating in beta testing with 500+ active users.",
  ),
)

#project(
  name: "Distributed Chat Application",
  affiliation: "Open Source Contribution",
  dates: dates-helper(start-date: "Jan 2023", end-date: "Mar 2023"),
  url: "github.com/yourusername/distributed-chat",
  highlights: (
    "Built scalable real-time chat system using WebSockets, Redis, and microservices architecture.",
    "Implemented end-to-end encryption and moderation tools for secure communication.",
    "Managed 1,000+ concurrent connections with sub-100ms message delivery times.",
  ),
)

#section-header("skills", language: "en")

#skills(
  categories: (
    (name: "Programming Languages", skills: ("Python", "JavaScript/TypeScript", "Java", "C++", "Go", "Rust", "SQL")),
    (name: "Frontend Technologies", skills: ("React", "Vue.js", "Angular", "HTML5/CSS3", "Tailwind CSS", "Bootstrap")),
    (name: "Backend Technologies", skills: ("Node.js", "Express", "Django", "Flask", "Spring Boot", "GraphQL", "REST APIs")),
    (name: "Databases", skills: ("PostgreSQL", "MongoDB", "MySQL", "Redis", "Elasticsearch", "DynamoDB")),
    (name: "Cloud & DevOps", skills: ("AWS", "Google Cloud", "Docker", "Kubernetes", "Jenkins", "GitHub Actions", "Terraform")),
    (name: "Tools & Platforms", skills: ("Git", "Visual Studio Code", "IntelliJ IDEA", "Postman", "Figma", "Jira", "Slack")),
    (name: "Soft Skills", skills: ("Team Leadership", "Project Management", "Technical Writing", "Public Speaking", "Problem Solving")),
  ),
)

*Languages*: English (Native), [Second Language] (Proficiency Level), [Third Language] (Basic)

*Interests*: Software Architecture, Open Source Development, Artificial Intelligence, Cloud Computing, [Your Personal Interests]

#section-header("references", language: "en")

#references(
  name: "Dr. Sarah Johnson, Professor of Computer Science, Your University",
  reference: "An exceptional student and researcher who demonstrated outstanding technical abilities and leadership skills. Their innovative approach to problem-solving and dedication to excellence make them a valuable asset to any team.",
  url: "https://www.linkedin.com/in/drsarahjohnson/",
)
