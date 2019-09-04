%% ---------------------------------------------------------------------------------------------------
%% This LaTeX class is created by TomBen. © 2018-2019 Copyright. All Rights Reserved.
%% If you have questions, please open terminal on your computer and enter "texdoc [package name]" you can solve almost 95 percent of questions. And contact me at me@tomben.me is also available if I understand what you ask. All suggestions are welcome~
%% And you can download the latest version at https://github.com/TomBener/Myart-Myrep-Template.
%% Happy LaTeXing. Enjoy it!
%% ---------------------------------------------------------------------------------------------------

%% !TEX program = xelatex
%% !Mode:: "TeX:UTF-8"


\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{myrep}[myrep class]
% Initiated on 2018/11/26, Last Updated on 2019/9/1

\LoadClass[12pt, a4paper]{ctexrep}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% ctex 设置
\ctexset{
	%chapter/name = {第,章},
	section = {
	format = \raggedright\Large\bfseries,
	%number = \chinese{section}、
},
	%subsection/numbering = false,
	%today = big,
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Basic Packages
\RequirePackage[l2tabu, orthodox]{nag} % 检测淘汰宏包和过时命令
\RequirePackage{amsmath, amsfonts, amssymb} % AMS 宏集
\RequirePackage{bm} % 粗体数学符号
\RequirePackage{upgreek} % 直立小写希腊字母
\RequirePackage{lipsum, zhlipsum, mwe} % 生成随机文字
\RequirePackage{ulem} % \uline 命令生成自动换行的下划线
\newcommand\bolduline{\bgroup\markoverwith{\rule[-0.7ex]{1cm}{0.8pt}}\ULon} % 定义粗下划线 \bolduline
\RequirePackage{dashrule} % 画虚线，例如 \hdashrule{\linewidth}{0.5pt}{3pt}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 中文、西文、数学及其他字体设置
\RequirePackage{fontspec} % 调用系统安装字体
%\setmainfont{Times New Roman} % 全局西文字体为 Times New Roman

\RequirePackage[T1]{fontenc}
\RequirePackage{newtxtext, newtxmath} % 设置西文、数学公式字体为 Times 样式

%\RequirePackage[T1]{fontenc}
%\RequirePackage{mathptmx} % 设置全局西文字体为 Times 样式

%\RequirePackage[T1]{fontenc}
%\RequirePackage{stix2} % 设置数学公式字体为 stix2

\setCJKmainfont[BoldFont = SourceHanSerifSC-Bold,
        ItalicFont = KaiTi]
        {SourceHanSerifSC-Regular} % 全局中文字体为思源宋体和楷体
%\setCJKsansfont[BoldFont = STHeiti]{STXihei}
%\setCJKmonofont{STZhongsong}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 要求系统中安装下列字体，否则注释掉未安装字体
\newcommand{\utopia}{\fontspec{UtopiaStd-Regular}} % 单独设置一部分英文字体为 UtopiaStd-Regular
\newcommand{\palatino}{\fontspec{Palatino}} % 单独设置一部分英文字体为 Palatino
\newcommand{\optima}{\fontspec{Optima}} % 单独设置一部分英文字体为 Optima
\newcommand{\arial}{\fontspec{ArialMT}} % 单独设置一部分英文字体为 Arial
\newcommand{\iowan}{\fontspec{IowanOldStyleBT-Roman}} % 单独设置一部分英文字体为 iowan

\setCJKfamilyfont{kaib}{STKaitiSC-Bold}
\newcommand{\kaib}{\CJKfamily{kaib}} % 单独设置一部分中文字体为粗楷体

\setCJKfamilyfont{weibei}{WeibeiSC-Bold}
\newcommand{\weibei}{\CJKfamily{weibei}} % 单独设置一部分中文字体为魏碑

\setCJKfamilyfont{libian}{STLibianSC-Regular}
\newcommand{\libian}{\CJKfamily{libian}} % 单独设置一部分中文字体为隶变

\setCJKfamilyfont{xingkai}{STXingkai}
\newcommand{\xingkai}{\CJKfamily{xingkai}} % 单独设置一部分中文字体为行楷

\setCJKfamilyfont{shouzha}{HannotateSC-W5}
\newcommand{\shouzha}{\CJKfamily{shouzha}} % 单独设置一部分中文字体为手札体

% 将数学字体宏包的求和、求积、积分等改回默认的 Computer Modern 字体
% \sum
\DeclareSymbolFont{largesymbolsCM}{OMX}{cmex}{m}{n}
\let\txsum\sum
\let\sum\relax
\DeclareMathSymbol{\sum}{\mathop}{largesymbolsCM}{"50}
% \infty
\DeclareSymbolFont{symbolsCM}{OMS}{cmsy}{m}{n}
\SetSymbolFont{symbolsCM}{bold}{OMS}{cmsy}{b}{n}
\let\txinfty\infty
\DeclareMathSymbol{\infty}{\mathord}{symbolsCM}{"31}
% \partial, \pi
\DeclareSymbolFont{lettersCM}{OML}{cmm} {m}{it}
\SetSymbolFont{lettersCM}{bold}{OML}{cmm} {b}{it}
\let\txpartial\partial
\DeclareMathSymbol{\partial}{\mathord}{lettersCM}{"40}
\let\txpi\pi
\DeclareMathSymbol{\pi}{\mathord}{lettersCM}{"19}
% int 
\RequirePackage{esint}

\everymath{\displaystyle} % 全文数学公式为 displaystyle 样式

% 定义对数常数 e，虚数符号 i, j 以及微分算子 d 为直立体等
\newcommand{\me}{\mathrm{e}}
\newcommand{\mi}{\mathrm{i}}
\newcommand{\mj}{\mathrm{j}}
\newcommand{\md}{\mathop{}\!\mathrm{d}}
\newcommand{\mt}{$\mathrm{m}^2$}

\RequirePackage{hologo} % 生成 LaTeX 样式文字
\RequirePackage{calligra} % 英语艺术字，Options: \calligra, \textcalligra

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 缩进、行距、间距、页边距、页眉页脚等
%\RequirePackage{indentfirst}
%\setlength{\parindent}{2em} % ctex 默认首行缩进两字符，可在此处修改为不缩减或其他缩进

\RequirePackage{microtype} % 改善单词、字母的间距
\RequirePackage{setspace} % 间距宏包
%\linespread{1.3} % ctex 默认行距 1.5 倍

\RequirePackage{titlesec} % 缩小 chapter 前间距
\titleformat{\chapter}
{\bfseries\Huge\centering}{第\chinese{chapter}章}{20pt}{\Huge}
\titlespacing*{\chapter}{0pt}{-20pt}{40pt} % 中间数字设置 chapter 前间距

\RequirePackage[left=2.5cm, right=2.5cm, top=2.5cm, bottom=2.5cm]{geometry} % 页边距
\RequirePackage{lscape} % 页面横排

\RequirePackage{fancyhdr}
\pagestyle{fancy}
%\chead{\footnotesize{}}
%\lhead{}
%\rhead{}
%\cfoot{\zihao{5} \thepage}
\renewcommand{\headrulewidth}{0.8pt} % 页眉线宽，设为 0 可去掉页眉线
\renewcommand{\footrulewidth}{0pt}
%\pagestyle{plain} % 页眉为空，页脚为页码
\setlength{\footskip}{1.5cm} % 正文底部到页脚距离
\fancypagestyle{plain}{
	\pagestyle{fancy}
} % chapter 标题页加页眉

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 浮动体、表格、图片、代码和文本框
\RequirePackage{float} % H 选项产生没有浮动效果的图表环境

% 有时如果多个浮动环境连续放在一起, LaTeX 会将它们分在几个不同页，即使它们可在同一页放得下。
% 我们可以通过修改 |\topfraction| 和 |\bottomfraction| 分别设置顶端和底端的浮动环境的最大比例
\renewcommand*{\topfraction}{0.9}
\renewcommand*{\bottomfraction}{0.8}
% 有时 LaTeX 会把一个浮动环境单独放在一页，我们要求这个环境至少要占据 85% 才能单独放在一页。
% 注意:  |\floatpagefraction| 的数值必须小于 |\topfraction|
\renewcommand*{\floatpagefraction}{0.85}

\RequirePackage{array}
\RequirePackage{booktabs} % 三线表格
\RequirePackage{multirow} % 多行表格
\RequirePackage{multicol} % 多列表格
\RequirePackage{longtable} % 分页表格
\RequirePackage{threeparttable} % 表格注释
\RequirePackage{bigstrut} % 调整间隔, 让表格更好看些
\RequirePackage{diagbox} % 斜线表头
\RequirePackage{colortbl} % 表格背景颜色 \cellcolor{内容}

\RequirePackage{graphicx} % 插入图片
\graphicspath{{images/}{figures/}{fig/}{img/}} % 图片文件夹路径

\RequirePackage{tikz} % TikZ 绘图
\usetikzlibrary{datavisualization,mindmap,trees}
\RequirePackage{pgfplots} % 使用 pgfplots 绘图工具包

\RequirePackage{fancyvrb} % 算法
\RequirePackage{listings}[language=python] % 排版代码
\def\lstbasicfont{\fontfamily{pcr}\selectfont\footnotesize}
\lstset{%
	belowcaptionskip=6pt,
    numbers=left,
    numberstyle=\scriptsize,
    showstringspaces=false,
    showspaces=false,
    tabsize=4,
    frame=shadowbox,
    rulesep=0.62pt,
    rulesepcolor=\color{black!80!blue},
    frameround=tftt,
    basicstyle={\footnotesize\lstbasicfont},
    keywordstyle=\color{darkblue}\bfseries,
    identifierstyle=,
    commentstyle=\color{darkgreen},
    stringstyle=\color{black},
    backgroundcolor=\color{black!5!white},
}

\RequirePackage{tcolorbox} % 文本框
\tcbuselibrary{most, skins, breakable, theorems}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 图、表浮动体标题设置
\RequirePackage{caption}
\captionsetup{
  hypcap=true, % 链接跳转到浮动体本身
	font={bf, footnotesize},
} % 链接跳转到图片而不是标题，字体为脚注字体、粗体

\captionsetup[table]{skip=5pt}
\captionsetup[figure]{skip=10pt}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 颜色、图标、脚注、索引、章节样式
\RequirePackage{color, xcolor}
\definecolor{darkgreen}{rgb}{0,0.3,0}
\definecolor{darkblue}{rgb}{0,0,0.3}
\definecolor{citered}{rgb}{.5,0,.5}  % 紫色
\definecolor{urlblue}{rgb}{0.19,0.54,0.92} % 浅蓝色
\definecolor{winered}{rgb}{0.5,0,0} % 血红色
\definecolor{moto}{RGB}{204,232,207} % 浅绿护眼色
\definecolor{geye}{RGB}{199,237,204} % 绿豆沙护眼色
\definecolor{apricot}{RGB}{246,239,218} % 杏黄护眼色
%\pagecolor{apricot} % 页面背景色
\definecolor{spotblue}{RGB}{0,51,153}

\RequirePackage{siunitx} % 各种单位符号
\RequirePackage{textcomp} % \textyen 人民币 ¥ 等符号
\RequirePackage{fontawesome} % 添加各种图标 icon
%\RequirePackage{awesomebox} % 制作提示框
\RequirePackage[misc]{ifsym} % 生成 Springer 期刊中的邮箱符号 \Letter
\RequirePackage[perpage]{footmisc} % 脚注扩展

% 脚注编号使用带圈数字
\RequirePackage{pifont}
\newcommand*\dingctr[1]{%
\protect\ding{\number\numexpr\value{#1}+171\relax}}
\renewcommand*\thefootnote{\dingctr{footnote}}
\makeatletter

% 脚注编号和文字同高
\renewcommand\@makefntext[1]{%
\setlength\leftskip{1.2\ccwd}%
\setlength\parindent{2\ccwd}\selectfont
\noindent\llap{\@thefnmark\ }#1}
\makeatother

\RequirePackage{makeidx}
\makeindex % 激活索引功能, 该命令不可省略

%\RequirePackage[Conny]{fncychap} % 定制章节样式
%Options: Sonny, Lenny, Glenn, Conny, Rejne, Bjarne, Bjornstrup

\setcounter{secnumdepth}{3} % subsubsection 编号
\setcounter{tocdepth}{3} % subsubsection 编入目录
%\setcounter{secnumdepth}{0} % 阻止 section 编号

% 列表编号 list/itemize/enumerate 设置
\RequirePackage[shortlabels]{enumitem}
\setlist{nolistsep}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 标题、目录、参考文献、附录
% 重定义 \maketitle，缩小默认 title 前垂直间距
\makeatletter
\def\@maketitle{%
  %\newpage
  %\null
  %\vskip 2em%
  \begin{center}%
  \let \footnote \thanks
    {\LARGE\bfseries \@title \par}%
    \vskip 1em%
    {\large
      \lineskip .5em%
      \begin{tabular}[t]{c}%
        \@author
      \end{tabular}\par}%
    \vskip 1em%
    {\large \@date}%
  \end{center}%
  \par
  \vskip 1.5em}
\makeatother

\RequirePackage{tocloft}
%\renewcommand\cfttoctitlefont{\hfill\Large\sffamily\bfseries} % 目录字体设置
\setlength\cftbeforetoctitleskip{10pt} % 目录标题前间距
\setlength\cftaftertoctitleskip{15pt} % 目录标题后间距
\setlength\cftbeforelottitleskip{10pt} % 表目录标题前间距
\setlength\cftafterlottitleskip{15pt} % 表目录标题后间距
\setlength\cftbeforeloftitleskip{10pt} % 图目录标题前间距
\setlength\cftafterloftitleskip{15pt} % 图目录标题后间距
% 也可使用 ctex 中的 \beforeskip 和 \afterskip 来控制章节标题与上下之间的垂直距离
\renewcommand{\cftchapleader}{\bfseries\cftdotfill{\cftdotsep}} % 目录中 chapter 后加上引导点

%\RequirePackage{natbib}
%\bibliographystyle{unsrt}
\RequirePackage{gbt7714} % 国标参考文献
\setlength{\bibsep}{3pt} % 参考文献行距
\def\bibfont{\small} % 参考文献字号

\RequirePackage{appendix} % 附录

%%%%%%%%%%%%%%%%%%%% hyperref 宏包设置
\RequirePackage[
	%backref=section,
	colorlinks=true,
	linkcolor=red,
	urlcolor=urlblue,
	citecolor=citered,
	anchorcolor=cyan,
	filecolor=winered,
	hyperfootnotes=true,
	%linktocpage,
]{hyperref}

\hypersetup{
	pdfborder={0 0 0},
	%pdfproducer={},
	pdfcreator={LaTeX with myrep class},
	pdftitle={},
	pdfsubject={},
	pdfauthor={任涛},
	pdfkeywords={},
} % 设置链接参数

\urlstyle{rm} % 链接为非打字体，与正文字体相同

% 重新定义原有命令或定义新命令
\renewcommand{\abstractname}{摘\; 要}
\renewcommand{\contentsname}{\hspace*{\fill}目\quad 录\hspace*{\fill}}
\renewcommand{\listtablename}{\hspace*{\fill}表\quad 目\quad 录\hspace*{\fill}}
\renewcommand{\listfigurename}{\hspace*{\fill}图\quad 目\quad 录\hspace*{\fill}}
\renewcommand{\refname}{\S\quad 参考文献}
\renewcommand{\contentsname}{\hspace*{\fill}附\quad 录\hspace*{\fill}}

\newcommand\figref[1]{图 \ref{#1} }
\newcommand\tabref[1]{表 \ref{#1} }
%\newcommand\email[1]{\href{mailto:#1}{\nolinkurl{#1}}}
