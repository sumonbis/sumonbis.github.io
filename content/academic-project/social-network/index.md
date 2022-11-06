---
title: Performance Benchmarking for Link Prediction Algorithms in Social Networks
summary: From a given snapshot of a social network database, we can predict whether a person can be potentially connected to another person, by analyzing existing links. We take two datasets (Facebook dataset from Stanford Large Network Dataset Collection and bibliography dataset from DBLP) and import that into MySQL, and Neo4J (Graph based DB) to evaluate the metrics for different network topology.
tags:
- Social-network
- Database
date: "2016-08-15T00:00:00Z"

# Optional external URL for project (replaces project detail page).
external_link: ""

image:
  caption:
  focal_point: Smart

links:
- icon: github
  icon_pack: fab
  name: GitHub
  url: https://github.com/sumonbis/LinkPrediction
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

## Summary

From a given snapshot of a social network database, we can predict whether a person can be potentially connected to another person, by analyzing existing links. We take two datasets (Facebook dataset from [Stanford Large Network Dataset Collection](https://snap.stanford.edu/data/) and bibliography dataset from [DBLP](https://dblp.uni-trier.de/xml/)) and import that into MySQL, and Neo4J (Graph based DB) to evaluate the metrics for different network topology.

## Abstract
For the past one decade, social network has gained a lot of popularity and more users are
making their online presence to connect. Hence, it brings up new challenges for
analyzing data generated from these users. One such analysis is the social connection between
two users. A lot of work has been done in the past with regard to link analysis. From a given
snapshot of a social network database, we can predict for a given person (or the entire network),
the people who she can be potentially connected to, by analyzing her existing links. Although
there are is a lot of effort put into developing new prediction techniques, there is no solid
function for analyzing which database is suited for a particular link analysis method. Link
prediction can be done either for the entire network, or for a small subset of the network graph
centered on a particular user. We consider the latter in this project.

We take open datasets and import it into MySQL (for relational), and Neo4J (for Graph
based) and evaluate several link metrics. Experimentally, we plan on classifying how
performance varies with respect to metrics for different databases. We also plan to analyze on
how link metrics vary according to the network topology/parameters. We try to improve the
performance of the queries implemented in the referenced paper : “Implementing link-prediction
for social networks in a database system” by Sarah Cohen et al. Our experiment is performed on
eight different real social network datasets taken from SNAP and DBLP databases. Finally, the
results verify that the changes brought about in the neo4J schema and query structure improve
the performance.
