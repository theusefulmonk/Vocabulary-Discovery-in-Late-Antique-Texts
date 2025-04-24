# Tested with pandoc 3.1.12.1 and lualatex 1.16.0 (TexLive 2023, full
# installation)
paper: Vocabulary-Discovery-in-Late-Antique-Texts.tex vocabulary.bib
	lualatex -interaction batchmode -output-directory=build --shell-escape Vocabulary-Discovery-in-Late-Antique-Texts.tex

Vocabulary-Discovery-in-Late-Antique-Texts.tex: Vocabulary-Discovery-in-Late-Antique-Texts.md
	pandoc -s Vocabulary-Discovery-in-Late-Antique-Texts.md -C -o Vocabulary-Discovery-in-Late-Antique-Texts.tex --from markdown+grid_tables+inline_code_attributes --highlight-style=kate
