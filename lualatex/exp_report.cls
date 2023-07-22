\LoadClass[twoside]{ltjsreport}
\ProvidesClass{exp_report}[2023.06.23 K.MIZOGUCHI]
\usepackage{silence}
\WarningFilter{caption}{Unknown document}
\usepackage[top=20truemm,bottom=20truemm,left=15truemm,right=15truemm,headheight=20pt]{geometry}
\usepackage{listings}
\usepackage{hyperref}
\usepackage{fancyhdr}
\usepackage{amsmath}
\usepackage{lastpage}
\usepackage{xcolor}
\usepackage{graphicx}
\bibliographystyle{junsrt}
\hypersetup{
    colorlinks=true,
    citecolor=black,
    linkcolor=black,
    urlcolor=black
}
\renewcommand{\chaptermark}[1]{\markboth{第\ \thechapter\ 章\ \ #1}{}}
\fancypagestyle{report}{
    \fancyhf{}
    \fancyhead[RE]{\leftmark\hspace{.5cm}\raisebox{-1mm}{\color{gray}\rule{.5mm}{6mm}}\hspace{.5cm}\thepage\hspace{.5cm}}
    \fancyhead[LO]{\hspace{.5cm}\thepage\hspace{.5cm}\raisebox{-1mm}{\color{gray}\rule{.5mm}{6mm}}\hspace{.5cm}\leftmark}
    \pagenumbering{arabic}
}
\fancypagestyle{appendixstyle}{
    \fancyhf{}
    \fancyhead[RE]{付録\hspace{.5cm}\raisebox{-1mm}{\color{gray}\rule{.5mm}{6mm}}\hspace{.5cm}\thepage\hspace{.5cm}}
    \fancyhead[LO]{\hspace{.5cm}\thepage\hspace{.5cm}\raisebox{-1mm}{\color{gray}\rule{.5mm}{6mm}}\hspace{.5cm}付録}
}

\renewcommand{\figurename}{図}
\renewcommand{\tablename}{表}
\renewcommand{\lstlistingname}{src.}
\renewcommand{\thefootnote}{\fnsymbol{footnote}}
\renewcommand{\contentsname}{目次}
\renewcommand{\thefigure}{\thechapter-\arabic{figure}}
\renewcommand{\thetable}{\thechapter-\arabic{table}}
\renewcommand{\theequation}{\thechapter.\arabic{equation}}
\renewcommand{\eqref}[1]{式(\ref{#1})}
\newcommand{\figref}[1]{図\ref{#1}}
\newcommand{\tblref}[1]{表\ref{#1}}
\newcommand{\srcref}[1]{src.\ref{#1}}
\renewcommand{\appendix}{
    \chapter*{付録}
    \pagestyle{appendixstyle}
    \addcontentsline{toc}{chapter}{付録}
    \setcounter{section}{0}
    \renewcommand{\thesection}{\Alph{section}}
}
\makeatletter
\@addtoreset{figure}{chapter}
\@addtoreset{table}{chapter}
\@addtoreset{lstlisting}{chapter}
\@addtoreset{footnote}{page}
\renewcommand{\chapter}{%
    \if@openright\cleardoublepage\else\clearpage\fi
    \global\@topnum\z@
    \secdef\@chapter\@schapter}
\makeatother
\AtBeginDocument{
    \renewcommand{\thelstlisting}{\thesection-\arabic{lstlisting}}
}
\makeatletter
\def\studentid#1{\def\@studentid{#1}}
\def\group#1{\def\@group{#1}}
\def\institution#1{\def\@institution{#1}}
\def\name#1{\def\@name{#1}}
\def\titlehead#1{\def\@titlehead{#1}}
\renewcommand{\maketitle}{
    \thispagestyle{empty}
    \begin{center}
        \vspace*{\stretch{1}}
        {\normalsize \@titlehead }\\
        \vspace{2em}
        {\Huge \@title}\\
        \vspace{2em}
        {\Large\@studentid\hspace{1\zw}\@name\footnote{\@institution}}\\
        \vspace{1em}
        {\large \@group}\\
        \vspace{1em}
        {\Large \@date}
        \vspace{\stretch{2}}
        \thispagestyle{empty}
    \end{center}
    \renewcommand{\footnoterule}{%
        \kern -3pt
        \hrule width 0pt height 0pt
        \kern 2pt
    }
}
\makeatother
\AtBeginDocument{
    \begin{titlepage}
        \thispagestyle{empty}
        \maketitle
    \end{titlepage}
    \pagestyle{report}
    \setcounter{page}{1}
}
