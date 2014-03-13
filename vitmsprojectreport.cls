%
% LaTeX Class File for VIT MS Final Year Project Report
%
% Author Santhos Baala RS, VIT University - Vellore.
%
\LoadClass[a4paper,12pt]{report}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{vitmsprojectreport}[2014/03/11 Custom class for VIT MS Project Report]

\RequirePackage[english]{babel}
\RequirePackage{titlesec}
\RequirePackage{lmodern}
\RequirePackage{tocloft}
\RequirePackage{cite}
\RequirePackage{graphicx}
\RequirePackage{xcolor}
\RequirePackage[normalem]{ulem}
% To put a numbered chapter for bibliography:
\RequirePackage[nottoc,notlof,notlot,numbib]{tocbibind}

% These three commands make up the "Times New Roman" font
\renewcommand{\sfdefault}{phv}
\renewcommand{\rmdefault}{ptm}
\renewcommand{\ttdefault}{pcr}

% Set to 1.5 line spacing
\linespread{1.5}

% A4 Paper and Required Margin for one-side printing
\RequirePackage[a4paper, top=2cm, bottom=2cm, left=4.0cm, right=2cm]{geometry}

% Page Number on Bottom Right
\RequirePackage{fancyhdr}
\fancypagestyle{plain}{
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\fancyhead{}
\fancyfoot[R]{\textcolor{gray}{\thepage}}
}

\pagestyle{plain}	% Set the page style for all the pages


% Change the title of table of contents [Use with Babel-English]
\setlength{\cftbeforetoctitleskip}{-3em}  % Remove Top Margin of TOC title.
\setlength{\cftaftertoctitleskip}{1em}  % Reduce Bottom Margin of TOC title.
\addto\captionsenglish{%
  \renewcommand{\contentsname}%
    {\hfill\bfseries\fontsize{14}{16.8}\selectfont \uline{Table of Contents}\hfill}%
}

% Change the title style of list of tables [Use with Babel-English]
\setlength{\cftbeforelottitleskip}{-3em}  % Remove Top Margin of TOC title.
\setlength{\cftafterlottitleskip}{1em}  % Reduce Bottom Margin of TOC title.
\addto\captionsenglish{%
  \renewcommand{\listtablename}%
    {\hfill\bfseries\fontsize{14}{16.8}\selectfont \uline{List of Tables}\hfill}
}

% Change the title style of list of figures [Use with Babel-English]
\setlength{\cftbeforeloftitleskip}{-3em}  % Remove Top Margin of TOC title.
\setlength{\cftafterloftitleskip}{1em}  % Reduce Bottom Margin of TOC title.
\addto\captionsenglish{%
  \renewcommand{\listfigurename}%
    {\hfill\bfseries\fontsize{14}{16.8}\selectfont \uline{List of Figures}\hfill}
}

% Custom chapter title - Plain [Number]. [Title] - 14pt
\renewcommand{\@makechapterhead}[1]{
  {\noindent\bf\fontsize{14}{16.8}\selectfont\thechapter .\quad #1 \newline}
}

% Custom section title - 13pt
\titleformat*{\section}{\bf\fontsize{13}{15.6}\selectfont}

% Custom sub-section title - 12 pt
\titleformat*{\subsection}{\bf\fontsize{12}{14.4}\selectfont}

% Custom sub-sub-section title - 12 pt Italic
\titleformat*{\subsubsection}{\itshape\bfseries\fontsize{12}{14.4}\selectfont}

% Plain bibliography style
\bibliographystyle{plain}

%==========================================================================
%                                                                         %
%                                Macros                                   %
%                                                                         %
%==========================================================================

% Macro To Render The Title Page
%
% ARGS: Title of the project, Your Name, Reg No., Guide's Name, Guide's Title

\newcommand{\maketitlepage}[5]{
  \begin{titlepage}
  \vspace*{\fill}
  \begin{center}
  \textrm{\bf\fontsize{20}{24}\selectfont #1\\}
  \vspace{1em}
  \textrm{\fontsize{12}{14.4}\selectfont\textsc{A Project Report\\}}
  \vspace{1em}
  \textrm{\fontsize{12}{14.4}\selectfont\textit{Submitted in partial fulfilment for the award of the degree of\\}}
  \vspace{0.75em}
  \textrm{\fontsize{18}{21.6}\selectfont MS\\}
  \vspace{0.75em}
  \textrm{\fontsize{18}{21.6}\selectfont in\\}
  \vspace{0.75em}
  \textrm{\fontsize{18}{21.6}\selectfont Sofware Engineering\\}
  \vspace{0.75em}
  \textrm{\fontsize{12}{14.4}\selectfont By\\}
  \vspace{1.5em}
  \textrm{\fontsize{20}{24}\selectfont #2, #3\\}
  \vspace{0.75em}
  \textrm{\fontsize{12}{14.4}\selectfont Under the Guidance of\\}
  \vspace{0.75em}
  \textrm{\fontsize{18}{21.6}\selectfont #4\\}
  \textrm{\fontsize{18}{21.6}\selectfont #5\\}
  \vspace{0.15em}
  \textrm{\fontsize{14}{16.8}\selectfont\textsc{School Of Information Technology And Engineering\\VIT University\\}}
  \vspace{4em}
  \includegraphics{vit.png}
  \end{center}
  \vspace*{\fill}
  \end{titlepage}
}


% Macro To Render The Declaration Page
%
% ARGS: TBD

\newcommand{\makedeclarationpage}{
  \newpage

  \begin{center}
  \bfseries\fontsize{14}{16.8}\selectfont\uline{DECLARATION BY THE CANDIDATE}
  \end{center}

  % TODO: Decide on the contents & layout

  \clearpage
}

% Macro To Render The Bonafide Page
%
% ARGS: TBD

\newcommand{\makebonafidepage}{
  \newpage

  \begin{center}
  \includegraphics{vit.png}
  \vspace{0.5em}
  \bfseries\fontsize{12}{14.4}\selectfont \\SCHOOL OF INFORMATION TECHNOLOGY AND ENGINEERING [SITE]\\
  \bfseries\fontsize{12}{14.4}\selectfont SOFTWARE ENGINEERING DIVISION\\
  \bfseries\fontsize{12}{14.4}\selectfont\uline{BONAFIDE CERTIFICATE}
  \end{center}

  % TODO: Decide on the contents & layout

  \clearpage
}

% Macro To Render The Acknowledgement Page
%
% ARGS: TBD

\newcommand{\makeackpage}{
  \newpage

  \begin{center}
  \bfseries\fontsize{14}{16.8}\selectfont\uline{Acknowledgements}
  \end{center}

  % TODO: Decide on the contents & layout

  \clearpage
}

% Macro To Render The Executive Summary Page
%
% ARGS: TBD

\newcommand{\makeexecsummarypage}{
  \newpage

  \begin{center}
  \bfseries\fontsize{14}{16.8}\selectfont\uline{Executive Summary}
  \end{center}

  % TODO: Decide on the contents & layout

  \clearpage
}

% Macro to insert references chapter
%
% Args: the bibliography file
\newcommand{\insertreferences}[1]{
  \renewcommand{\bibname}{References}         % Change 'Bibliography' to 'References'
  \bibliography{#1}
}