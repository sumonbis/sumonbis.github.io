---
# Documentation: https://wowchemy.com/docs/managing-content/

title: "Fix Fairness, Don't Ruin Accuracy: Performance Aware Fairness Repair using AutoML"
authors:
- Giang Nguyen
- admin
- Hridesh Rajan
#authors: [Sumon Biswas and Hridesh Rajan]
date: 2023-05-07T21:25:33-05:00
doi:

# Schedule page publish date (NOT publication's date).
publishDate: 2023-05-07T21:25:33-05:00

# Publication type.
# Legend: 0 = Uncategorized; 1 = Conference paper; 2 = Journal article;
# 3 = Preprint / Working Paper; 4 = Report; 5 = Book; 6 = Book section;
# 7 = Thesis; 8 = Patent
publication_types: ["1"]

# Publication name and optional abbreviated publication name.
publication: "In 31st ACM Joint European Software Engineering Conference and Symposium on the Foundations of Software Engineering (**ESEC/FSE**), San Francisco, California"
publication_short: #"**ESEC/FSE'21**"

abstract: "Machine learning (ML) is increasingly being used in critical decision-making software, but incidents have raised questions about the fairness of ML predictions. To address this issue, new tools and methods are needed to mitigate bias in ML-based software. Previous studies have proposed bias mitigation algorithms that only work in specific situations and often result in a loss of accuracy. Our proposed solution is a novel approach that utilizes automated machine learning (AutoML) techniques to mitigate bias. Our approach includes two key innovations: a novel optimization function and a fairness-aware search space. By improving the default optimization function of AutoML and incorporating fairness objectives, we are able to mitigate bias with little to no loss of accuracy. Additionally, we propose a fairness-aware search space pruning method for AutoML to reduce computational cost and repair time. Our approach, built on the state-of-the-art \as tool, is designed to reduce bias in real-world scenarios. In order to demonstrate the effectiveness of our approach, we evaluated our approach on four fairness problems and 16 different ML models, and our results show a significant improvement over the baseline and existing bias mitigation techniques. Our approach, \fairautoml, successfully repaired 60 out of 64 buggy cases, while existing bias mitigation techniques only repaired up to 44 out of 64 cases."

# Summary. An optional shortened abstract.
summary: "Our approach includes two key innovations: a novel optimization function and a fairness-aware search space. By improving the default optimization function of AutoML and incorporating fairness objectives, we are able to mitigate bias with little to no loss of accuracy. Additionally, we propose a fairness-aware search space pruning method for AutoML to reduce computational cost and repair time."

tags: [software fairness, bias mitigation, trade-off, machine learning]
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
  url: uploads/fair-automl-FSE23.pdf
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
url_code: https://github.com/giangnm58/Fair-AutoML
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
