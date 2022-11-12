---
# Documentation: https://wowchemy.com/docs/managing-content/

title: "23 Shades of Self-Admitted Technical Debt: An Empirical Study on Machine Learning Software"
authors:
- David OBrien
- admin
- Sayem Imtiaz
- Rabe Abdalkareem
- Emad Shihab
- Hridesh Rajan
#authors: [Sumon Biswas and Hridesh Rajan]
date: 2022-06-14T21:25:33-05:00
# doi: "10.1145/3468264.3468536"

# Schedule page publish date (NOT publication's date).
publishDate: 2022-06-14T21:25:33-05:00

# Publication type.
# Legend: 0 = Uncategorized; 1 = Conference paper; 2 = Journal article;
# 3 = Preprint / Working Paper; 4 = Report; 5 = Book; 6 = Book section;
# 7 = Thesis; 8 = Patent
publication_types: ["1"]

# Publication name and optional abbreviated publication name.
publication: "In 30th ACM Joint European Software Engineering Conference and Symposium on the Foundations of Software Engineering (ESEC/FSE)"
publication_short: #"**ESEC/FSE'21**"

abstract: "In software development, the term “technical debt” (TD) is used to characterize short-term solutions and workarounds implemented in source code that may incur a long-term cost. Technical debt has a variety of forms and can thus affect multiple qualities of software including but not limited to its legibility, performance, and structure. In this paper, we have conducted a comprehensive study on the technical debt in machine learning (ML) based software. Technical debt can appear differently in ML software by infecting the data that ML models are trained on, thus affecting the functional performance of ML systems. The growing inclusion of ML components in modern software systems are introducing new set of TDs. Does ML software have similar TDs to traditional software? If not, what are the new types of machine learning specific technical debts? Which ML pipeline stages those debts appear? Do these debts differ in ML tools and applications and when they get removed? Currently, we do not know the state of the ML TDs in the wild. To address these questions, we mined 68,821 self admitted technical debts (SATD) from all the revisions of a curated dataset consisting of 2,686 mature ML repositories from GitHub, along with their introduction and removal. By applying an open-coding scheme and following upon prior works, we provided a comprehensive taxonomy of ML SATDs. Our study analyzes ML SATD type organizations, their frequencies within stages of ML software, the differences between ML SATDs in applications and tools, and the effort of ML SATD removals. The findings discovered suggest implications for ML developers and researchers to create maintainable ML systems."

# Summary. An optional shortened abstract.
summary: "We provided a comprehensive taxonomy of machine learning SATDs. Our study analyzes ML SATD type organizations, their frequencies within stages of ML software, the differences between ML SATDs in applications and tools, and the effort of ML SATD removals. The findings discovered suggest implications for ML developers and researchers to create maintainable ML systems."

tags: [machine learning, technical debt, evolution, maintenance]
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
  url: https://design.cs.iastate.edu/papers/ESEC-FSE-22/23Shades-fse22.pdf
  icon_pack: fas
  icon: file-pdf
# - name: arXiv
#   url: https://arxiv.org/abs/2106.06054
#   icon_pack: ai
#   icon: arxiv
# - name: Talk
#   url: https://youtu.be/X-Nvn6DhHsA
#   icon_pack: fab
#   icon: youtube

url_pdf:
url_code: https://github.com/DavidMOBrien/23Shades
url_dataset:
url_poster:
url_project:
url_slides:
url_source:
url_video:

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.

# image:
#   caption: 'A canonical machine learning pipeline'
#   focal_point: ""
#   preview_only: false

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
