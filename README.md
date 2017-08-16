# KICT-FYP-LaTeX-Class

A LaTeX document class for KICT's (IIUM) FYP report.

# Dependencies

- [Pandoc]
- LuaLaTeX (The report requires the use of the Arial font)

# Usage

1. Change the variables found in `kict-fyp-config.tex` according to personal requirements.
2. Compile frontmatter using `compile.sh` found in the `frontmatter` folder. This only needs to be done once unless you make changes to front matter variables as found in `kict-fyp-config.tex`.
3. Compile the report using `make`.

# To Do

1. Add front matter compilation to the `makefile`.
2. Add files to be cleaned to the `makefile`.

# License

The IIUM logo and related IIUM graphics are property of IIUM, Malaysia.

[Pandoc]: https://github.com/jgm/pandoc/releases