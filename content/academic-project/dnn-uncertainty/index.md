---
title: Semantics of Compound Comparison Statement and Generator Function in Lambda Calculus
summary: I have extended Lambda calculus using Coq proof assistant to implement a core language that includes two Python language features (compound comparison statement and generator function). I have also described the syntax, operational semantics and type system of the features.
 
tags:
- Programming languages
date: "2019-02-22T00:00:00Z"

# Optional external URL for project (replaces project detail page).
external_link: ""

image:
  caption:
  focal_point: Smart

links:
- icon: github
  icon_pack: fab
  name: GitHub
  url: https://github.com/sumonbis/NewSemantics
url_code: ""
url_pdf: ""
url_slides: ""
url_video: ""

# Slides (optional).
#   Associate this project with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides = "example-slides"` references `content/slides/example-slides.md`.
#   Otherwise, set `slides = ""`.
slides: #example

---

Python is a widely used programming language in education, science and industry. Many distinctive language constructs made Python easy-to-learn and expressive. However, semantics of some advanced features can create corners for the language such as weak scope resolution. The language weaknesses lead to different behaviors from IDEs and create confusions among developers. In this project, our goal is to study two unique language constructs of Python: compound comparison statement and generator. Compound comparison statement is similar to regular if statement but it contains chaining comparison as conditions. Chaining comparison (e.g., x < 10 < x*10 < 100) is a syntactic sugar which combines two comparison operations into one. Generator is another powerful control-flow construct with one or more yield statements which is used for creating user-defined iterators. In this study, we have extended Lambda cal- culus to implement a core language that includes the above two Python language features. We have also described the details of the syntax, operational semantics and type system of the features. In our implementation, we have used Coq proof assistant so that we can further check the correctness of the construct properties.

For details refer to the project [report](https://github.com/sumonbis/NewSemantics/blob/master/report.pdf).
