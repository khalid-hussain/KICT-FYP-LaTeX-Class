# KICT-FYP-LaTeX-Class

A LaTeX document class for KICT's (IIUM) FYP report.

# Dependencies

- [Pandoc]
- LuaLaTeX (The report uses Arial). I suggest installing [TexLive].

# Usage

1. Change the variables found in `kict-fyp-config.tex` according to personal requirements.
2. Compile frontmatter using `compile.sh` found in the `frontmatter` folder. This only needs to be done once unless you make changes to front matter variables as found in `kict-fyp-config.tex`.
3. Compile the report using `make`.

## Bibliography

The bibliography file is `references.bib`.
It can be managed by applications such as [JabRef] or by text editors such as [Sublime Text], [Atom], or [Visual Code].

BibTeX ignores capitalization of proper names and nouns.
To understand why, read [BibTeX loses capitals when creating bbl file](https://tex.stackexchange.com/questions/10772/bibtex-loses-capitals-when-creating-bbl-file).
Surround words whose capitalization needs to be respected, by a (second) set of braces: `{}`.
For example: 

```bibtex
@inproceedings{barber2012bitter,
  title={Bitter to better—how to make {Bitcoin} a better currency},
  author={Barber, Simon and Boyen, Xavier and Shi, Elaine and Uzun, Ersin},
  booktitle={International {Conference} on {Financial Cryptography} and {Data Security}},
  pages={399--414},
  year={2012},
  organization={Springer}
}
```

## Appendices

I have included a sample appendix file `appendix1.tex` under the folder `appendices`.
Appendices, depending on the report could constitute anything.
They could be contents of a source code file, a copy of an agreement, a flowchart, a table of research findings, etc.
Thus, user intervention is required.

If an appendix consists of simple text, you can replicate `appendix1.tex` (i.e. `appendix2.tex` and so on) and then import it in the appendices section in `fyp_report.tex`.

If your appendix is exotic in nature, I suggest exporting the content as a `pdf` file and then adding commands for the `pdfpages` package in the appendices section in `fyp_report.tex`.

If you have an all-in-one solution for this complication, please _do_ share.

# To Do



# License

The IIUM logo and related IIUM graphics are property of IIUM, Malaysia.

[Pandoc]: https://github.com/jgm/pandoc/releases
[TexLive]: https://www.tug.org/texlive/acquire.html
[JabRef]: http://www.jabref.org/
[Sublime Text]: https://www.sublimetext.com/
[Atom]: https://atom.io/
[Visual Code]: https://code.visualstudio.com/
