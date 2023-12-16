---
# Documentation: https://wowchemy.com/docs/managing-content/
widget: pages

# This file represents a page section.
headless: true

# Order that this section appears on the page.
weight: 2

title: Research
subtitle:

# Date format
#   Refer to https://wowchemy.com/docs/customization/#date-format
date_format: Jan 2006

draft: false

content:
  # Page type to display. E.g. post, talk, publication...
  page_type: none
  # Choose how much pages you would like to display (0 = all pages)
  count: 10
  # Choose how many pages you would like to offset by
  offset: 0
  # Page order: descending (desc) or ascending (asc) date.
  order: desc
  # Filter on criteria
  filters:
    tag: ''
    category: ''
    publication_type: ''
    author: ''
    exclude_featured: true

design:
  # Choose a view for the listings:
  #   1 = List
  #   2 = Compact
  #   3 = Card
  #   4 = Citation (publication only)
  view: 2
  columns: "1"
---

<!-- ## Research -->
I'm broadly interested in the intersection of SE and AI with particular focus in the *SE for AI* area. Unlike traditional software systems, AI based software is data-intensive, uncertain, and posing significant ethical and safety risks for society. 
My research in the area established fairness as a non-functional SE property for AI based software. 
By adopting both **formal and empirical** SE approaches, I aim to achieve safety and fairness through analysis of software abstractions and real-world implementations.

- **Fairness verification and reasoning:** fairness verification of DNN ([ICSE'23](uploads/fairify-ICSE23.pdf)), causal reasoning in ML ([FSE'22](uploads/causal-reasoning-FSE21.pdf)), compositional fairness ([ICSE'23](uploads/ensemble-fairness-ICSE23.pdf))
- **Design fair and safe AI:** root cause analysis of bias ([FSE'21](uploads/fairness-study-FSE20.pdf)), fair AutoML for trade-off ([FSE'23](uploads/fair-automl-FSE23.pdf)), long-term analysis for safety ([FSE-SE4SafeML'23](uploads/safe-ML-FSE23.pdf))
- **AI engineering and static analysis:** AI software architecture ([ICSE'22](uploads/pipeline-ICSE22.pdf)), ML technical debts ([FSE'22](uploads/ml-techdebt-FSE22.pdf)), Repay debts using LLMs ([ICSE'24](uploads/td-copilot-ICSE24.pdf)), large-scale ML code mining ([MSR'19](uploads/boa-python-MSR19.pdf))

Currently, I'm working on ensuring fairness and safety of learning-based software systems (socio-technical and cyber-physical). In particular, I'm designing novel analysis framework and safe-by-construction methods that guarantee certain properties. In the near future, I'm aiming to build adaptive techniques towards **sustainable AI/ML** software.
<!-- , given the growing dependability requirements that endure over time. -->