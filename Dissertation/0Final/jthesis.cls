\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{jthesis}[2014/08/20 v1.0 Joe's Thesis Class]
\LoadClass[12pt, letterpaper]{report}
\RequirePackage{graphicx}
\RequirePackage{url}
\RequirePackage[top=1in, bottom=1in, left=1.5in, right=1in]{geometry}
\RequirePackage{natbib}
\RequirePackage{hyperref}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{setspace}
\RequirePackage{fancyhdr}


\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\markboth{\thechapter. \ #1}{}}
\lhead{}
\chead{\leftmark}
\rhead{\thepage}
\lfoot{}
\rfoot{}
\cfoot{}

\renewcommand{\maketitle}
{
\newgeometry{top=1in, bottom=1in, left=2.5in, right=2in}
\begin{titlepage}
\begin{center}
{
\LARGE \MakeUppercase{\textbf{\@title}}\\
\vspace{0.3in}
\Large by \\
\vspace{0.3in}
\@author\\
\vspace{2in}

\normalsize

A dissertation submitted to the University of Ontario Institute of Technology in accordance with the requirements of the degree of Bachelor of Science (Hons) in the Faculty of Science

\vspace{0.5in}

\@date
\vspace{0.5in}


\includegraphics[scale=0.2]{uoit.png}

\vspace{1.4in}

Copyright \textcopyright \ \the\year \ \@author
}
\end{center}
\end{titlepage}
\restoregeometry
\setcounter{page}{2}
}

\newcommand\mybibname{References}
\renewcommand\bibsection{%
\newpage
\phantomsection
\addcontentsline{toc}{chapter}{\numberline{}References}
   \thispagestyle{plain}
   \centering\LARGE \textbf{\MakeUppercase{\mybibname}}\normalsize%
   \markboth{\MakeUppercase{\mybibname}}{\MakeUppercase{\mybibname}}%
  \vspace{40pt}
  }

\newcommand{\makeabstract}[1]
{
\clearpage
\phantomsection
\thispagestyle{plain}
\addcontentsline{toc}{chapter}{\numberline{}Abstract}
\vspace{5pt}
\begin{center} \bf{\Large{ABSTRACT}} \end{center}
\vspace{20pt}

#1

\clearpage
}

\newcommand{\makeacknowledgements}[1]
{
\clearpage
\phantomsection
\thispagestyle{plain}
\addcontentsline{toc}{chapter}{\numberline{}Acknowledgements}
\vspace{5pt}
\begin{center} \bf{\Large{ACKNOWLEDGEMENTS}} \end{center}
\vspace{20pt}

#1

\clearpage
}

\newcommand{\makedeclaration}
{
\clearpage
\phantomsection
\thispagestyle{plain}
\addcontentsline{toc}{chapter}{\numberline{}Author's Declaration}
\vspace{5pt}
\begin{center} \bf{\Large{AUTHOR'S DECLARATION}} \end{center}
\vspace{20pt}

\noindent I declare that the work in this thesis was carried out in accordance with the regulations of the University of Ontario Institute of Technology. The work is original except where indicated by special reference in the text and no part of the dissertation has been submitted for any other degree. Any views expressed in the dissertation are those of the author and in no way represent those of the University of Ontario Institute of Technology. The thesis has not been presented to any other University for examination either in Canada or elsewhere.

\vspace{1in}
\begin{center}
\rule{0.8\textwidth}{0.5pt} \\
\@author \\
\@date
\end{center}
\clearpage
}

\newcommand{\maketableofcontents}
{
\clearpage
\phantomsection

\addcontentsline{toc}{chapter}{\numberline{}Table of Contents}
\tableofcontents

\newpage
\phantomsection
\addcontentsline{toc}{chapter}{\numberline{}List of Figures}
\listoffigures

\newpage
\phantomsection
\addcontentsline{toc}{chapter}{\numberline{}List of Tables}
\listoftables

\clearpage
}


\makeatletter
\def\@makechapterhead#1{%
  \vspace*{20\p@}%
  {\parindent \z@  \normalfont
    \interlinepenalty\@M
    \LARGE \bfseries 
\noindent
\vspace{0.1in}
\MakeUppercase{\LARGE \thechapter.  #1 } \\*
\vspace*{-0.1in}
 \par\nobreak
    \vskip 10\p@
  }}
\makeatother


\endinput