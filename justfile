root := justfile_directory()

export TYPST_ROOT := root

[private]
default:
    @just --list --unsorted

# Compile all CVs and Resumes
all: resume-en resume-da cv-en cv-da organize-pdfs
    @echo "✅ All documents compiled successfully!"

# Compile English Resume
resume-en:
    typst compile --root . Resume/English-Resume.typ Sebastian-Steffensen-Resume-EN.pdf
    @echo "✅ English Resume compiled"

# Compile Danish Resume
resume-da:
    typst compile --root . Resume/Danish-Resume.typ Sebastian-Steffensen-Resume-DA.pdf
    @echo "✅ Danish Resume compiled"

# Compile English CV
cv-en:
    typst compile --root . CV/English-CV.typ Sebastian-Steffensen-CV-EN.pdf
    @echo "✅ English CV compiled"

# Compile Danish CV
cv-da:
    typst compile --root . CV/Danish-CV.typ Sebastian-Steffensen-CV-DA.pdf
    @echo "✅ Danish CV compiled"

# Compile English Cover Letter
cover-letter-en:
    typst compile --root . CoverLetter/English-CoverLetter.typ Sebastian-Steffensen-CoverLetter-EN.pdf
    @echo "✅ English Cover Letter compiled"

# Compile Danish Cover Letter
cover-letter-da:
    typst compile --root . CoverLetter/Danish-CoverLetter.typ Sebastian-Steffensen-CoverLetter-DA.pdf
    @echo "✅ Danish Cover Letter compiled"

# Watch for changes and recompile (specify which document)
watch document:
    @echo "👀 Watching {{document}} for changes..."
    typst watch {{document}}

# Clean all generated PDFs
clean:
    rm -f *.pdf
    rm -rf pdf-output
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

# Setup project (create directories if they don't exist)
setup:
    mkdir -p Resume CV CoverLetter
    @echo "📁 Project directories created"
    # genereate the files for the respective directories "CV-DA.typ, CV-EN.typ, Resume-DA.typ, Resume-EN.typ" with all of them importing the "template.typ" file
    touch Resume/Danish-Resume.typ Resume/English-Resume.typ CV/Danish-CV.typ CV/English-CV.typ CoverLetter/Danish-CoverLetter.typ CoverLetter/English-CoverLetter.typ
    @echo "📄 Template files created in Resume, CV, and CoverLetter directories"

# Organize PDFs into output directory (excludes cover letters)
organize-pdfs:
    mkdir -p pdf-output
    -mv *Resume*.pdf pdf-output/ 2>/dev/null || true
    -mv *CV*.pdf pdf-output/ 2>/dev/null || true
    @echo "📁 PDFs organized in pdf-output directory (cover letters excluded)"
