# Example Templates

This directory contains clean, generic templates that demonstrate the full capabilities of the CV/Resume system. These templates are perfect for getting started or understanding how to structure your documents.

## 🎯 Purpose

- **Fork-friendly**: No personal information included
- **Educational**: Shows best practices and proper structure
- **Comprehensive**: Demonstrates all available features
- **Multi-language**: English and Danish versions available

## 📁 Structure

```
example/
├── Resume/
│   ├── English-Resume.typ    # Short-format English resume
│   └── Danish-Resume.typ     # Short-format Danish resume
├── CV/
│   ├── English-CV.typ        # Comprehensive English CV
│   └── Danish-CV.typ         # Comprehensive Danish CV
└── CoverLetter/
    ├── English-CoverLetter.typ  # Professional English cover letter
    └── Danish-CoverLetter.typ   # Professional Danish cover letter
```

## 🚀 Quick Start

### 1. Compile Examples

```bash
# Compile all example documents (outputs to example-pdf/)
just examples

# Or compile individual documents
just example-resume-en      # English Resume
just example-cv-da          # Danish CV
just example-cover-letter-en # English Cover Letter
```

### 2. Customize for Your Use

1. **Copy templates** to your personal directories:

   ```bash
   cp example/Resume/English-Resume.typ Resume/
   cp example/CV/English-CV.typ CV/
   cp example/CoverLetter/English-CoverLetter.typ CoverLetter/
   ```

2. **Edit personal information** at the top of each file:

   ```typst
   // Change these values
   #let name = "Your Full Name"
   #let location = "Your City, Country"
   #let email = "your.email@domain.com"
   // ... etc
   ```

3. **Replace example content** with your experience:
   - Education details
   - Work experience
   - Projects and achievements
   - Skills and certifications

4. **Customize styling** (optional):
   ```typst
   #show: resume.with(
     accent-color: "#your-color",
     font: "Your-Font",
     // ... other options
   )
   ```

## 📋 Template Features Demonstrated

### Resume Templates

- **Concise format** (1-2 pages)
- **Essential sections**: Education, Work, Skills, Projects
- **Professional layout** with clean typography
- **Contact information** header

### CV Templates

- **Comprehensive format** (detailed)
- **Complete sections**: All work experience, detailed projects
- **Academic focus** with research and publications
- **Extensive skills** and certifications

### Cover Letter Templates

- **Professional business format**
- **Recipient information** structure
- **Automatic date** formatting
- **Lorem ipsum** content structure
- **Language-appropriate** greetings and closings

## 🎨 Customization Options

### Colors

```typst
accent-color: "#26428b"  # Header and accent color
link-color: "#000000"    # Link color
```

### Fonts

```typst
font: "Georgia"          # Available: Georgia, Times, Helvetica, etc.
```

### Layout

```typst
author-position: center         # left, center, right
personal-info-position: center  # left, center, right
paper: "a4"                    # a4, us-letter
```

### Language

```typst
language: "en"  # "en" for English, "da" for Danish
```

## 🌍 Language Support

Both English and Danish templates include:

- **Localized section headers** (Education/Uddannelse, etc.)
- **Date formatting** appropriate for each region
- **Cultural conventions** for CV/Resume structure
- **Professional terminology** in each language

## 💡 Tips for Customization

1. **Start simple**: Begin with the resume template, then expand to CV
2. **Keep it relevant**: Only include experience relevant to your field
3. **Be consistent**: Use the same tense and formatting throughout
4. **Proofread**: Especially important for multi-language documents
5. **Test compilation**: Always compile after major changes

## 📁 Compiled Examples

When you run `just examples`, the compiled PDFs are saved to `example-pdf/`:

- `example-pdf/Example-Resume-EN.pdf`
- `example-pdf/Example-Resume-DA.pdf`
- `example-pdf/Example-CV-EN.pdf`
- `example-pdf/Example-CV-DA.pdf`
- `example-pdf/Example-CoverLetter-EN.pdf`
- `example-pdf/Example-CoverLetter-DA.pdf`

These compiled examples are tracked in git so you can immediately see what the output looks like without needing to compile them yourself.

## 🔗 Related Documentation

- [Main README](../readme.md) - Complete system documentation
- [Template Reference](../template.typ) - Technical template documentation
- [Justfile Commands](../justfile) - All available build commands

## 🤝 Contributing

If you create improvements to these examples or find issues:

1. Fork the repository
2. Make your changes
3. Submit a pull request with clear description

These templates are designed to showcase the system's capabilities while remaining accessible to new users.
