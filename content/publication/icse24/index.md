---
# Documentation: https://wowchemy.com/docs/managing-content/

title: "Are Prompt Engineering and TODO Comments Friends or Foes? An Evaluation on GitHub Copilot"
authors:
- David OBrien
- admin
- Sayem Imtiaz
- Rabe Abdalkareem
- Emad Shihab
- Hridesh Rajan
#authors: [Sumon Biswas and Hridesh Rajan]
date: 2024-11-08T21:25:33-05:00
# doi: "10.1109/ICSE48619.2023.00134"

# Schedule page publish date (NOT publication's date).
publishDate: 2023-12-01T20:25:33-05:00

# Publication type.
# Legend: 0 = Uncategorized; 1 = Conference paper; 2 = Journal article;
# 3 = Preprint / Working Paper; 4 = Report; 5 = Book; 6 = Book section;
# 7 = Thesis; 8 = Patent
publication_types: ["1"]

# Publication name and optional abbreviated publication name.
publication: "In 46th International Conference on Software Engineering (**ICSE**), Lisbon, Portugal"
publication_short: #"**ICSE'23**"

abstract: "Code intelligence tools such as GitHub Copilot have begun to bridge the gap between natural language and programming language. A frequent software development task is the management of technical debts, which are suboptimal solutions or unaddressed issues which hinder future software development. Developers have been found to ``self-admit'' technical debts (SATD) in software artifacts such as source code comments. Thus, is it possible that the information present in these comments can enhance code generative prompts to repay the described SATD? Or, does the inclusion of such comments instead cause code generative tools to reproduce the harmful symptoms of described technical debt? Does the modification of SATD impact this reaction? Despite the heavy maintenance costs caused by technical debt and the recent improvements of code intelligence tools, no prior works have sought to incorporate SATD towards prompt engineering. Inspired by this, this paper contributes and analyzes a dataset consisting of 36,381 TODO comments in the latest available revisions of their respective 102,424 repositories, from which we sample and manually generate 1,140 code bodies using GitHub Copilot. Our experiments show that GitHub Copilot can generate code with the symptoms of SATD, both prompted and unprompted. Moreover, we demonstrate the tool's ability to automatically repay SATD under different circumstances and qualitatively investigate the characteristics of successful and unsuccessful comments. Finally, we discuss gaps in which GitHub Copilot's successors and future researchers can improve upon code intelligence tasks to facilitate AI-assisted software maintenance."

# Summary. An optional shortened abstract.
summary: "We show that GitHub Copilot can generate code with the symptoms of SATD, both prompted and unprompted. Moreover, we demonstrate the tool's ability to automatically repay SATD under different circumstances and qualitatively investigate the characteristics of successful and unsuccessful comments."

tags: [machine learning, LLM, GitHub Copilot, technical debt]
categories: [conference]
featured: false

# Custom links (optional).
#   Uncomment and edit lines below to show custom links.
# links:
# - name: Follow
#   url: https://twitter.com
#   icon_pack: fab
#   icon: twitter

links:
- name: PDF
  url: uploads/td-copilot-ICSE24.pdf
  icon_pack: fas
  icon: file-pdf
# - name: Preprint
#   url: https://arxiv.org/abs/2212.06140
#   icon_pack: ai
#   icon: arxiv
# - name: Talk
#   url: https://youtu.be/wG2m5ADlab4
#   icon_pack: fab
#   icon: youtube

url_pdf: 
url_code: #https://github.com/sumonbis/Fairify
url_dataset:
url_poster:
url_project:
url_slides:
url_source:
url_video:

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.

image:
  caption: 'Technical Debts Introduced Through GitHub Copilot'
  focal_point: ""
  preview_only: false

# Associated Projects (optional).
#   Associate this publication with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `internal-project` references `content/project/internal-project/index.md`.
#   Otherwise, set `projects: []`.
projects: []

# Slides (optional).
#   Associate this publication with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides: "example"` references `content/slides/example/index.md`.
#   Otherwise, set `slides: ""`.
slides: ""
---

<!-- {{% callout note %}}
Click the *Cite* button above to demo the feature to enable visitors to import publication metadata into their reference management software.
{{% /callout %}} -->
