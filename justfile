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
    typst compile Resume/English-Resume.typ Sebastian-Steffensen-Resume-EN.pdf
    @echo "✅ English Resume compiled"

# Compile Danish Resume  
resume-da:
    typst compile Resume/Danish-Resume.typ Sebastian-Steffensen-Resume-DA.pdf
    @echo "✅ Danish Resume compiled"

# Compile English CV
cv-en:
    typst compile CV/English-CV.typ Sebastian-Steffensen-CV-EN.pdf
    @echo "✅ English CV compiled"

# Compile Danish CV
cv-da:
    typst compile CV/Danish-CV.typ Sebastian-Steffensen-CV-DA.pdf
    @echo "✅ Danish CV compiled"

# Watch for changes and recompile (specify which document)
watch document:
    @echo "👀 Watching {{document}} for changes..."
    typst watch {{document}}

# Clean all generated PDFs
clean:
    rm -f *.pdf
    @echo "🧹 Cleaned all PDF files"

# Quick compile just resumes
resumes: resume-en resume-da
    @echo "✅ All resumes compiled!"

# Quick compile just CVs  
cvs: cv-en cv-da
    @echo "✅ All CVs compiled!"

# Setup project (create directories if they don't exist)
setup:
    mkdir -p Resume CV
    @echo "📁 Project directories created"
    # genereate the files for the respective directories "CV-DA.typ, CV-EN.typ, Resume-DA.typ, Resume-EN.typ" with all of them importing the "template.typ" file
    touch Resume/Danish-Resume.typ Resume/English-Resume.typ CV/Danish-CV.typ CV/English-CV.typ
    @echo "📄 Template files created in Resume and CV directories"
    