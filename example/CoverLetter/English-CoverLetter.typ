#import "../../template.typ": *

// Personal information - CUSTOMIZE THESE VALUES
#let name = "Your Full Name"
#let location = "Your City, Country"
#let email = "your.email@domain.com"
#let phone = "+XX XX XX XX XX"
#let personal-site = "www.yourwebsite.com"

// Recipient information (customize for each application)
#let recipient-name = "Hiring Manager"
#let recipient-title = "Position Title"
#let company = "[Company Name]"
#let company-address = "[Company Address]"
#let position = "[Position You're Applying For]"

#show: cover-letter.with(
  author: name,
  location: location,
  email: email,
  phone: phone,
  personal-site: personal-site,
  recipient-name: recipient-name,
  recipient-title: recipient-title,
  company: company,
  company-address: company-address,
  date: datetime.today().display("[day padding:zero]/[month padding:zero]/[year]"),
  subject: "Application for " + position + " Position",
  accent-color: "#26428b",
  link-color: "#000000",
  font: "Georgia",
  paper: "a4",
  language: "en",
)

#lorem(50)

#lorem(60)

#lorem(45)

#lorem(55)
