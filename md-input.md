
[TOC]

# 我是 Markdown

这里可以用 Markdown 语法，撰写各种内容。例如，我可以*强调*，也可以**加粗**，当然也可以***加粗并强调***。

## 这里是二级标题

> 幸福的获得，在极大的程度上却是由于消除了对自我的过分关注。
> ---Bertrand Arthur William Russell

你看，我还可以使用引用↑。

## 关于 dash, en-dash 和 em-dash

LaTeX 使用者都应该知道 dash, en-dash 和 em-dash。dash 是普通的连字符，举例如：「five-year-old boy」。en-dash 是表示范围的稍长的横线，举例如：「以下章节是重点：12--15」。em-dash 则是英文中的破折号，举例如：「---Bertrand Arthur William Russell」

## 脚注

欢迎查阅[我的主页](https://retompi.com)，希望[^1]你会喜欢^[这里有很多好东西哦！]。

[^1]: 这是一个脚注。

如果你想看到更多 LaTeX 知识，欢迎前往 <http://www.latexstudio.net/>。

## 代码块

Python 中的 `print` 函数可用来将内容打印到标准输出。例如，下列 Python 代码将循环 10 次，打印「Hello world」至标准输出。

```python
for i in range(10):
    print("hello world")

import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
p = np.linspace(0,20,100)
plt.plot(p, np.sin(p))
plt.show()
```

## 图表

### 图片

![example-image](example-image.jpg "An example image")

### 表格

| 序号 | 姓名 |
|-----|-----|
| 1 | 张三 |
| 2 | 李四 |
| 3 | 王五 |

## 数学公式

行内数学公式： $\omega = \mathrm{d}\phi / \mathrm{d} t$.

行间数学公式：

\begin{equation}
\sum I = \int \rho R^{2} \mathrm{d} V
\end{equation}

以及，利用反斜线输出各种标点符号：\`foo\`, \*bar\*。

## 引用

The TeXbook [@Knuth92] was written by @Knuth92.

Look the difference citekey entry:

This template is powered by `markdown` package [@novotny17markdown]. And as you can see, @novotny17markdown is really amazing.
