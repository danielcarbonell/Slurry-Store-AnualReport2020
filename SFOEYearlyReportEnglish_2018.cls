%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% SFOE report                    v2 30.11.2018 %%
%% Dani Carbonell, SPF, Institute of Solar Technology                                                      
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\LoadClass[10pt,a4paper,twoside]{article}
%\LoadClass[10.5pt,a4paper]{article}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% Packages  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%\usepackage{epsfig}               % grafics eps
\usepackage{babel}
\usepackage[latin1,utf8x]{inputenc}
\usepackage{psfrag}               % per modificar text de gràfics
%\usepackage{amsmath}
\usepackage{float}
\usepackage{array}
%\usepackage{tabularx}
%\usepackage{wrapfig}
%\usepackage{subfigure}
\usepackage{graphicx}        
%\usepackage{longtable}           % aquests 2 x taules amb Word2TeX
%\usepackage{background}
\usepackage{color,titlesec}
\usepackage{colortbl}
\usepackage{lscape}
%\usepackage{appendix}
\usepackage{fancyhdr}
\usepackage{lastpage}
\usepackage[sort,comma]{natbib}
\usepackage[a4paper]{geometry}


\usepackage{hyperref}

\hypersetup{
    colorlinks=true,
    citecolor=blue,
    filecolor=black,
    linkcolor=black,
    urlcolor=black
}
%%%%%%%%%%FONT

%\rmfamily selects a roman (i.e., serifed) font family
%\sffamily selects a sans serif font family
%\ttfamily selects a monospaced (“typewriter”) font family -->Equations. changinf font by a packge not by renewcommand !!
%\usepackage{mathptmx} woudl change text anf formulas to Times.
%\renewcommand{\rmdefault}
%\renewcommand{\sfdefault}
%\renewcommand{\ttdefault}

%ARIAL phv
%TIMES ptm

%\renewcommand{\familydefault}{phv} 
\renewcommand{\rmdefault}{phv} 

%{phv} = Arial
%\fontfamily{cmtt}\selectfont 
%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% Margins  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\TitlePageMargins}{\newgeometry{
		left=30mm,
		right=20mm,
		top=39.7mm,
		bottom=25mm,
		headheight=55mm,
}}
	
%\newcommand{\DefaultPageMargins}{\newgeometry{
%	left=30mm,
%	right=20mm,
%	top=25mm,
%	bottom=25mm,
%}}


\definecolor{spfRed}{rgb}{0.8,0.1,0.1}
\newcommand\thickhrule{\textcolor{black}{\hrule height 0.6pt}}  



  % \textfloatsep — distance between floats on the top or the bottom and the text;
  % \floatsep — distance between two floats;
  %\intextsep — distance between floats inserted inside the page text (using h) and the text proper.
%\setlength{\textfloatsep}{10pt plus 1.0pt minus 2.0pt}

%The default values in the article document class with the 10pt option are:
%  \textfloatsep: 20.0pt plus 2.0pt minus 4.0pt;
%  \floatsep: 12.0pt plus 2.0pt minus 2.0pt;
%  \intextsep: 12.0pt plus 2.0pt minus 2.0pt.


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%                Title                        %%%             
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\renewcommand{\@maketitle}{ 
	\begin{flushleft}
		\phantom{.}
%		\vspace{-8.5mm} %<0 moves up
		\vspace{4.5mm} %> moves down
		\@reportDate
	\end{flushleft}  
	\vspace{-2.4mm} %<0 moves up
	\thickhrule
	% \begin{center}
	%    \textcolor{white}{\phantom{kkk}}\\  
	%    \phantom{kkk}\\
	
	\vspace{6mm}
	\begin{flushleft}
	\textcolor{black}{\huge\bfseries{\@reportName}}\\
	
	\vspace{11mm}
	\textcolor{black}{\huge{\@reportSubName}}\\  
	 \end{flushleft}
	  	
	\ProcessOptions*
	\vspace{7mm}
	% \end{center}
	\thickhrule
	\ProcessOptions*
	\vfill
} 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% sections                 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\renewcommand{\Large}{\fontsize{18pt}{20pt}\selectfont} %size , space between lines

%with dots after number
%\titleformat{\section}{\color{black}\Large\bfseries}{\thesection.}{0.5em}{}[\color{black}]
%\titleformat{\subsection}{\color{black}\large\bfseries}{\thesubsection.}{0.5em}{}[\color{black}]

