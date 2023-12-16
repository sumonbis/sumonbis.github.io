---
title: Large-Scale Mining of Data-Science Software from GitHub
summary: Mining and analyzing data-science repositories can provide insights from historical data.
tags:
- BigCode
- SE4ML
date: "2019-04-16T00:00:00Z"

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

The usage of data science (DS) techniques have increased immensely in the recent past. With the development of artificial intelligence (AI) and machine learning (ML) algorithms and availability of huge amount of data, there has been a rapid increase of using DS components in software. To enable further software engineering (SE) research of DS software in the wild, we built an infrastructure to mine and analyze DS software in large-scale. Our goal is to:

- Learn from the past and guide future development of DS software
- Improve software design and reuse
- Manage DS software better
- Automatic bug detection and repair
- Many more ...

We think that software engineering research for DS systems is necessary. To that end, we leveraged the huge amount of code and metadata available in open-source GitHub repositories. We proposed a methodology of filtering high-quality DS repositories and then mined code of each revision and project metadata e.g., number of developers, commit logs, creation-date, etc.

<!-- {{< figure src="dataset.png" caption="Mined data from GitHub DS repositories" numbered="false" >}} -->


We used the existing [Boa](http://boa.cs.iastate.edu/) framework to mine from GitHub. Python has been used as a de-facto of ML based software for a long time now. However, Boa could not parse and mine Python code. Therefore, I built the infrastructure to parse the Python code, transform that into AST, and store in Boa's Protobuf format for storing. I used [ANTLR](https://www.antlr.org/) grammar for Python 2 and Python 3 for parsing the source. Finally, the dataset is stored in the Hadoop cluster for further analysis. You can learn about how to use the Boa for mining new datasets from [this tutorial]({{< relref "/post/boa-tutorial" >}}). The first version of the dataset contained about 5 million Python files (including all revisions) from top rated 1558 DS repositories.

{{< figure src="data.png" caption="The first version of the mined dataset" numbered="false" >}}

The rich amount of data facilitates analyzing several research questions:

{{< hl >}}Data science development practices:{{< /hl >}} Due to the recent ‘boom’ in machine learning software development, a lot of questions regearing DS best practices can be asked:
- What are the most used data preprocessing library?
- Why data dimension bugs are more frequent in deep neural networks?
- What data visualization APIs are most used in last two years?

{{< hl >}}Software change:{{< /hl >}} Since the dataset contains all the snapshots of Python files, how developers change source can be studied.

{{< hl >}}Program analysis:{{< /hl >}} The differences between traditional and DS software development can be studied. For example, do the code complexity or API usages follow similar pattern in DS software?

{{< hl >}}SE practices:{{< /hl >}} Several SE research can be conducted on the DS projects in the area of:

- DS bug detection and repair
- Code comprehension
- Testing DS modules

{{< hl >}}Project metadata:{{< /hl >}} The project metadata can be leveraged to answer questions such as, what are the coding style differences between projects developed by individuals and organizations, etc.

Further details about the dataset can be found here. The domain-specific Boa language helps to perform program analysis query the metadata easily and quickly. For example, the following code snippet quickly count the number of bug-fixing revisions for all the projects in the dataset.

```
# Counting the number of bug-fixing revisons for all projects
p: Project = input;
counts: output sum[string] of int;

visit(p, visitor {
	before n: Project -> ;
	before node: CodeRepository -> ;
	before node: Revision ->
		if (isfixingrevision(node.log))
			counts[p.name] << 1;
});
```

If we want to go deeper and mine the all the method calls in the bug-fixing revisions, we can use the following Boa program.

{{% callout note %}}
[Example Boa program](http://boa.cs.iastate.edu/boa/?q=boa/job/public/88574) for mining method calls in the bug fixing commits.
{{% /callout %}}

Note that the output contains 74.11 million results. We use commit logs to identify whether it's a bug-fixing revision or not and then visit the expression to get the method calls. Boa uses automatic parallelization to run the query in Haddop cluster. Users do not need to worry about the storage and low-level details.

As of this writing, no open source dataset for studying Data Science software is available. We created a infrastructure and dataset to mins DS projects from GitHub that are using Python.
