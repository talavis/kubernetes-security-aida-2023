\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{dcpresentation}

\LoadClass{beamer}
% options (add between documentclass and {beamer}:
% [aspectratio=169] 16:9 (eg 1080p) instead of 4:3
% [handout] show all steps at the same time (slides with e.g <2> will show a slide with all things visible
% [draft] only include frames showing the size of e g images; don't include the images themselves

% support for movies
% \usepackage{multimedia}
% support for table entries spanning multiple rows
\usepackage{multirow}
\usepackage[english]{babel}
% or whatever
\usepackage[utf8x]{inputenc}
% \usepackage[T1]{fontenc}
% fancy tables
\usepackage{booktabs}
% font
% \usepackage{bookman}
\usepackage{times}

% itemize symbols
\setbeamertemplate{itemize item}[triangle]
\setbeamertemplate{itemize subitem}[circle]
\setbeamertemplate{itemize subsubitem}[square]

% helpers to put logo in upper right corner
\usepackage{eso-pic}
\newcommand\AtPageUpperRight[1]{\AtPageLowerLeft{%
\put(\LenToUnit{0.94\paperwidth},\LenToUnit{0.92\paperheight}){#1}}}

\mode<presentation>
\usetheme{default}
% general color theme; ``SciLifeLab color''
\usecolortheme[RGB={167,201,71}]{structure}
\setbeamertemplate{blocks}[rounded]
% get rid of navigation symbols (symbols in lower right corner)
\setbeamertemplate{navigation symbols}{}
% covered items are transparent (ie items that will be uncovered are visible, but grayed out)
\setbeamercovered{dynamic}
% small caps in frame titles
\setbeamerfont{frametitle}{shape=\scshape}

% to include frame numbers in lower right corner
% \setbeamertemplate{footline}[frame number]

\usepackage{graphicx}

% colours 
\definecolor{alertred}{RGB}{225,70,11}
\definecolor{scilifelablime}{HTML}{A7C947}
\definecolor{scilifelablime25}{HTML}{E9F2D1}
\definecolor{scilifelablime50}{HTML}{D3E4A3}
\definecolor{scilifelablime75}{HTML}{BDD775}
\definecolor{scilifelabteal}{HTML}{045C64}
\definecolor{scilifelabteal25}{HTML}{C0D6D8}
\definecolor{scilifelabteal50}{HTML}{82AEB2}
\definecolor{scilifelabteal75}{HTML}{43858B}
\definecolor{scilifelabaqua}{HTML}{4C979F}
\definecolor{scilifelabaqua25}{HTML}{D2E5E7}
\definecolor{scilifelabaqua50}{HTML}{A6CBCF}
\definecolor{scilifelabaqua75}{HTML}{79B1B7}
\definecolor{scilifelabgrape}{HTML}{491F53}
\definecolor{scilifelabgrape25}{HTML}{D2C7D4}
\definecolor{scilifelabgrape50}{HTML}{A48FA9}
\definecolor{scilifelabgrape75}{HTML}{77577E}

\hypersetup{colorlinks,linkcolor=,urlcolor=scilifelabaqua75}

% Show section name in beginning of each section
% \AtBeginSection{\frame{\tableofcontents[currentsection,currentsubsection]}}
% \AtBeginSubsection{\frame{\tableofcontents[currentsection,currentsubsection]}}
% \AtBeginSubsubsection{\frame{\tableofcontents[currentsection,currentsubsection,currentsubsection]}}


\usepackage{booktabs}

% style of title etc
\setbeamerfont{title}{shape=\bf, size=\LARGE}
\setbeamerfont{institute}{size=\normalsize}
\setbeamerfont{author}{shape=\scshape}

% images used for logo (and first page in this case)
\pgfdeclareimage[height=0.8cm]{sll-logo}{img/scilifelab-logo.pdf}

% template for custom titlepage in beamer
\defbeamertemplate*{title page}{customized}[1][]
{
 \bigskip
 \begin{center}
 \usebeamercolor[fg]{title}\usebeamerfont{title}\inserttitle\par
 \vspace{1pt}
 \usebeamerfont{subtitle}\usebeamercolor[fg]{subtitle}\insertsubtitle\par
 \end{center}
 \vspace{10pt}
 \usebeamercolor[fg]{normal text}
 \begin{center}
 \usebeamerfont{author}\insertauthor\par

 {\normalfont \scriptsize \authorEmail}
 \end{center}
 \vspace{40pt}
 \begin{columns}
 \column{0.6\textwidth}
 \usebeamerfont{institute}\insertinstitute\par
 \usebeamerfont{date}\insertdate\par
 \usebeamercolor[fg]{titlegraphic}\inserttitlegraphic
 \column{0.4\textwidth}
 \centering
 $\begin{array}{cc}
 \pgfuseimage{sll-logo}\\
 \end{array}$
 \end{columns}
 }

% \alert color
\setbeamercolor{alerted text}{fg=scilifelablime}
