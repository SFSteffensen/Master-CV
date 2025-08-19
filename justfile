root := justfile_directory()

export TYPST_ROOT := root

[private]
default:
    @just --list --unsorted

# Compile all CVs and Resumes
all: resume-en resume-da cv-en cv-da
    @echo "✅ All documents compiled successfully!"

# Compile English Resume
resume-en:
    mkdir -p PDF-output
    typst compile --root . Resume/English-Resume.typ PDF-output/Sebastian-Steffensen-Resume-EN.pdf
    @echo "✅ English Resume compiled"

# Compile Danish Resume
resume-da:
    mkdir -p PDF-output
    typst compile --root . Resume/Danish-Resume.typ PDF-output/Sebastian-Steffensen-Resume-DA.pdf
    @echo "✅ Danish Resume compiled"

# Compile English CV
cv-en:
    mkdir -p PDF-output
    typst compile --root . CV/English-CV.typ PDF-output/Sebastian-Steffensen-CV-EN.pdf
    @echo "✅ English CV compiled"

# Compile Danish CV
cv-da:
    mkdir -p PDF-output
    typst compile --root . CV/Danish-CV.typ PDF-output/Sebastian-Steffensen-CV-DA.pdf
    @echo "✅ Danish CV compiled"

# Compile English Cover Letter
cover-letter-en:
    mkdir -p PDF-output
    typst compile --root . CoverLetter/English-CoverLetter.typ PDF-output/Sebastian-Steffensen-CoverLetter-EN.pdf
    @echo "✅ English Cover Letter compiled"

# Compile Danish Cover Letter
cover-letter-da:
    mkdir -p PDF-output
    typst compile --root . CoverLetter/Danish-CoverLetter.typ PDF-output/Sebastian-Steffensen-CoverLetter-DA.pdf
    @echo "✅ Danish Cover Letter compiled"

# Watch for changes and recompile (specify which document)
watch document:
    @echo "👀 Watching {{document}} for changes..."
    typst watch {{document}}

# Clean all generated PDFs
clean:
    rm -rf PDF-output
    @echo "🧹 Cleaned all PDF files"

# Quick compile just resumes
resumes: resume-en resume-da
    @echo "✅ All resumes compiled!"

# Quick compile just CVs
cvs: cv-en cv-da
    @echo "✅ All CVs compiled!"

# Quick compile just cover letters
cover-letters: cover-letter-en cover-letter-da
    @echo "✅ All cover letters compiled!"

# Compile example English Resume
example-resume-en:
    mkdir -p example-pdf
    typst compile --root . example/Resume/English-Resume.typ example-pdf/Example-Resume-EN.pdf
    @echo "✅ Example English Resume compiled"

# Compile example Danish Resume
example-resume-da:
    mkdir -p example-pdf
    typst compile --root . example/Resume/Danish-Resume.typ example-pdf/Example-Resume-DA.pdf
    @echo "✅ Example Danish Resume compiled"

# Compile example English CV
example-cv-en:
    mkdir -p example-pdf
    typst compile --root . example/CV/English-CV.typ example-pdf/Example-CV-EN.pdf
    @echo "✅ Example English CV compiled"

# Compile example Danish CV
example-cv-da:
    mkdir -p example-pdf
    typst compile --root . example/CV/Danish-CV.typ example-pdf/Example-CV-DA.pdf
    @echo "✅ Example Danish CV compiled"

# Compile example English Cover Letter
example-cover-letter-en:
    mkdir -p example-pdf
    typst compile --root . example/CoverLetter/English-CoverLetter.typ example-pdf/Example-CoverLetter-EN.pdf
    @echo "✅ Example English Cover Letter compiled"

# Compile example Danish Cover Letter
example-cover-letter-da:
    mkdir -p example-pdf
    typst compile --root . example/CoverLetter/Danish-CoverLetter.typ example-pdf/Example-CoverLetter-DA.pdf
    @echo "✅ Example Danish Cover Letter compiled"

# Compile all example documents
examples: example-resume-en example-resume-da example-cv-en example-cv-da example-cover-letter-en example-cover-letter-da
    @echo "✅ All example documents compiled!"

# Setup project (create directories if they don't exist)
setup:
    mkdir -p Resume CV CoverLetter example/Resume example/CV example/CoverLetter
    @echo "📁 Project directories created"
    # genereate the files for the respective directories "CV-DA.typ, CV-EN.typ, Resume-DA.typ, Resume-EN.typ" with all of them importing the "template.typ" file
    touch Resume/Danish-Resume.typ Resume/English-Resume.typ CV/Danish-CV.typ CV/English-CV.typ CoverLetter/Danish-CoverLetter.typ CoverLetter/English-CoverLetter.typ
    touch example/Resume/Danish-Resume.typ example/Resume/English-Resume.typ example/CV/Danish-CV.typ example/CV/English-CV.typ example/CoverLetter/Danish-CoverLetter.typ example/CoverLetter/English-CoverLetter.typ
    @echo "📄 Template files created in Resume, CV, CoverLetter, and example directories"

# Clean all generated PDFs
clean-examples:
    rm -rf example-pdf
    @echo "🧹 Cleaned example PDF files"
