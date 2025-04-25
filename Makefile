# Tested with pandoc 3.1.12.1 and lualatex 1.16.0 (TexLive 2023, full
# installation)
paper: Vocabulary-Discovery-in-Late-Antique-Texts.tex vocabulary.bib
	lualatex -interaction batchmode -output-directory=build --shell-escape Vocabulary-Discovery-in-Late-Antique-Texts.tex

Vocabulary-Discovery-in-Late-Antique-Texts.tex: Vocabulary-Discovery-in-Late-Antique-Texts.md
	pandoc -s Vocabulary-Discovery-in-Late-Antique-Texts.md -C -o Vocabulary-Discovery-in-Late-Antique-Texts.tex --from markdown+grid_tables+inline_code_attributes --highlight-style=kate

# The following recipe sends the code blocks in the paper to the
# clipboard. The command `pbcopy` is MacOS specific. Linux users
# probably need to change it to something like `xclip`.
examples: Vocabulary-Discovery-in-Late-Antique-Texts.md
	pandoc --lua-filter extractcode.lua Vocabulary-Discovery-in-Late-Antique-Texts.md -t markdown -o /dev/null | pbcopy

examples-handout.tex: examples.md
	pandoc -s examples.md -o examples-handout.tex --from markdown+inline_code_attributes --highlight-style=kate

handout: examples-handout.tex
	lualatex -interaction batchmode -output-directory=build --shell-escape examples-handout.tex
