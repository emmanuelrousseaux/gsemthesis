%%
%% This is file `gsemthesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% gsemthesis.dtx  (with options: `class')
%% 
%% This is a generated file.
%% 
%% Copyright (C) 2014 by Emmanuel Rousseaux <emmanuel.rousseaux+gsemthesis@gmail.com>
%% 
%% This file may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, version 1.3c
%% of this license.
%% The latest version of this license is in:
%% 
%%    http://www.latex-project.org/lppl.txt
%% 
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{gsemthesis}
    [2014/12/06 v0.9.1 .dtx gsemthesis file]
\LoadClass[a4paper,12pt,twoside]{book}
\usepackage[utf8]{inputenc}
\usepackage{lmodern}
\usepackage{etoolbox}
\newtoggle{fr}
\DeclareOption{fr}{\toggletrue{fr}}
\newtoggle{draft}
\DeclareOption{draft}{\toggletrue{draft}}
\ProcessOptions
\RequirePackage[top=2.5cm, bottom=2.5cm, left=2.5cm, right=2.5cm]{geometry}
\usepackage{setspace}
\usepackage{xcolor}
\definecolor{erblue}{HTML}{126199}
\definecolor{erorange}{HTML}{FF7F00}
\definecolor{gsemblue}{HTML}{465F7F}
\usepackage{graphicx}
\usepackage{float}
\usepackage{subfigure}
\RequirePackage{hyperref}
\hypersetup{%
colorlinks=true,%
linkcolor=black,%
filecolor=erblue,%
citecolor=erblue,%
urlcolor=erblue%
}%
\RequirePackage{url}
\urlstyle{sf}
\usepackage{amssymb,amsmath,amsfonts}
\usepackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[LO]{\thepage\hfill\nouppercase{\leftmark}}
\fancyhead[RE]{\nouppercase{\rightmark}\hfill\thepage}
\fancyfoot[LE,RO]{}
\fancypagestyle{plain}{
  \fancyhf{}
  \renewcommand{\headrulewidth}{0pt}
  \fancyfoot[LE,RO]{}
}
\fancypagestyle{cover}{
  \fancyhf{}
  \renewcommand{\headrulewidth}{0.5pt}
  \renewcommand{\footrulewidth}{0.5pt}
}
\fancypagestyle{unnumberedchapter}{
  \fancyhf{}
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}
  \fancyhead[LO]{\nouppercase{\leftmark}}
  \fancyhead[RE]{\nouppercase{\rightmark}}
  \fancyfoot[LE,RO]{}
}
\fancypagestyle{empty}{
  \fancyhf{}
  \renewcommand{\headrulewidth}{0pt}
  \fancyfoot[LE,RO]{}
}
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
    \hbox{}
    \thispagestyle{empty}
    \newpage
    \if@twocolumn\hbox{}\newpage\fi\fi\fi}
