#import "../template.typ": *

// Personal information
#let name = "Sebastian F. Steffensen"
#let location = "Søborg, Hovedstaden, Danmark"
#let email = "Sebastian@sfsteffensen.dev"
#let phone = "(+45) 27 60 62 96"
#let personal-site = "www.sfsteffensen.dev"

// Recipient information (customize for each application)
#let recipient-name = "Rekrutteringsansvarlig"
#let recipient-title = ""
#let company = "[Virksomhedsnavn]"
#let company-address = "[Virksomhedsadresse]"
#let position = "[Stillingsbetegnelse]"

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
  subject: "Ansøgning til stillingen som " + position,
  accent-color: "#26428b",
  link-color: "#000000",
  font: "Georgia",
  paper: "a4",
  language: "da",
)

#lorem(50)

#lorem(60)

#lorem(45)

#lorem(55)
