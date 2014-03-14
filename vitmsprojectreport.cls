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
\RequirePackage{hyperref}
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

% Change the Hypperref Style to use roman font family
\renewcommand\UrlFont{\rmfamily}

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
  \def\vitprojecttitle{#1} % Cache the project title for later use
  \def\vitauthorname{#2}  % Cache the author name for later use
  \def\vitauthorregno{#3}       % Cache the author regno for later use
  \def\vitguidename{#4}   % Cache the guide name for later use
  \def\vitguidetitle{#5}  % Cache the guide title for later use

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
% ARGS: None (Cached by title page)

\newcommand{\makedeclarationpage}{
  \newpage

  \begin{center}
  \bfseries\fontsize{14}{16.8}\selectfont\uline{DECLARATION BY THE CANDIDATE}
  \end{center}

  \noindent
  I here by declare that the project report entitled \textbf{``\vitprojecttitle''} submitted by me to VIT University, Vellore in partial fulfilment of the requirement for the award of the degree of \textbf{M.S. (Software Engineering)} is a record of bonafide project work carried out by us under the guidance of \textbf{\vitguidename~(\vitguidetitle)}. I further declare that the work reported in this project has not been submitted and will not be submitted, either in part or in full, for the award of any other degree or diploma in this institute or any other institute or university.

  \noindent
  \linebreak
  Place: Vellore \hspace{\stretch{1}} Signature of the Candidate\\
  Date:\\  
  \\
  \vspace{1.0cm}
  \hspace{\stretch{1}} \vitauthorname~(\vitauthorregno)

  \clearpage
}

% Macro To Render The Bonafide Page
%
% ARGS: None (Cached by title page)

\newcommand{\makebonafidepage}{
  \newpage

  \begin{center}
  \includegraphics{vit.png}
  \vspace{0.5em}
  \bfseries\fontsize{12}{14.4}\selectfont \\SCHOOL OF INFORMATION TECHNOLOGY AND ENGINEERING [SITE]\\
  \bfseries\fontsize{12}{14.4}\selectfont SOFTWARE ENGINEERING DIVISION\\
  \bfseries\fontsize{12}{14.4}\selectfont\uline{BONAFIDE CERTIFICATE}
  \end{center}

  \noindent
  This is to certify that the project report titled \textbf{``\vitprojecttitle''}, submitted by \textbf{\vitauthorname~(\vitauthorregno)} to VIT University, Vellore in partial fulfillment of the requirement for the award of the degree of M.S. (Software Engineering) is a record of bonafide work carried out by him/her under my guidance. The project fulfills the requirements as per the regulations of this institute and in my opinion meets the necessary standards for submission. The contents of this report have not been submitted and will not be submitted either in part or in full, for the award of any other degree or diploma in this institute or any other institute or university.\\

  \vspace{1.5cm}

  \begin{flushright}
  \textbf{
  \vitguidename\hspace*{\stretch{0.36}}\\
  Internal Guide\hspace*{\stretch{0.30}}\\
  }
  \vitguidetitle,\hspace*{\stretch{0.25}}\\
  School Of Information Technology \& Engineering\hspace*{\stretch{0}}
  \end{flushright}

  \vspace{1cm}

  \hrule

  \vspace{2.0cm}
  
  \textbf{
  Internal Examiner\hspace*{\fill}External Examiner{\hspace*{\stretch{0.1}}}
  }


  \clearpage
}

% Macro To Render The Acknowledgement Page
%
% ARGS: Dean, Program Manager, Year Co-Ordinator 

\newcommand{\makeackpage}[3]{
  \newpage

  \begin{center}
  \bfseries\fontsize{14}{16.8}\selectfont\uline{Acknowledgements}
  \end{center}

  We take immense pleasure in thanking \textbf{Dr. G. Viswanathan}, our beloved chancellor, VIT University, \textbf{#1}, dean, School Of Information Technology and Engineering, \textbf{#2}, Program Manager, M.S. Software Engineering and \textbf{#3}, project coordinator, M.S. Software Engineering for having permitted us to carry out the project.

  We wish to express our deep sense of gratitude to our guide, \textbf{\vitguidename}, School Of Information Technology and Engineering for his guidance and suggestions that helped us to complete the project on time. Words are inadequate to express our gratitude to the faculty and staff members who encouraged and supported us during the project. Finally, we would like to thank our ever-loving parents for their blessings and our friends for their timely help and support.

  \clearpage
}

% Macro To Render The Executive Summary Page
%
% ARGS: The executive summary text

\newcommand{\makeexecsummarypage}[1]{
  \newpage

  \begin{center}
  \bfseries\fontsize{14}{16.8}\selectfont\uline{Executive Summary}
  \end{center}

  #1

  \clearpage
}

% Macro to insert references chapter
%
% Args: the bibliography file
\newcommand{\insertreferences}[1]{
  \renewcommand{\bibname}{References}         % Change 'Bibliography' to 'References'
  \bibliography{#1}
}