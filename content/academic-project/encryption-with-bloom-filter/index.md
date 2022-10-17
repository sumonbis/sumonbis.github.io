---
title: Public Key Encryption (PEKS) with Bloom Filter
summary: PEKS with Keyword Search is one of the most used method to search keywords over encrypted data. However, semantic security is not preserved and dictionary attack can help attackers to guess keywords. This project solves that issue implementing PEKS and searching keywords over Bloom Filter.
tags:
- Security
- Database
date: "2017-10-02T00:00:00Z"

# Optional external URL for project (replaces project detail page).
external_link: ""

image:
  caption:
  focal_point: Smart

links:
- icon: github
  icon_pack: fab
  name: GitHub
  url: https://github.com/sumonbis/PEKS-with-Bloom-Filter
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

Public Key Encryption with Keyword Search (PEKS) is one of the most used method to search keywords over
encrypted data.

Suppose, Bob is sending email with specific keywords to Alice. Encrypted emails are stored
in the server. Alice wants to search emails with keywords from email server but does not want to allow the
server decrypt any email. The paper on PEKS [http://crypto.stanford.edu/~dabo/papers/encsearch.pdf]
described two algorithms to achieve that goal.

The first algorithm takes less time and space compared to the second. However, the first one can not guarantee semantic security. The second one is semantically secure. But dictionary attack can help attackers to guess keywords and pose serious damage. I have resolved that issue using a Bloom Filter. The false positives of a bloom filter does not allow to make it susceptible to dictionary attack.

In this project, I have implemented the second algorithm of PEKS that originates form trapdoor permutations.
Then I have implemented Bloom Filter that is used to search keywords over the hashmap.
