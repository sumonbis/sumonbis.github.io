---
title: Our Research Identifies Unfairness in the Component Level of AI Based Software
subtitle: How can we remove certain stages in machine learning pipeline that are biased towards a societal group?

# Summary for listings and search engines
summary: We proposed causal reasoning in machine learning pipeline to measure fairness of data preprocessing stages.

# Link this post with a project
projects: [fairness]

# Date published
date: "2021-05-02T00:00:00Z"

# Date updated
lastmod: "2021-05-02T00:00:00Z"

# Is this an unpublished draft?
draft: false

# Show this page in the Featured widget?
featured: false

# Featured image
# Place an image named `featured.jpg/png` in this page's folder and customize its options here.
image:
  caption: 'Ensure fairness of software'
  focal_point: ""
  placement: 4
  preview_only: false

authors:
# - admin

tags:
- Fairness
- Causal reasoning
- Machine learning

categories:
- Research
---

The government, academia, industry are increasingly employing artificial intelligence (AI) systems in decision making. With the availability of numerous data, AI systems are becoming more popular in various sectors. Many of these systems affect human lives directly in one way or another. Our research highlighted that many of such real-world machine learning (ML) models exhibit unfairness with respect to certain societal groups of race, sex or age. In the last few years, our software design lab employed significant effort to identify fairness in machine learning algorithms and mitigate that effectively. Recent result shows that several components in an ML pipeline are influencing the predictive result that is unfair to minority groups such as dark-skinned people or female.

I and my advisor Hridesh Rajan are working in the D4 Institute at Iowa State which broadly focuses on increasing the dependability of AI-based systems.

> The accuracy of a model is not always telling the whole story. How much bias the model propagates or how much we can trust the prediction is a big question.

These AI-based software are being used in hiring employees, approving loans, criminal sentencing, which should be more accountable and explainable. Analyzing the behavior of ML pipeline in component level would help towards that goal.
[Our paper proposing a novel method to identify unfairness of ML components]({{< relref "/publication/esec-fse21" >}}) has been recently accepted in [ESEC/FSE 2021](https://2021.esec-fse.org/), which is one of top software engineering conference and internationally renowned forum for researchers, practitioners, and educators.

In the paper, we proposed a causal method to measure the fairness of different stages in ML pipeline.

> Although some recent work proposed metrics to quantify the bias in the predictions, ML software is complex having several stages. Our method could effectively identify the data transformers that caused unfairness in such software.

We strongly believe that the researchers and practitioners would be able to leverage our approach to avoid biased data preprocessing. Our goal in the long-run would be to unveil the ML black box and reason about fairness constraints.


I will present the results of the paper entitled “Fair Preprocessing: Towards Understanding Compositional Fairness of Data Transformers in Machine Learning Pipeline”, in the research track of the 29th ACM Joint European Software Engineering Conference and Symposium on the Foundations of Software Engineering (ESEC/FSE) to be held in Athens, Greece from August 23-28, 2021. The preprint of the paper is available here: https://arxiv.org/pdf/2106.06054.pdf.

We are excited on the acceptance of the paper in a top venue in our area. We are continuing the research to explore new avenues and assure the fairness of machine learning software.
