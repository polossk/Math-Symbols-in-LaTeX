# Math-Symbols-in-LaTeX

![Platfrom](https://img.shields.io/badge/Platfrom-TeXLive2021-3D6117.svg)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
![Status](https://img.shields.io/badge/status-complete-brightgreen.svg)
![Version](https://img.shields.io/badge/version-v2.2.2.0414-674EA7.svg)
[![DOI](https://zenodo.org/badge/108990460.svg)](https://zenodo.org/badge/latestdoi/108990460)

## Usage

1. 将 `math-symbols.sty` 拷贝至工作目录
2. 在 tex 文档中添加 `\usepackage{math-symbols}` 即可
3. 所有符号请参阅 [`math-symbols-readme.pdf`](readme.pdf)

## 配合 VSCode LaTeX Workshop 使用

1. 在 VSCode 中安装 LaTeX Workshop 插件
2. 在设置中搜索 `latex-workshop.hover.preview.mathjax.extensions` 选项，依次添加如下插件
```json
{
    "latex-workshop.hover.preview.mathjax.extensions": [
        "boldsymbol",
        "mathtools",
        "cases",
        "gensymb",
        "textmacros"
    ]
}
```
3. 在设置中搜索 `latex-workshop.hover.preview.newcommand.newcommandFile` 选项，填入 `custom-math-symbols.tex`
```json
{
    "latex-workshop.hover.preview.newcommand.newcommandFile": "custom-math-symbols.tex"
}
```
4. 将 `custom-math-symbols.tex` 文件和 `math-symbols.sty` 拷贝至工作目录，参考上一节的 2、3 步骤

## Notes

* 整理了一些简单的数学宏定义方便写作, 更多问题请参见[readme.pdf](readme.pdf)
* 正确的标准符号请参阅[LaTeX-Mathematical-Symbols-Manual.pdf](LaTeX-Mathematical-Symbols-Manual.pdf) (<https://reu.dimacs.rutgers.edu/Symbols.pdf>)
* 命名规则基于"所读即所写"(WYRIWYT, abbr of **W**hat **Y**ou **R**ead **I**s **W**hat **Y**ou **T**ype)
* 一键催更或提交bug [issue](https://github.com/polossk/Math-Symbols-in-LaTeX/issues/new)
* 基于[MIT-LICENSE](LICENSE)，如有帮助，请在自己的文章中引用

## BibTeX

```bibtex
@software{MathSymbolsinLaTeXbypolossk,
    title       = {Math Symbols in {{\LaTeX}}},
    author      = {Shangkun Shen},
    year        = {2017},
    month       = {10},
    publisher   = {Zenodo},
    doi         = {10.5281/zenodo.4120375},
    url         = {https://doi.org/10.5281/zenodo.4120375}
}
```

## English Version

1. Copy `math-symbols.sty` in your working directory
2. Add `\usepackage{math-symbols}` in your tex document
3. Check [`math-symbols-readme.pdf`](readme.pdf) for details.

## Work with VSCode LaTeX Workshop

1. Install LaTeX Workshop Extension in VSCode
2. Find option `latex-workshop.hover.preview.mathjax.extensions` in setting, then select the following extensions of mathjax
```json
{
    "latex-workshop.hover.preview.mathjax.extensions": [
        "boldsymbol",
        "mathtools",
        "cases",
        "gensymb",
        "textmacros"
    ]
}
```
3. Find option `latex-workshop.hover.preview.newcommand.newcommandFile` in setting, then set to `custom-math-symbols.tex`
```json
{
    "latex-workshop.hover.preview.newcommand.newcommandFile": "custom-math-symbols.tex"
}
```
4. Copy `custom-math-symbols.tex` together with `math-symbols.sty` to your working directory, then follow the instructions 2, 3 of above section

### Appendix

* summed up a sort of symbol in writing math equtions in LaTeX, check [readme.pdf](readme.pdf) for further information
* More correct math symbols are showing in [LaTeX-Mathematical-Symbols-Manual.pdf](LaTeX-Mathematical-Symbols-Manual.pdf) (<https://reu.dimacs.rutgers.edu/Symbols.pdf>)
* based on WYRIWYT rule(abbr of **W**hat **Y**ou **R**ead **I**s **W**hat **Y**ou **T**ype)
* one click to cuigeng or report bug [issue](https://github.com/polossk/Math-Symbols-in-LaTeX/issues/new)
* using [MIT-LICENSE](LICENSE), please cite if it helps

## Copyright

Use this code whatever you want, under the circumstances of acknowleged the mit license this page below. Star this repository if you like, and it will be very generous of you!

## License

The MIT License (MIT)
Copyright (c) 2017 Shangkun Shen, http://polossk.com <polossk_dev@126.com>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the “Software”), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
