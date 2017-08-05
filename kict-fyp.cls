\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{iiumthesis}[2017/08/05 IIUM Thesis class]
\LoadClass[12pt,a4paper,oneside]{memoir}
% \RequirePackage[T1]{fontenc}
\RequirePackage{fontspec}
\defaultfontfeatures{Mapping=tex-text,Scale=MatchLowercase}
\setmainfont{Arial}
\setmonofont{Courier New}

%******************************
%      Margins
%*************************
\setulmarginsandblock{2.5cm}{3cm}{*} % Upper-Lower margins
\setlrmarginsandblock{3.8cm}{2.5cm}{*} % Left-Right margins
\checkandfixthelayout

%******************************
%      Spacing
%*************************
\usepackage{parskip}
\setlength{\parindent}{1.2cm} % Paragraph indent
\frenchspacing % Use single space after end of sentence

%******************************
%      References
%*************************
\RequirePackage[american]{babel}
\RequirePackage{csquotes}
\RequirePackage[backend=biber,style=apa]{biblatex}
\DeclareLanguageMapping{american}{american-apa}

%******************************
%      Others
%*************************
% The following is taken from umalayathesis.cls
\RequirePackage{etoolbox}
\RequirePackage{longtable, booktabs} % For tables
\RequirePackage{pdflscape} % 
\RequirePackage{ltablex, array}
\RequirePackage{graphicx,grffile}
\RequirePackage{pdfpages}
\RequirePackage{url}
\urlstyle{same} % Used to style URLs in the default font
\RequirePackage{calc}
\RequirePackage{paralist}
\RequirePackage[%
  hidelinks=yes,
  pdfstartview=FitH
]{hyperref}

%******************************
%      Table of con../fig../tab..
%*************************
\settocdepth{subsubsection}
\setsecnumdepth{subsubsection}
\renewcommand\cftdotsep{0}
\renewcommand{\printchaptertitle}[1]{\chaptitlefont\MakeUppercase{#1}}

\addto\captionsamerican{% Needed if using Babel with American
  \renewcommand*\contentsname{Table of Contents}
  \renewcommand*\listtablename{List of Tables}
  \renewcommand*\listfigurename{List of Figures}
  \renewcommand*{\bibname}{REFERENCES}
}

\setlength{\bibitemsep}{\onelineskip}

\renewcommand{\printtoctitle}[1]{\centering\Large\bfseries\MakeTextUppercase{#1}}
\renewcommand{\printloftitle}[1]{\centering\Large\bfseries\MakeTextUppercase{#1}}
\renewcommand{\printlottitle}[1]{\centering\Large\bfseries\MakeTextUppercase{#1}}
%\renewcommand{\chapternumberline}[1]{\chaptername\ #1: }
\renewcommand{\cftchapterdotsep}{\cftdotsep}% Chapters should use dots in ToC
\abstractintoc % Show abstract in ToC
\renewcommand*{\cftchaptername}{\MakeUppercase{\chaptername}\space}
\renewcommand*{\cftchapteraftersnum}{:\space}

% Single spacing in front matter
\setlength{\cftbeforechapterskip}{1pt} % Taken from Moaaz's attempt

% No leader dots in both lists
\renewcommand\cfttabledotsep{\cftnodots}
\renewcommand\cftfiguredotsep{\cftnodots}

\cftinsertcode{PlainChapTocLines}{%
  \renewcommand*\cftchapterfont{\normalfont\mdseries\upshape}%
  \renewcommand*\cftchapterpagefont{\normalfont\mdseries\upshape}%
  \renewcommand{\cftdot}{\normalfont .}%
}

\cftinsertcode{MainChapTocLines}{%
  \renewcommand*\cftchapterfont{\normalfont\bfseries\upshape}%
  \renewcommand*\cftchapterpagefont{\normalfont\bfseries\upshape}%
}

\apptocmd{\frontmatter}{%
  \cftinserthook{toc}{PlainChapTocLines}%
}{}{}
\apptocmd{\mainmatter}{
  \addtodef{\insertchapterspace}{}%
  {\addtocontents{toc}{\protect\vspace*{\baselineskip}}}%
  \cftinserthook{toc}{MainChapTocLines}%
%  \renewcommand\chapter{\@ifstar{\mystarchap}{\mychap}}% This line returns an error. I don't know why.
}{}{}

% For removing spaces between chapters in LoF and LoT
%\newcommand*{\noaddvspace}{\renewcommand*{\addvspace}[1]{}}
%\addtocontents{lof}{\protect\noaddvspace}
%\addtocontents{lot}{\protect\noaddvspace}

%******************************
% Chapter headings
%*************************
%% Taken from umalayathesis.cls
%% 3 May 2016: One-line chapter title
\renewcommand\chapterheadstart{\normalsize\vskip\beforechapskip}
\setlength\beforechapskip{0pt}
\setlength\midchapskip {0\onelineskip} %{1.5ex plus 1ex minus .2ex} 
\setlength\afterchapskip{3\onelineskip}
\renewcommand*\chapnamefont{\large\bfseries}
\renewcommand*\chapnumfont{\large\bfseries\centering}
\renewcommand*\chaptitlefont{\SingleSpacing\large\bfseries\centering}
\renewcommand{\printchaptername}{{\chapnamefont\MakeUppercase{\chaptername}}}
\renewcommand*{\afterchapternum}{\vskip\midchapskip}
\renewcommand*{\printchaptertitle}[1]{{\chaptitlefont\MakeUppercase{#1}\par}}