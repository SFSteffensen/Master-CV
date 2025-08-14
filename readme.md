# Sebastian F. Steffensen - CV & Resume System

A modern, multi-language CV and Resume system built with Typst, inspired by the [basic-resume template](https://github.com/stuxf/basic-typst-resume-template) but enhanced with additional fields and Danish language support.

## 📁 Project Structure

```
├── template.typ           # Main template with language support
├── justfile              # Build automation
├── Resume/
│   ├── English-Resume.typ
│   └── Danish-Resume.typ
├── CV/
│   ├── English-CV.typ
│   └── Danish-CV.typ
└── Generated PDFs in root folder
```

## 🚀 Quick Start

### Prerequisites

- [Typst CLI](https://github.com/typst/typst) installed and available in PATH
- [Just](https://github.com/casey/just) for build automation (optional but recommended)

### Setup

1. Clone or download this repository
2. Ensure the folder structure exists:
   ```bash
   just setup
   ```

### Build Commands

```bash
# Compile all documents
just all

# Compile specific document types
just resumes        # Both English and Danish resumes
just cvs           # Both English and Danish CVs

# Compile individual documents
just resume-en     # English Resume
just resume-da     # Danish Resume  
just cv-en         # English CV
just cv-da         # Danish CV

# Watch for changes (specify document path)
just watch Resume/English-Resume.typ

# Clean generated PDFs
just clean
```

## 🌍 Language Support

The template supports both English and Danish with localized section headers:

- **English**: Education, Work Experience, Projects, Licenses & Certifications, etc.
- **Danish**: Uddannelse, Erhvervserfaring, Projekter, Licenser & Certificeringer, etc.

Set language with the `language: "en"` or `language: "da"` parameter in the resume template.

## 📝 Template Features

### Enhanced Functions

Based on the original basic-resume template with these additions:

- **`certificates()`** - Enhanced with ID field and language support
- **`references()`** - New function for professional references
- **`section-header()`** - Automatic language-aware section headers
- **`edu()`** - Enhanced with honors, courses, and highlights
- **`work()`** - Enhanced with URL support and highlights
- **`project()`** - Enhanced with affiliation and highlights
- **`skills()`** - Multi-category skills organization

### Multi-language Configuration

The template includes a built-in language configuration system:

```typst
#let lang-config = (
  en: (
    education: "Education",
    work: "Work Experience", 
    // ... more translations
  ),
  da: (
    education: "Uddannelse",
    work: "Erhvervserfaring",
    // ... more translations
  )
)
```

## 📄 Document Types

### Resume (Short Format)
- Concise, 1-2 page format
- Essential work experience and education
- Key projects and skills
- Ideal for job applications

### CV (Comprehensive Format)  
- Complete career history
- All projects and experiences
- Detailed skills and qualifications
- Academic and detailed professional use

## 🎨 Customization

### Personal Information

Update personal details in each document file:

```typst
#let name = "Your Name"
#let location = "Your Location"
#let email = "your.email@domain.com"
// ... etc
```

### Styling

Modify the template call to customize appearance:

```typst
#show: resume.with(
  accent-color: "#26428b",     # Change accent color
  font: "Georgia",             # Change font
  paper: "a4",                 # Paper size (a4, us-letter)
  language: "en",              # Language (en, da)
  author-position: center,     # Name alignment
  // ... more options
)
```

## 🔧 Development

The system is designed to be easily extensible:

1. **Add new languages**: Extend `lang-config` in `template.typ`
2. **Add new sections**: Create new functions following the existing pattern
3. **Modify styling**: Update the template styling rules
4. **Add new document types**: Create new folders and corresponding justfile commands

## 📦 Output

Running `just all` generates these PDFs in the root folder:

- `Sebastian-Steffensen-Resume-EN.pdf`
- `Sebastian-Steffensen-Resume-DA.pdf` 
- `Sebastian-Steffensen-CV-EN.pdf`
- `Sebastian-Steffensen-CV-DA.pdf`

## 🙏 Credits

- Based on [basic-resume](https://github.com/stuxf/basic-typst-resume-template) by stufx
- Inspired by the original [cv.typ](https://github.com/jskherman/cv.typ) template
- Built with [Typst](https://typst.app/) - the modern markup and typesetting system