\clearpage{\pagestyle{empty}\cleardoublepage}
\iftoggle{fr}{
  \usepackage[francais]{babel}
}{
  \usepackage[english]{babel}
}
\usepackage{csquotes}
\usepackage[backend=biber,natbib=true,style=authoryear,sorting=nymdt]{biblatex}
\DeclareSortingScheme{nymdt}{
  \sort{
    \field{presort}
  }
  \sort[final]{
    \field{sortkey}
  }
  \sort{
    \name{sortname}
    \name{author}
    \name{editor}
    \name{translator}
    \field{sorttitle}
    \field{title}
  }
  \sort{
    \field{sortyear}
    \field{year}
  }
  \sort{
    \field[padside=left,padwidth=2,padchar=0]{month}
    \literal{00}
  }
  \sort{
    \field[padside=left,padwidth=2,padchar=0]{day}
    \literal{00}
  }
  \sort{
    \field{sorttitle}
  }
  \sort{
    \field[padside=left,padwidth=4,padchar=0]{volume}
    \literal{0000}
  }
}
\iftoggle{fr}{
  \def\thesisLabel{Thèse de Doctorat}
}{
  \def\thesisLabel{PhD Thesis}
}
\def\thesisLocationLabel{
~ \\[0.4em]%
{\large Geneva School of Economics and Management} \\[0.4em]%
  \iftoggle{fr}{
    \emph{Université de Genève, Suisse}
  }{
    \emph{University of Geneva, Switzerland}
  }
}
\def\thesisByLabel{} % depreciated
\def\thesisDirectionLabel{} % depreciated
\iftoggle{fr}{
  \def\thesisGradeLabel{Pour le grade de}
}{
  \def\thesisGradeLabel{For the grade of}
}
\def\thesisGrade{PhD in Economics and Managment}
\def\thesisMentionLabel{mention}
\iftoggle{fr}{
  \def\thesisCommitteeLabel{Membres du jury}
}{
  \def\thesisCommitteeLabel{Members of the dissertation committee:}
}
\iftoggle{fr}{
  \def\thesisNumberLabel{Thèse no.}
}{
  \def\thesisNumberLabel{Thesis No.}
}
\newcommand{\where}[1]{\def\thethesisWhere{#1}}
\newcommand{\authorFirstname}[1]{\def\theauthorFirstname{#1}}
\newcommand{\authorLastname}[1]{\def\theauthorLastname{\textsc{#1}}}
\newcommand{\thesisSupervisorA}[3]{\def\thethesisSupervisorA{#1~#2~\textsc{#3}}}
\newcommand{\thesisSupervisorB}[3]{\def\thethesisSupervisorB{#1~#2~\textsc{#3}}}
\newcommand{\thesisMention}[1]{\def\thethesisMention{#1}}
\newcommand{\thesisCommitteeA}[4]{%
\ifx&#3&%
  \def\thethesisCommitteeA{}%
\else
  \def\thethesisCommitteeA{#1~#2~\textsc{#3},~#4}%
\fi
}
\newcommand{\thesisCommitteeB}[4]{%
\ifx&#3&%
  \def\thethesisCommitteeB{}%
\else
  \def\thethesisCommitteeB{#1~#2~\textsc{#3},~#4}%
\fi
}
\newcommand{\thesisCommitteeC}[4]{%
\ifx&#3&%
  \def\thethesisCommitteeC{}%
\else
  \def\thethesisCommitteeC{#1~#2~\textsc{#3},~#4}%
\fi
}
\newcommand{\thesisCommitteeD}[4]{%
\ifx&#3&%
  \def\thethesisCommitteeD{}%
\else
  \def\thethesisCommitteeD{#1~#2~\textsc{#3},~#4}%
\fi
}
\newcommand{\thesisCommitteeE}[4]{%
\ifx&#3&%
  \def\thethesisCommitteeE{}%
\else
  \def\thethesisCommitteeE{#1~#2~\textsc{#3},~#4}%
\fi
}
\newcommand{\thesisCommitteeF}[4]{%
\ifx&#3&%
  \def\thethesisCommitteeF{}%
\else
  \def\thethesisCommitteeF{#1~#2~\textsc{#3},~#4}%
\fi
}
\newcommand{\thesisNumber}[1]{\def\thethesisNumber{#1}}
\newcommand{\printcoverpage}{%
  \thispagestyle{empty}
  \begin{center}
  \rule{\linewidth}{0.4pt}

  \vspace*{1.2cm}

  {\huge
    {\scshape
      \begin{spacing}{0.8}
        \@title
      \end{spacing}
    }
  }

  \vspace*{1.2cm}

  {\Large \thesisLabel}

  \vspace*{0.8cm}

  \thesisLocationLabel

  \vspace*{0.4cm}

  \thesisByLabel

  \vspace*{0.4cm}

  {\large \theauthorFirstname~\theauthorLastname}

  \vspace*{0.4cm}

  \iftoggle{draft}{~}{\thesisDirectionLabel}

  \vspace*{0.4cm}

  \iftoggle{draft}{~}{\thethesisSupervisorA}

  \iftoggle{draft}{~}{\thethesisSupervisorB}

  \vspace*{0.8cm}

  \iftoggle{draft}{
    \iftoggle{fr}{
      \emph{Ébauche}
    }{
      \emph{Draft}
    }
  }{\thesisGradeLabel}

  \vspace*{0.4cm}

  \iftoggle{draft}{~}{\thesisGrade} \\
  \iftoggle{draft}{~}{\thesisMentionLabel ~ \thethesisMention}

  \vspace*{0.8cm}

  \iftoggle{draft}{~}{\thesisCommitteeLabel}

  \vspace*{0.4cm}

  \iftoggle{draft}{~}{\thethesisCommitteeA}

  \iftoggle{draft}{~}{\thethesisCommitteeB}

  \iftoggle{draft}{~}{\thethesisCommitteeC}

  \iftoggle{draft}{~}{\thethesisCommitteeD}

  \iftoggle{draft}{~}{\thethesisCommitteeE}

  \iftoggle{draft}{~}{\thethesisCommitteeF}

  % \vspace*{0.4cm}
  \vfill

  \iftoggle{draft}{~}{\thesisNumberLabel ~ \thethesisNumber}

  \vspace*{0.1cm}

  \iftoggle{draft}{~}{\thethesisWhere,} \@date

  \vspace*{0.1cm}

  \rule{\linewidth}{0.4pt}
  \end{center}

}%
\newcommand{\acknowledgements}[1]{\def\theacknowledgements{#1}}
\newcommand{\abstractEN}[1]{\def\theabstractEN{#1}}
\newcommand{\abstractFR}[1]{\def\theabstractFR{#1}}
\newcommand{\dedication}[1]{\def\thededication{#1}}
\newcommand{\printfrontmatter}{%

  \iftoggle{draft}{~}{
    \frontmatter

    \iftoggle{fr}{
      \chapter*{Remerciements}
      \addcontentsline{toc}{chapter}{Remerciements}
    }{
      \chapter*{Acknowledgements}
      \addcontentsline{toc}{chapter}{Acknowledgements}
    }
    \label{ch:acknowledgements}
    \thispagestyle{plain}
    \theacknowledgements

    \newpage

    \iftoggle{fr}{
      \chapter*{Résumé}
      \addcontentsline{toc}{chapter}{Résumé}
      \label{ch:abstractFR}
      \thispagestyle{plain}
      \theabstractFR

      \newpage

      \chapter*{Abstract}
      \addcontentsline{toc}{chapter}{Abstract}
      \label{ch:abstractEN}
      \thispagestyle{plain}
      \theabstractEN
    }{
      \chapter*{Abstract}
      \addcontentsline{toc}{chapter}{Abstract}
      \label{ch:abstractEN}
      \thispagestyle{plain}
      \theabstractEN

      \newpage

      \chapter*{Résumé}
      \addcontentsline{toc}{chapter}{Résumé}
      \label{ch:abstractFR}
      \thispagestyle{plain}
      \theabstractFR
    }
  }

  \tableofcontents

  \iftoggle{draft}{~}{
    \cleardoublepage

    \thispagestyle{plain}

    \vspace*{4cm}
    {\em
    \raggedleft\thededication\par
    }

    \newpage
  }

  \mainmatter
}%
\newcommand{\startintroduction}{%
\chapter*{Introduction}
\addcontentsline{toc}{chapter}{Introduction}
\label{ch:introduction}
\markboth{}{Introduction}
}
\newcommand{\startconclusion}{%
\chapter*{Conclusion}
\addcontentsline{toc}{chapter}{Conclusion}
\label{ch:conclusion}
\markboth{}{Conclusion}
}
\newenvironment{itemize*}%
  {\vspace{-2mm}\begin{itemize}%
    \setlength{\itemsep}{0pt}%
    \setlength{\parskip}{0pt}%
  }%
  {\end{itemize}\vspace{-2mm}%
  }
\endinput
%%
%% End of file `gsemthesis.cls'.
