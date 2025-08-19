#import "../../template.typ": *

// Personal information - TILPAS DISSE VÆRDIER
#let name = "Dit Fulde Navn"
#let location = "Din By, Danmark"
#let email = "din.email@domæne.dk"
#let phone = "(+45) XX XX XX XX"
#let personal-site = "www.dinhjemmeside.dk"

// Recipient information (tilpas for hver ansøgning)
#let recipient-name = "Rekrutteringsansvarlig"
#let recipient-title = "Stillingsbetegnelse"
#let company = "[Virksomhedsnavn]"
#let company-address = "[Virksomhedsadresse]"
#let position = "[Stilling Du Søger]"

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