%with dots after number
\titleformat{\section}{\color{black}\Large\bfseries}{\thesection}{1.5em}{}[\color{black}]
\titleformat{\subsection}{\color{black}\large\bfseries}{\thesubsection}{1em}{}[\color{black}]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% captions                 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\renewcommand{\@makecaption}[2]{%
	\begin{center}
		%\vskip\abovecaptionskip
		\sbox\@tempboxa{\normalsize\fontsize{9}{12}\selectfont #1: #2}%
		\ifdim \wd\@tempboxa >\hsize
		\normalsize\fontsize{9}{12}\selectfont #1: #2\par
		\else
		\global \@minipagefalse
		\hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
		\fi
		\vskip\belowcaptionskip
	\end{center}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Headers %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%\makeatletter



\fancypagestyle{bfetitlepage}{

	\pagestyle{fancyplain}
	

%	\renewcommand{\headsep}{2.5cm}% from header to text
%	\renewcommand{\hoffset }{30mm} %left margin

	\renewcommand{\footnotesize}{\fontsize{7.55pt}{9.7pt}\selectfont} %size , space between lines
	
	\fancyhead{} %clear header 
	\fancyfoot{}
		
	\lhead{		
		%\begin{flushleft}		
			\hspace{-12mm} %< moves left
			\vspace{2.75mm} % >0 moves up
			% trim={<left> <lower> <right> <upper>}
			%\includegraphics[trim=0 0 0 0mm, clip=true,width=5.75cm]{SFOE_logo.png}
			\includegraphics[width=5.57cm]{SFOE_logo.png}
		%\end{flushleft}     
	}
	\rhead{
		\footnotesize{ 
			% \scriptsize{			%This also affects the logo !!
				\begin{flushleft}										
	          			 \vspace{28.5mm} %affects both headers left and right	   increase moves down       			
					\hspace{7.46cm}Department of the Environment, \\
					\hspace{7.46cm}Transport, Energy and Communication DETEC\\
					\vspace{2.2mm}
					\hspace{7.46cm}\textbf{Swiss Federal Office of Energy SFOE}\\
	    			        \hspace{7.46cm}Energy Research\\
				\end{flushleft}     
			%}
		}
	}
	\renewcommand{\headrulewidth}{0pt}	
	%\renewcommand{\headheight}{5cm} %12pt > 0 moves to logo up 
	%\renewcommand{\voffset}{0pt} %12pt > 0 moves to logo up 2.54 is added by default
}	

	

		
%		left=30mm,
%		right=20mm,
%		top=39.7mm,
%		bottom=25mm,
%		headheight=50mm,



%E Even page
%O Odd page
%L Left field
%C Center field
%R Right field
%H Header
%F Footer

\fancypagestyle{bfeinfopage}{

	\pagestyle{fancyplain}
	
	\fancyhead{} %clear header 
	
	\fancyhead[LO,LE]{ 				
		\hspace{-12.2mm} %> 0 move right
       		\includegraphics[width=8.35mm]{SFOE_logo_alone.png}   %>0 moves down
	}
	
  	%\fancyhead[CO,CE]{       		
       	% 	\footnotesize{
	%		\@reportName
	%	}
       	%}
	\fancyfoot[RO,LE]{\scriptsize{\thepage/\pageref{LastPage}}}
	
	\renewcommand{\headheight}{4.1cm} %12pt > 0 moves to logo up 
	\renewcommand{\headsep}{2.5cm}% from header to text
	\renewcommand{\hoffset }{2cm} %left margin
	\renewcommand{\oddsidemargin}{5mm}
	\renewcommand{\evensidemargin}{5mm}		
	%	\renewcommand{\headrulewidth}{0.4pt} %obere Trennlinie
	%	\fancyhead[L]{\leftmark}
	%	\fancyhead[R]{asdfasdf}
}

\fancypagestyle{bfenormalpage}{		
	
     \pagestyle{fancyplain}
     
     \fancyhead{}
     
	\fancyhead[LO,LE]{ 				
		\hspace{-12.2mm} %> 0 move right
       		\includegraphics[width=8.35mm]{SFOE_logo_alone.png}   %>0 moves down
	}
       	%add the report name in the header
%       	\fancyhead[CO,CE]{       		
   %    	 	\footnotesize{
	%		\@reportName
	%	}
       	%}
	\fancyfoot[RO,LE]{\scriptsize{\thepage/\pageref{LastPage}}}
	
	\renewcommand{\headheight}{4.1cm} %12pt > 0 moves to logo up 
	\renewcommand{\headsep}{2.5cm}% from header to text

	\renewcommand{\oddsidemargin}{5mm}
	\renewcommand{\evensidemargin}{5mm}
	\renewcommand{\textheight}{640pt} %609pt
	\renewcommand{\footskip}{30pt} %30pt 
	%\renewcommand{\hoffset}{10cm} 
	
	%\renewcommand{\voffset}{5cm}  %from top of the page to upper part of header %one inch be default on top NO EFFECT?
}

%		\thickhrule
		%\medskip
		
%	\textcolor{black}{\scriptsize{\thepage/\pageref{LastPage}}}
	%}
%	\if@twoside
%		\renewcommand{\headrulewidth}{0.4pt} %obere Trennlinie
%		\fancyhead[EL]{\textit{\leftmark}}
%		\fancyhead[OR]{\textit{\rightmark}}
%	\fi

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\reportName{\@ifnextchar[{\@getshortreportName}{\@getreportName}}
\def\@getreportName#1{\gdef\@reportName{#1}\gdef\@shortreportName{#1}}
\def\@getshortreportName[#1]#2{\gdef\@shortreportName{#1}\gdef\@reportName{#2}}

\def\reportSubName{\@ifnextchar[{\@getshortreportSubName}{\@getreportSubName}}
\def\@getreportSubName#1{\gdef\@reportSubName{#1}\gdef\@shortreportSubName{#1}}
\def\@getshortreportSubName[#1]#2{\gdef\@shortreportSubName{#1}\gdef\@reportSubName{#2}}


\def\reportDate{\@ifnextchar[{\@getshortreportDate}{\@getreportDate}}
\def\@getreportDate#1{\gdef\@reportDate{#1}\gdef\@shortreportDate{#1}}
\def\@getshortreportDate[#1]#2{\gdef\@shortreportDate{#1}\gdef\@reportDate{#2}}

\renewcommand{\abstract}[1]{\gdef\@abstract{#1}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%\bibliographystyle{unsrt}
%\renewcommand{\refname}{Bibliography}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\AtBeginDocument{%
	\TitlePageMargins{}
	\pagestyle{bfetitlepage}
	\maketitle
	\newpage
	
	%\DefaultPageMargins
	\pagestyle{bfeinfopage}
	\input{backPageSFOEReport.tex}
	\newpage
	
	\let\maketitle\relax	
	
	\newpage
	\pagestyle{bfenormalpage}
}
