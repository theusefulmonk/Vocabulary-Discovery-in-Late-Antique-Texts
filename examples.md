---
title: Efficient Vocabulary Discovery in Late Antique Texts--Code Examples
author: Andrew J. Hayes
date: May 22, 2025
csl: '/Users/drew/.pandoc/csl/chicago-fullnote-bibliography-short-title-subsequent.csl'
bibliography: 'vocabulary.bib'
shorttitle: Efficient Vocabulary Discovery
suppress-bibliography: false
papersize: letter
listings: true
documentclass: 'tufte-handout'
classoptions: 
	- 12pt
colorlinks: true
linkcolor: teal
urlcolor: blue
versequotations: true
header-includes:
- |
    ```{=latex}
    %\usepackage[svgnames]{xcolor}
    %\definecolor{codebackground}{RGB}{240, 240, 235}
    %\definecolor{codebackground}{RGB}{117, 128, 124}
    %\AtBeginDocument{\colorlet{defaultcolor}{.}}
    %\definecolor{bg}{HTML}{282828} % from https://github.com/kevinsawicki/monokai
    %\usepackage[outputdir=build]{minted}
    %\setminted{style=monokai,bgcolor=bg}
    %\setmintedinline{style=monokai,bgcolor=None}
    %\definecolor{Text}{HTML}{F8F8F2}
    %\AddToHook{cmd/mintinline/before}{\color{Text}}
    %\AddToHook{cmd/mintinline/after}{}
		%\AtBeginEnvironment{minted}{\color{Text}}
    \usepackage{pgfornament}
    \usepackage{setspace}
    \usepackage{microtype}
    \usepackage{fontspec}
		\defaultfontfeatures{Numbers=OldStyle}
		\setmainfont{STIX Two Text}
    \setmonofont{PragmataPro Mono Liga}
    %\renewcommand{\footnote}[1]{\sidenote{#1}}
    %\renewcommand{\familydefault}{\sfdefault}
    \fancyfoot[LEO]{\footnotesize © 2025 Andrew Hayes.This work (apart from any source code it contains) is licensed under CC BY 4.0. To view a copy of this license, visit https://creativecommons.org/licenses/by/4.0/.}
    ```
---

<!--needed fix for tufte-handout-->
<!--see https://tex.stackexchange.com/questions/560523/tufte-compile-error-with-latex-->
\ifdefined\soulregister
\soulregister\MakeTextUppercase{1}
\soulregister\MakeTextLowercase{1}
\soulregister\newlinetospace{1}
\fi

The following are the code examples interactively demonstrated in the
presentation. Each example follows the number that designates it.

(@) 
```bash
lualatex -output-dir=build repaginate.tex
```

(@) 
```bash
pdfgrep -e '[Ss]ch[aä]tz' HdE\ German.pdf -H --page-number=label
```

(@) 
```bash
pdfgrep -e '[Ss]ch[aä]tz' HdE\ German.pdf -H -c
```

(@) 
```bash
 pdfgrep -e '[Ss]ch[aä]tz' HdE\ German.pdf HdV\ German.pdf -c
```

(@) 
```bash
 pdfgrep *.pdf -e 'G[aei]hen(n)?a' --page-number=label -H
```

(@) 
```bash
pdfgrep -i -e '([Kk]ingdom)|(Königtum)|(\(Himmel\)[Rr]eich)' --page-number=label -H *.pdf
```

(@) 
```bash
pdfgrep  -P '(?<![Zz]u )Ende(?! des [a-z])' 
--page-number=label -H -C 3 
--color=always *.pdf | grep -v -e '[Zz]u'
```

(@) 
```bash
pdfgrep  -P '(?<![Zz]u )Ende(?! des [a-z])' 
--page-number=label -H  
--color=always *.pdf | grep -v -e '[Zz]u'
```

(@) 
```bash
pdfgrep -e '[Ss]ch[aä]tz' HdE\ German.pdf 
-H --page-number=label > results.txt
```
\clearpage
(@)
```bash
 pdfgrep *.pdf -e 'G[aei]hen(n)?a'
  --page-number=label  | awk -f grep_to_csv.awk > gehenna.csv
```

(@)
```awk
BEGIN { FS = ":"; print "text", ",", "citation" }
{ 
    cutoff = index($1, " ");
    # print "cutoff index is " cutoff # for debugging purposes
    print substr($1, 1, cutoff) ",", $2 
} 
```

