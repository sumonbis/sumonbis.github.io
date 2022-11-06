---
title: Fairness Engineering in ML Models
summary: We have studied the software engineering concerns of fairness in real-world machine learning models.
tags:
- Fairness
date: "2020-05-19T00:00:00Z"

# Optional external URL for project (replaces project detail page).
external_link: ""

image:
  caption:
  focal_point: Smart

links:
#- icon: twitter
#  icon_pack: fab
#  name: Follow
#  url: https://twitter.com/georgecushen
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

Software engineering (SE) research has focused on identifying, localizing, and repairing defects in software systems. With the evolution of programming languages, coding practices and requirements, various kinds of bugs of software has drawn interest. Recent trend of machine learning techniques has raised the question of dependability of the predictive decisions. Fairness of the machine learning (ML) models has been an open issue for such software systems in last few years. In critical decision making such as loan approval, crime prediction, college admission or hiring employees, ML algorithms are being used. However, the problem of fairness has not been studied by the SE community as much as the ML community looked into it. We conducted an empirical study in [our FSE'20 paper]({{< relref "/publication/esec-fse20" >}}) to investigate a number of SE concerns of measures, mitigation, and impact of unfairness in ML models.

> It is important to ensure the fairness of the ML models so that no discrimination is made based on protected attribute (e.g., race, sex, age) while decision making.

First, it is important to look at the real-world software systems to understand the state of unfairness. Most of the study experiment using default-set classifiers from libraries. Thus, often the real faults and concerns with fairness are missed. However, it might be difficult to find such open-source models in the wild. We found a good number of models from Kaggle that helped to point down fairness issues in the wild.


## Fairness Measures

The foremost big concern is that how do we know there is a fairness issue in my model. Well, it depends on the stakeholder and the context. The participants could ask for *equal opportunity*, while the owners focus on the *disparate impact*. A popular library for fairness, [AIF360](https://aif360.readthedocs.io/en/latest/#) has more than 70 metrics to measure fairness. Two most common used broad categories of fairness measures are:

1. Group fairness
2. Individual fairness

The *impossibility theorem* of fairness suggests that satisfying fairness with respect to all the definition can not be achievable, since one definition can contradict another. Furthermore, fairness in classification problem has been focused is most of the works, while fairness of regression or ranking problems is not yet well studied.


{{% callout note %}}
Choosing appropriate fairness metrics and optimizing them simultaneously is an important requirement engineering problem to be solved.
{{% /callout %}}

We found several interesting finding from our experiments:

1. Only one fairness metric would not show the whole picture. There is no metric that combines multiples metric too.

2. Fairness metrics have their assumptions as well. Most of the group fairness metrics require the dataset divided into privileged and non-privileged. So, it can not compute unfairness among multiple groups (e.g., Asian, American, African, etc.) at the same time. Furthermore, the metrics measure fairness with respect to one protected attribute (*race* or *sex* or *age*). A fair model with respect to *sex* could be biased with respect to *age*.

2. Developers often tend to optimize the models for accuracy, which causes unfairness.

3. The library APIs such as classifiers from [Scikit-Learn](https://scikit-learn.org/stable/modules/classes.html) have several constructs that affect fairness. But those are not document and developers are aware of their fairness impacts.

4. It is often thought that if data is fair, the model would be so too. {{< hl >}}Although data has a great deal of impact of fairness of the decisions, a model could be fairer which used biased data{{< /hl >}}. At the same time, a model could be biased which was trained on unbiased data. We found that some data preparation techniques, thus, can have both positive or negative impact on fairness. Specifically, the data standardization and feature engineering (removal or creation) techniques affect fairness almost always.

## Bias Mitigation

There are many bias mitigation techniques proposed in the literature, which are grouped into these categories:
<!-- {style="color: red"} -->

- **Preprocessing techniques:** These techniques operate on the training data to make the resulting model fairer.
- **In-processing techniques:** These techniques alters the existing mode.
- **Post-processing techniques:** The predictions are changes with some constraints to make them fairer.

{{% callout note %}}
Choosing a bias mitigation technique can be also confusing. Applying one mitigation technique can work for a particular metric and hamper accuracy as well as another fairness metric.
{{% /callout %}}

In our paper, we reported several observations that help to choose a mitigation technique for the model.

1. Effective preprocessing mitigation technique is preferable, since it does not ruin accuracy in most of the cases.

2. If the model exhibits a lot of bias, post-processing techniques are the most successful.

3. Originally fairer models are debiased effectively by preprocessing or in-processing
techniques.

## Impacts
Fairnes does not come free. In most of models, there is a accuracy loss when the mitigation technique are applied. Multi-objective optimization could be utilized to improve fairness and accuracy together.

1. In-processing mitigation algorithms show uncertain behavior in their performance.

2. Although post-processing algorithms are the most dominating in debiasing, they are always diminishing the model accuracy and F1 score.

3. Trade-off between performance and fairness exists.

Overall, ensuring fairness require to address many dimensions of the problem at the same time. There is a wrong perception that only debiasing training data would suffice to make the model fair. The training is not always uniform and it does not learn from all the data instances equally. So, its needed to make the learning process better as well. Because of the tradeoff, multiple metrics, domain-specific issues, we need further testing and verification mechanisms as well. A few studies proposed fairness aware language constructs and test input generation techniques. However, we need further languages, tools, and methods to localize the fairness issue and repair them in real-world situations.
