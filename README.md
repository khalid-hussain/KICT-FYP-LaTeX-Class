# KICT-FYP-LaTeX-Class

A LaTeX document class for KICT's (IIUM) FYP report.

# Dependencies

- [Pandoc]
- LuaLaTeX (The report requires the use of the Arial font)

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

# To Do

1. Add front matter compilation to the `makefile`.
2. Add files to be cleaned to the `makefile`.

# License

The IIUM logo and related IIUM graphics are property of IIUM, Malaysia.

[Pandoc]: https://github.com/jgm/pandoc/releases
[JabRef]: http://www.jabref.org/
[Sublime Text]: https://www.sublimetext.com/
[Atom]: https://atom.io/
[Visual Code]: https://code.visualstudio.com/
