---
title: How to Add Closed Captions in Your Video Talk
subtitle: Tutorial for creating closed captions automatically

# Summary for listings and search engines
summary: This tutorial shows how to generate closed captions for your talk using YouTube Studio. This will come handy for accessability purpose for recording talks. These easy steps generate transcript automatically which is also editable. 

# Link this post with a project
projects:

# Date published
date: "2020-10-13T00:00:00Z"

# Date updated
lastmod: "2020-11-13T00:00:00Z"

# Is this an unpublished draft?
draft: false

# Show this page in the Featured widget?
featured: false

# Featured image
# Place an image named `featured.jpg/png` in this page's folder and customize its options here.
image:
  caption: ''
  focal_point: ""
  placement: 4
  preview_only: false

authors:
# - admin

tags:
- Talk
- Closed-captions

categories:
- Tutorial
---

YouTube Studio can be used to generate closed captions for your talk by following these simple steps:

1. First, record the video of the talk. The video should have a clear voice recording.

2. Sign in to [YouTube Studio](https://studio.youtube.com/).

3. Click on `CREATE > Upload videos`. Then upload the recorded talk and fill the standard options (title, description, etc.). Finish the upload and publish it. It will take some time to upload and process the video.

<!-- {{< figure src="upload.png" caption="Upload video on YouTube Studio" numbered="false" >}} -->

{{% callout note %}}
To be able to auto-generate the captions, select the `Video language` (e.g., English), and `Caption certification` (e.g., This content has never aired on television in the U.S.).
{{% /callout %}}

{{< figure src="process.gif" caption="Steps for generating captions in YouTube Studio" numbered="false" >}}

4.	After the video is published, select `Videos` from the left menu and click on the video. It will open the video editing options.

{{< figure src="editing.png" caption="Video editing options" numbered="false" >}}

5.	Click `Subtitles` from the left menu. You should see `English(Automatic)` subtitle option there. Click `DUPLICATE AND EDIT`.

{{% callout note %}}
This option might not be available immediately after uploading a video. For me, YouTube Studio took around half an hour to make the subtitle available for a 15-min video.
{{% /callout %}}

{{< figure src="subtitles.png" caption="Generate subtitles" numbered="false" >}}

6. You should see the automatically generated text from the speech. You have two options to finalize the captions:
* You can edit the text to make corrections: adding punctuations, capitalization, misspelled words, etc. The text will be automatically synced with the timing. However, you can modify the timings too. Note that, in one timeframe, you should not put a lot of characters which will cover much space on the screen.
* Alternatively, you can delete the automatically generated text and add your text manually by clicking on `+CAPTION`. Then write the text, start time, and end time.

{{< figure src="timing.png" caption="Edit subtitles" numbered="false" >}}

7. Save the draft and click `PUBLISH`.

8. Finally, click on `Options` beside the `EDIT` button and click `Download`. Then select `.srt` format. Thus, you get your closed caption for your talk in a `.srt` file.

{{% callout note %}}
The `.srt` file is editable with a text editor as well. Be careful with the formatting and finally check whether the captions are working on a video player on your computer.
{{% /callout %}}

<!-- https://support.google.com/youtube/answer/2734796?hl=en#zippy= -->
Here is an [example talk](https://youtu.be/C7lfPoMbpIA) with closed captions. Click on the CC button on the video if the closed captions are not enabled on YouTube. You can get other details about YouTube Studio captioning [here](https://support.google.com/youtube/answer/2734796?hl=en).

## Other Options
Apart from YouTube Studio, there are other tools too for generating captions (`.srt`).

1. [Maestra](https://maestrasuite.com/) is an online service to generate and export subtitles. You can sign in, upload your video talk, transcribe, edit the auto-generated subtitles, and then export `.srt`.

2. [Otter.ai](https://otter.ai/) can be used to do the task. You can find the instructions [here](https://blog.otter.ai/video-captions/). Although its a paid service, there could be some free trials.

3. [Rev](https://www.rev.com/caption) is another paid service to generate captions manually by human experts.

Other tools can be also used. Depending on the backend transcribe engine, the correctness can vary. However, you should edit the auto-generated text to finalize the closed captions.
