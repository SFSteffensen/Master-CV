#import "../template.typ": *

// Personal information
#let name = "Sebastian F. Steffensen"
#let location = "Søborg, Capital Region, Denmark"
#let email = "Sebastian@sfsteffensen.dev"
#let phone = "(+45) 27 60 62 96"
#let personal-site = "www.sfsteffensen.dev"

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

#lorem(310)

#lorem(800)

#lorem(540)

#lorem(540)
