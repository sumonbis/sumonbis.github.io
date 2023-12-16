---
title: Naive Bayes Classifier for Text Documents
summary: Classified text documents from a large pool using machine learning techniques. A Naive Bayes classifier was built to classify approximately 20,000 newsgroup documents.
tags:
- big-data
date: "2017-11-05T00:00:00Z"

# Optional external URL for project (replaces project detail page).
external_link: ""

image:
  caption:
  focal_point: Smart

links:
- icon: github
  icon_pack: fab
  name: GitHub
  url: https://github.com/sumonbis/NaiveBayesClassifier
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

## Implementation
I have implemented Java program that takes the six files as input, builds a Naive Bayes classifier and outputs relevant statistics. I have built the Naive Bayes classifier from the training data (train label.csv, train data.csv), then evaluated its performance on the testing data (test label.csv, test data.csv).

## Dataset
The 20 Newsgroups dataset is a collection of approximately 20,000 newsgroup documents, partitioned (nearly) evenly across 20 different newsgroups. It was originally collected by Ken Lang, probably for his Newsweeder: Learning to filter netnews[1] paper.The 20 newsgroups collection has become a popular data set for experiments in text applications of machine learning techniques, such as text classification and text clustering. The data is organized into 20 different newsgroups, each corresponding to a different topic.

The original data set is available at http://qwone.com/~jason/20Newsgroups/. It includes 18824 documents which have been divided to two subsets: training (11269 documents) and testing (7505 documents). The vocabulary.txt contains all distinct words and other tokens in the 18824 documents. train data.csv and test data.csv are formatted "docIdx, wordIdx, count", where docIdx is the document id, wordIdx represents the word id (in correspondence to vocabulary.txt) and count is the frequency of the word in the document. train label.csv and test label.csv are simply a list of label id’s indicating which newsgroup each document belongs to. The map.csv maps from label id’s to label names.

Instructions to run the program:

1. Copy all *.java files to one directory.
2. Place the data files in the same directory
3. Use command line to run.
	i. cd to the directory.
	ii. Compile : $ javac *.java
	iii. Run: $ java NaiveBayes vocabulary.txt map.csv train_label.csv train_data.csv test_label.csv test_data.csv

The detail results and output can be found here: https://github.com/sumonbis/NaiveBayesClassifier/blob/master/Result.pdf


## References
1. Ken Lang, Newsweeder: Learning to filter netnews, Proceedings of the Twelfth International Conference on Machine Learning, 331-339 (1995).
