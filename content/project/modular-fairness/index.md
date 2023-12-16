---
title: Causal Fairness in Machine Learning Pipeline
summary: We used causal reasoning to measure fairness of components and remove them from machine learning pipeline.
tags:
- Fairness
date: "2021-05-28T00:00:00Z"

# Optional external URL for project (replaces project detail page).
external_link: ""

image:
  caption:
  focal_point: Smart

links:
#- icon: copy
#  icon_pack: fas
#  name: Paper
#  url: "/publication/esec-fse20"
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

Software fairness has been violated in many critical predictive applications in recent times. We have seen a number of those news in last few yers.
The machine learning (ML) models used to make the predictions can exhibit bias for various reasons. In this project, we address the *algorithmic fairness* of the models, which is measured from the predictions of the model.

{{< figure src="news.jpg" caption="Reported fairness violations" numbered="false" >}}

Many research looked at the problem and proposed different measures and mitigations to make the models fairer. However, the prior works consider the ML model wholistically as a black-box, and do not look at the fairness of components in the ML pipeline. ML pipeline can have several components and stages such as preprocessing, training, tuning, evaluation, etc. Each of them can affect the ultimate fairness of the model. Our goal is to investigate the fairness in the component-level and identify the modules that are causing the unfairness.

{{< figure src="black-box.png" caption="Reported fairness violations" numbered="false" >}}

First, we do not consider the whole ML model as a single black box. Along with commenting on the fair of unfair behavior of the whole model, we look inside the black box and try to understand which components are responsible for the unfairness of the model. [Our FSE'21 paper]({{< relref "/publication/esec-fse21" >}}) paper focused on identifying unfair preprocessing stages in ML pipeline.

{{% callout note %}}
What is the fairness measure of a certain component/stage (e.g., imputation, scaling, etc.) in ML pipeline?
{{% /callout %}}

Look at the following ML pipeline which is taken from the [crime prediction analysis repository of Propublica](https://github.com/propublica/compas-analysis). The pipeline operates on Compas dataset that contains records of about 7k defendants in Florida. This was used at US courts in at least 10 states including New York, Wisconsin, California, Florida, etc [^1]. The pipeline transforms data using six data transformers before applying the LogisticRegression model. For example, in line 2-5, custom data filtration was applied, and in line 12, an imputation method from the library was applied to replace the missing values for the feature `is_recid`. When we measure the fairness of this model using existing metrics such as statistical parity or equal opportunity, that does not say anything about the fairness of these data transformers.

[^1]: https://www.propublica.org/article/machine-bias-risk-assessments-in-criminal-sentencing.

{{< highlight python "linenos=true,linenostart=1" >}}
df = pd.read_csv(f_path)
df = df[(df.days_b_screening_arrest <= 30)
    & (df.days_b_screening_arrest >= -30)
    & (df.is_recid != -1) & (df.c_charge_degree != 'O')
    & (df.score_text != 'N/A')]
df = df.replace('Medium', 'Low')
labels = LabelEncoder().fit_transform(df.score_text)
impute1_onehot = Pipeline([
    ('imputer1', SimpleImputer(strategy='most_frequent')),
    ('onehot', OneHotEncoder(handle_unknown='ignore'))])
impute2_bin = Pipeline([
    ('imputer2', SimpleImputer(strategy='mean')),
    ('discretizer', KBinsDiscretizer(n_bins=4, encode='ordinal', strategy='uniform'))])
featurizer = ColumnTransformer(transformers=[
    ('impute1_onehot', impute1_onehot, ['is_recid']),
    ('impute2_bin', impute2_bin, ['age'])])
pipeline = Pipeline([('features', featurizer),
    ('classifier', LogisticRegression())])
{{< / highlight >}}

We used causal reasoning in software to identify the fairness impact of those stages in the prediction.

## Causality in Software

Identifying causal effects has been an integral part of scientific inquiry. It helped to answer a wide range of questions like - understanding behavior in online systems, or effect of social policies, or risk factors for diseases and so on.

In causal testing, given a failing test, causal experiments are conducted to find a set of test-passing inputs that are close to the failing input.
In this project, we also used this casual modeling on the pipeline. We intervene on one variable of interest at a time and observe the change in the outcome.

{{% callout note %}}
For two random variables $X$ and $Y$, we say that $X$ causes $Y$ when there exist at least two different interventions on $X$ that result in two different probability distributions of $Y$.
{{% /callout %}}


## Causality in Fairness

Causality in fairness has also been studied in the literature. “Other things being equal”, prediction would not have changed in the counterfactual world, where only the intervened variable would have changed.

A predictor $\hat{Y}$ is said to satisfy causal fairness if

$$
P(\hat{Y}(a, U) = y | X = x, A = a) = P(\hat{Y}(a', U) = y | X = x, A = a)
$$

We create an alternative pipeline $\mathcal{P}* $ from the given pipeline $\mathcal{P} $ by removing the preprocessing stage in consideration. Then we look at the prediction disparity between $\mathcal{P} $ and $\mathcal{P}* $. The disparity can be fairness satisfying or not. To evaluate that, we used the existing fairness criteria from the literature.

{{% callout note %}}
Thus, we proposed four novel metrics to measure fairness of a stage in the ML pipeline.
{{% /callout %}}

We observed a number of patterns of fairness of the the data transformers that are commonly used in pipelines.

1. Data filtering and missing value removal change the data distribution and hence introduce bias in ML pipeline.

2. New feature generation or feature transformation can have large impact on fairness.

3. Encoding techniques should be chosen cautiosly based on the classifier.

4. Similar to the tradeoff between the accuracy and fairness for the classifier, the stages of the pipelines also exhibit the tradeoff. Often the accuracy-improve data transformer is unfair.

5. Among all the transformers, applying sampling technique exhibits most unfairness.

6. Selecting a subset of features often increase unfairness.

7. Feature standardization and non-linear transformers are fair transformers.

Furthermore, another impact that our method could attain is that we can instrument the pipeline. A pipeline can have a unfair stage that favors the privileged. Similarly, there can be another stage that favors the unprivileged. Both stages can be used in a pipeline such that their unfairness is canceled.

{{% callout note %}}
The fairness composition can help to choose appropriate alternatives while development and improve the overall fairness.
{{% /callout %}}

We noticed that the most popular fairness packages (e.g., [AIF360](https://aif360.readthedocs.io/en/latest/#)) uses a default data preprocessing each time users import datasets from the packages. There is no option to control or measure the unfair stages in the pipeline. Our early results would provide guidance to analyze fairness at a component-level. Further research in the area is in progress to understand fairness composition and optimize the pipeline construction.


<!-- {{< cite page="/publication/esec-fse21" view="4" >}} -->
