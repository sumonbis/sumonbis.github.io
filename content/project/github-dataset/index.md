---
title: ML Repo Dataset from GitHub
summary: This dataset is created by mining 5M Python program snapshots. The code is transformed to AST for static analysis.
tags:
- BigCode
- SE4ML
date: "2019-09-22T00:00:00Z"

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

Data science (DS) is everywhere now. The chart below shows the increasing number of publications with the topic “machine-learning” in the title. Also, the number of open source data science repositories in GitHub is growing very rapidly. Mining Software Repository have been very successful in recent times for SE research. Some datasets like *Dacapo*, *Quallitas* created new opportunity for MSR research. However, there is no dataset available to analyze DS software written in Python language. So, we created this dataset by mining open-source repositories from GitHub. The dataset was published in [MSR 2019]({{< relref "/publication/msr19" >}}).

{{< figure src="trend.png" caption="Mined data from GitHub DS repositories" numbered="false" >}}

1. We created a dataset that contains top rated 1,558 DS projects from Github that are written in Python.
2. For storing and analyzing efficiently, we have stored the dataset in Hadoop sequence file.
3. The dataset is available in [Boa](http://boa.cs.iastate.edu/) platform.

{{% callout note %}}
The details about the parsing, mining, and usage can be found [here]({{< relref "/project/mining-ml" >}}).
{{% /callout %}}

## Dataset Details

Different metrics of the dataset in showed in the table at the top. We used several filtering criteria to select top-rated data DS repositories. The properties of the dataset are:

{{< figure src="filtering.png" caption="Filtering criteria to select GitHub repos." numbered="false" >}}

1. Original (not forked) project with Python as the primary language.
2. Contains at least one data science keywords like machine-learning, deep neural network in the description of the project. The whole list of keywords are as follows:

```
"machine learn", "machine-learn", "data sci", "data-sci", "big data", "big-data",
 "large data", "large-data", "data analy", "data-analy", "deep learn", "deep-learn",
 "data model", "data-model", "artificial intel", "artificial-intel", "mining",
  "topic modelling", "topic-modelling", "natural language pro", "natural-language-pro",
  "nlp", "data frame", "data proces", " ml ", "tensorflow", "tensor flow", "tensor-flow",
  "theano", "caffe", "keras", "scikit-learn", "kaggle", "spark", "hadoop", "mapreduce",
  "hdfs", "neural net", "neural-net"
```
3. Contains at least one usage of data science library like Pytorch, Caffe, Keras, Tensorflow, etc. A full list of used 33 Python data science libraries are listed below:
```
"theano", "pytroch", "caffe", "keras", "tensorflow", "sklearn", "numpy", "scipy", "pandas", "statsmodels",
"matplotlib", "seaborn", "plotly", "bokeh", "pydot", "xgboost", "catboost", "lightgbm", "eli5",
"elephas", "spark", "nltk", "cntk", "scrapy", "gensim", "pybrain", "lightning", "spacy", "pylearn2",
"nupic", "pattern", "imblearn", "pyenv"
```
4. Each repository contains at least 80 star.

The dataset contains projects owned by both organizations and individual users. Some of the top rated projects are *Tensorflow Models, Keras, Scikit-learn, Pandas, Spacy, Spotify Luigi, NVIDIA FastPhotoStyle, Theano,* etc.

{{% callout note %}}
A full list of all the 1,558 Github projects are available [here](https://github.com/boalang/MSR19-DataShowcase/blob/master/info.txt).
{{% /callout %}}

- 350 projects in the dataset are maintained by different organizations (Google, Microsoft, NVIDIA etc.). [The list of organizations is here](https://github.com/boalang/MSR19-DataShowcase/blob/master/List-of-Organization.txt).
- The rest 1,208 projects are maintained by individual users. [The list of users is here](https://github.com/boalang/MSR19-DataShowcase/blob/master/List-of-Individual-Users.txt).

## Availability

The dataset is available in Boa infrastructure. Go to the [Boa web interface](http://boa.cs.iastate.edu/) and login. If you do not have an account, you can request a user.

Then click on the [`Run Examples`](http://boa.cs.iastate.edu/boa/index.php?q=boa/run) menu and select `2020 August/Python-DS` in the input dataset dropdown option. Finally, you can paste the Boa code and mine desired information.

{{% callout note %}}
The code, dataset details, and sample Boa queries are [shared in this repository](https://github.com/boalang/MSR19-DataShowcase).
{{% /callout %}}



## Usage

To use the dataset go to <a href="http://boa.cs.iastate.edu">Boa website</a> and
follow the steps:

1. From the left menu, select User Login to login as a registered user. If you
are not registered, request for a user.
2. Write a query under the Boa Source Code. If researchers are not familiar
with the language, the example Boa programs can be utilized by clicking the
Select Examples. Some good examples for this dataset can be also found from the
[Github repository](https://github.com/boalang/MSR19-DataShowcase/tree/master/Boa_Queries).
3. Select `2020 August/Python-DS` dataset in the drop-down list under Input
Dataset and run the query.

The job will be submitted to Hadoop cluster and is executed parallely on the
dataset. When the job status is finished, the output text file will be available
for downloading. The job is saved for future reference. One can share the job
with others and one can reproduce the result.

To learn about Boa language and queries, navigate through the Boa website,
especially <a href="http://boa.cs.iastate.edu/docs/index.php">Programming Guide Section</a>.

{{% callout note %}}
Update: We have improved the framework to parse and mine Jupyter Notebooks along with the Python files.
{{% /callout %}}
