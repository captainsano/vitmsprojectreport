%
% LaTeX Class File for VIT MS Final Year Project Report
%
% Author Santhos Baala RS, VIT University - Vellore.
%
\LoadClass[12pt]{report}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{vitmsprojectreport}[2014/03/10 Custom class for VIT MS Project Report]

\RequirePackage[english]{babel}
\RequirePackage{titlesec}
\RequirePackage{lmodern}
\RequirePackage{cite}
\RequirePackage{graphicx}
\RequirePackage{xcolor}
\RequirePackage{listings}
\RequirePackage{textcomp}
\RequirePackage{ulem}
\RequirePackage{afterpage}

% Specific settings for listings
\lstset{
	basicstyle=\ttfamily\footnotesize,
	flexiblecolumns=false,
	fontadjust=true
}

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

% Custom chapter title, according to specifications
% \renewcommand{\@makechapterhead}[1]{
% 	\newpage
% 	\vspace*{\fill}
% 	\begin{center}
%   	{\LARGE\bf\MakeUppercase{#1}}
%   	\end{center}
%   	\vspace*{\fill}
%   	\newpage
% 	{\noindent\bf\LARGE\thechapter .\quad #1 \newline}
% }

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

% TODO:
%	- Chapter Title in a separate page
%	- Section Headings in uppercase
%
% Other Technical Specifications
%	- All fonts in Times New Roman
%	- Headings in 14pt Uppercase, Bold					TODO
%	- Subheadings in 14pt TitleCase, Bold, Underline	TODO
%	- Heading-Paragraph Spacing 30pt					TODO
%	- Heading-Subheading Spacing 20pt					TODO
%	- Subheading-Paragraph Spacing 20pt					TODO
%	- Default Font Size: 12pt, 1.5 line spacing
%	- Default LaTeX Report conventions for section numbering,
%		figure numbering (Fig.) and table numbering (Table)
%		can be followed
%