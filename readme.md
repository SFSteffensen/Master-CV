# Sebastian F. Steffensen - CV & Resume System

A modern, multi-language CV and Resume system built with Typst, inspired by the [basic-resume template](https://github.com/stuxf/basic-typst-resume-template) but enhanced with additional fields and Danish language support.

## 📁 Project Structure

```
├── template.typ           # Main template with language support
├── justfile              # Build automation
├── Resume/                # Personal resume files
│   ├── English-Resume.typ
│   └── Danish-Resume.typ
├── CV/                    # Personal CV files
│   ├── English-CV.typ
│   └── Danish-CV.typ
├── CoverLetter/           # Personal cover letter files
│   ├── English-CoverLetter.typ
│   └── Danish-CoverLetter.typ
├── example/               # Generic example templates
│   ├── Resume/
│   │   ├── English-Resume.typ
│   │   └── Danish-Resume.typ
│   ├── CV/
│   │   ├── English-CV.typ
│   │   └── Danish-CV.typ
│   └── CoverLetter/
│       ├── English-CoverLetter.typ
│       └── Danish-CoverLetter.typ
├── PDF-output/            # Personal compiled PDFs (for upload)
└── example-pdf/           # Example compiled PDFs (tracked in git)
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
just cover-letters # Both English and Danish cover letters

# Compile individual documents
just resume-en     # English Resume
just resume-da     # Danish Resume
just cv-en         # English CV
just cv-da         # Danish CV
just cover-letter-en # English Cover Letter
just cover-letter-da # Danish Cover Letter

# Compile example documents (for showcasing the system)
just examples           # All example documents
just example-resume-en  # Example English Resume
just example-resume-da  # Example Danish Resume
just example-cv-en      # Example English CV
just example-cv-da      # Example Danish CV
just example-cover-letter-en # Example English Cover Letter
just example-cover-letter-da # Example Danish Cover Letter

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
- **`cover-letter()`** - Professional cover letter template with recipient information

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

### Cover Letter (Professional Format)

- Personalized business letter format
- Recipient and company information
- Professional greeting and closing
- Customizable for each application
- **Note**: Cover letters are compiled locally only and are NOT uploaded via GitHub Actions

## 📘 Example Templates

The `example/` directory contains clean, generic templates perfect for:

### 🎯 **Getting Started**

- **Fork-friendly templates** with placeholder content
- **Clear customization points** marked with comments
- **Professional example content** demonstrating best practices
- **Multi-language support** (English and Danish)

### 🚀 **Usage Scenarios**

- **New users** can start with example templates and customize them
- **Demonstrations** of the system's full capabilities
- **Educational purposes** showing proper CV/Resume structure
- **Template testing** without personal information

### 📋 **What's Included**

- Complete resume examples (short format)
- Comprehensive CV examples (detailed format)
- Cover letter templates with Lorem ipsum content
- All templates available in both English and Danish

### 🛠️ **Customization Guide**

1. Copy desired templates from `example/` to your personal directories
2. Replace placeholder information with your details
3. Customize colors, fonts, and styling in template calls
4. Compile using regular justfile commands

## 🔄 Personal vs Example Usage

### 📁 **Personal Files** (`Resume/`, `CV/`, `CoverLetter/`)

- **Contains your actual information** (name, experience, contact details)
- **Used for real applications** and professional purposes
- **Compiled to `PDF-output/`** with standard commands (`just all`, `just resume-en`, etc.)
- **Uploaded to cloud** via GitHub Actions (CVs and Resumes only)
- **Private and customized** for your specific background

### 📘 **Example Files** (`example/`)

- **Generic templates** with placeholder content
- **Educational and demonstration** purposes
- **Fork-friendly** with no personal information
- **Compiled to `example-pdf/`** with example commands (`just examples`, `just example-resume-en`, etc.)
- **Tracked in git** for easy access and demonstration
- **Perfect starting point** for new users

### 🎯 **Recommended Workflow**

1. **Start with examples** to understand the system
2. **Copy example templates** to personal directories
3. **Customize personal templates** with your information
4. **Use personal templates** for actual applications
5. **Keep examples** for reference and system updates

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

Running `just all` generates these PDFs and organizes them:

**Personal PDFs (compiled to `PDF-output/` directory):**

- `PDF-output/Sebastian-Steffensen-Resume-EN.pdf`
- `PDF-output/Sebastian-Steffensen-Resume-DA.pdf`
- `PDF-output/Sebastian-Steffensen-CV-EN.pdf`
- `PDF-output/Sebastian-Steffensen-CV-DA.pdf`
- `PDF-output/Sebastian-Steffensen-CoverLetter-EN.pdf` (via `just cover-letter-en`)
- `PDF-output/Sebastian-Steffensen-CoverLetter-DA.pdf` (via `just cover-letter-da`)

**Example PDFs (compiled to `example-pdf/` directory):**

- `example-pdf/Example-Resume-EN.pdf` (via `just example-resume-en`)
- `example-pdf/Example-Resume-DA.pdf` (via `just example-resume-da`)
- `example-pdf/Example-CV-EN.pdf` (via `just example-cv-en`)
- `example-pdf/Example-CV-DA.pdf` (via `just example-cv-da`)
- `example-pdf/Example-CoverLetter-EN.pdf` (via `just example-cover-letter-en`)
- `example-pdf/Example-CoverLetter-DA.pdf` (via `just example-cover-letter-da`)

### 🚀 GitHub Actions Workflow

The automated workflow compiles and uploads CV and Resume files from the `PDF-output/` directory to Cloudflare R2. Cover letters are intentionally excluded from automated uploads to maintain privacy and allow for customization per application.

### 🔤 Custom Fonts in GitHub Actions

The workflow uses fonts from a private repository to ensure consistent styling in CI builds.

**Setup:**

1. **Private fonts repository**: [SFSteffensen/MyFonts](https://github.com/SFSteffensen/MyFonts) (private)
   - Contains Georgia and other custom fonts
   - Keeps font files private and secure

2. **Access token**: A Personal Access Token (PAT) with `repo` scope is stored as `FONTS_REPO_TOKEN` secret
   - Go to GitHub Settings → Developer settings → Personal access tokens
   - Generate token with `repo` scope
   - Add as repository secret in Master-CV

3. **Workflow integration**: The workflow automatically:
   - Checks out the private fonts repository
   - Installs fonts to the system font directory
   - Caches fonts for faster builds

**Local Development:**

- Install fonts on your system normally (e.g., in `/Library/Fonts` on macOS)
- The workflow handles font installation in CI automatically

## 📝 Content Formatting (v2.0+)

The template now supports **Typst formatting** (like `*bold*`, `_italic_`, etc.) in highlights, honors, courses, and skills!

### Migration Guide

**Old syntax (strings):**

```typst
highlights: ("This is plain text", "More plain text"),
courses: ("Math A", "Physics B"),
skills: ("Rust", "Python", "C#"),
```

**New syntax (content):**

```typst
highlights: ([This is *bold* and _italic_], [More *formatted* text]),
courses: ([Math A], [Physics B]),
skills: ([Rust], [Python], [C\#]),  // Note: escape # with backslash
```

### Key Changes

1. **Square brackets `[]` instead of quotes `""`** - This tells Typst to parse the content
2. **Escape hash symbols** - Use `C\#` instead of `C#` (hash triggers Typst commands)
3. **Formatting works!** - Use `*bold*`, `_italic_`, `#text(fill: red)[colored]`, etc.

### Example

```typst
#edu(
  institution: "University Name",
  degree: "Bachelor of Science",
  honors: ([*Summa Cum Laude* - 4.0 GPA],),
  courses: ([Advanced *Machine Learning*], [_Data Structures_], [C\#/.NET Development]),
  highlights: (
    [Led development of *award-winning* project with _15+ team members_],
    [Published research in *top-tier* conference],
  ),
)
```

All existing documents have been updated to use the new content-based format.

## 🙏 Credits

- Based on [basic-resume](https://github.com/stuxf/basic-typst-resume-template) by stufx
- Inspired by the original [cv.typ](https://github.com/jskherman/cv.typ) template
- Built with [Typst](https://typst.app/) - the modern markup and typesetting system
