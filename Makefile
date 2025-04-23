paper: Vocabulary-Discovery-in-Late-Antique-Texts.tex vocabulary.bib
	lualatex -interaction batchmode -output-directory=build --shell-escape Vocabulary-Discovery-in-Late-Antique-Texts.tex

Vocabulary-Discovery-in-Late-Antique-Texts.tex: Vocabulary-Discovery-in-Late-Antique-Texts.md
	pandoc -s Vocabulary-Discovery-in-Late-Antique-Texts.md -C -o Vocabulary-Discovery-in-Late-Antique-Texts.tex --from markdown+grid_tables+inline_code_attributes --highlight-style=kate

# Before setting using the recipe below, call the shortcut "Change Target File of Refresh Word" to update the target file of the shortcut called below.
published: dignity-judgment-paper.md reference.docx
	pandoc -s dignity-judgment-paper.md -C -o ./build/dignity-judgment-paper.docx --from markdown+grid_tables --reference-doc=reference.docx
	shortcuts run "Refresh Word"

 
