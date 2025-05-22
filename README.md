# Vocabulary-Discovery-in-Late-Antique-Texts

A workflow demonstration given at the Annual Meeting of the North
American Patristics Society, May 22, 2025 in Chicago.

(This repository has been made public in advance of the live event, so
you may be viewing it before I've actually given the talk.)

## Purpose

To understand the purpose and use-case of the talk, please consult the paper
available as `Vocabulary-Discovery-in-Late-Antique-Texts.md` or 
`Vocabulary-Discovery-in-Late-Antique-Texts.pdf`. This README offers
instructions for

1. cloning this repository to your local machine for testing
2. installing tools
3. finding additional resources for learning and experimentation

## Structure of the Repository
```
.
├── .gitignore
├── LICENSE.md
├── Makefile
├── README.md
├── Vocabulary-Discovery-in-Late-Antique-Texts.md
├── Vocabulary-Discovery-in-Late-Antique-Texts.tex
├── build
│   ├── Vocabulary-Discovery-in-Late-Antique-Texts.pdf
│   └── examples-handout.pdf
├── corpus
│   └── grep_to_csv.awk
├── examples-handout.tex
├── examples.md
├── repaginate.tex
├── sources
└── vocabulary.bib
```

Code examples are in the files `examples.md` and
`examples-handout.pdf`.

The `corpus` directory is intended as a convenient place in which to
put repaginated pdfs that are ready for searching. I recommend that
when you test this workflow, you `cd` into the `corpus` directory and
then invoke your searches from there.

The `build` directory holds the results of the build recipes in the
`Makefile`. End users testing the workflow will not ordinarily need to
invoke them, but those who wish to learn about Makefiles may find it
useful to take a peek.

The `sources` directory is a convenient place to put pdf files which
you intend to include in the `repaginate.tex` file as part of the
repagination step.

# Cloning the repository

The usual way: 

First `cd` into the directory you want to store the repository on your
local machine, then run:

```
git clone https://github.com/theusefulmonk/Vocabulary-Discovery-in-Late-Antique-Texts.git
```

# Installing tools

## Awk and grep

`awk` and `grep` are ordinarily already installed. More up to date
versions may be available in your platform's package manager.

## pdfgrep

Please follow the [instructions for your platform](https://pdfgrep.org/download.html).

## LaTeX

The recommended way is to download a [TeX distribution](https://www.latex-project.org/get/). For most common
UNIX systems, TeX Live is the most suitable one. It's quite large but
unless you are very short on disk space, I recommend you download it
all. It's very convenient to have access to such an extensive list of
packages.

# Learning Regular Expressions

Many tutorials exist, but it is often best to learn by trying to solve
a specific problem of your own. For those that would like a book, I
recommend Michael Fitzgerald's [*Introducing Regular Expressions*](https://www.ebooks.com/en-us/book/967690/introducing-regular-expressions/michael-fitzgerald/).
One of the best ways to learn is to experiment using an online regex
tester. My usual choice is [pythex.org](https://pythex.org) because
I'm often using regexes in Python.

# Learning Awk

Many tutorials are available for free, but the most comprehensive
guide comes from the book written by the authors of Awk: [*The Awk Programming Language*](https://www.awk.dev).

# Recommendations for Non-Free tools

I have no financial interest in recommending the following proprietary software:

1. [Abbyy Fine Reader](https://pdf.abbyy.com/pricing/?utm_term=&utm_campaign=(FR)+NA+-+FineReader+-+Perfomance+Max&utm_source=adwords&utm_medium=ppc&hsa_acc=4019964884&hsa_cam=17398710212&hsa_grp=&hsa_ad=&hsa_src=x&hsa_tgt=&hsa_kw=&hsa_mt=&hsa_net=adwords&hsa_ver=3&gad_source=1&gbraid=0AAAAADgaEAU5qqWO9j6kpy_WKRNV0wSrz&gclid=CjwKCAjwwqfABhBcEiwAZJjC3qly-wyQaQn8ObHlGMJZNYJbcbvZ6xRJDJfa-16iISK1F1cfto4GCBoCzSkQAvD_BwE) produces the cleanest and most accurate OCR in my
   experience. On MacOS, this software is bundled into the OCR
   functionality of [DEVONthink](https://www.devontechnologies.com/apps/devonthink), an excellent research and information
   manager for MacOS. A free alternative to Abbyy is [`ocrmypdf`](https://github.com/ocrmypdf/OCRmyPDF), which
   relies on Google's [tesseract](https://github.com/tesseract-ocr/tesseract) engine.
2. Sometimes it is easier and faster to manipulate a pdf file visually. [PDF Expert](https://pdfexpert.com) (Mac only) is one of the most useful cost-effective pdf
   editing tools. It can handle many, but not all, of the
   repagination tasks handled by the LaTeX workflow described in this
   repository. It can also perform OCR, though I find that it
   is less accurate than the Abbyy engine for this application. The
   best free alternatives are the command line tools [qpdf](https://github.com/qpdf/qpdf) and [mutool](https://www.mankier.com/1/mutool).

# Additional Workflow Suggestions

This workflow benefits greatly from having a dedicated location on
your filesystem. I recommend putting the pdfs to be searched in one 
location, along with copies or symlinks to the awk scripts. Two other
small tweaks make can supercharge this approach

1. Use Tmux to create a persistent session to which you can easily
   switch whenever you have an idea for running a search. This will
   drop you into your dedicated search directory with only a few
   keystrokes.
2. Make use of your shell's history features to recall old
   command lines quickly. It is usually easier to modify an old command
   line than to create a complicated one from scratch.

# Final Considerations

Pdfs suitable for this workflow typically take up significant amounts
of disk space because they need to be scanned at a high resolution.
However, once the repagination step has occurred, it is possible to
reduce the file size. Various tools can do this. I find that PDF
Expert does a reasonable job without sacrificing too much quality.
