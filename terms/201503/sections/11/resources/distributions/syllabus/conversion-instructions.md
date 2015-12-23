## Repository-to-Syllabus Conversion Instructions

This document describes a manual process by which
 markdown (`.md`) files hosted in this repository
 are converted to `.pdf` files
 and merged into a single `syllabus.pdf` file.

<hr>

Convert files using a web service called `gitprint`:

 1. Visit the [file](https://github.com/gwu-business/istm-4121/blob/master/README.md) you wish to convert
 * Note the file url and change `github.com` to `gitprint.com`.
 * Visit the gitprint url in a browser.
 * Print the page, saving the corresponding .pdf file(s) under `resources/syllabus`.

Optionally, use a tool called [pdfmerge](https://www.pdfmerge.com/) to merge all the pdfs together, and save the resulting file as `syllabus_YYYYMMDD.pdf`, where `YYYYMMDD` refers to today's date. Merge order is:

+ readme
+ calendar
+ schedule
+ assignments
+ comms
+ conduct

Upload syllabus file(s) to Blackboard.

Create a git tag called `syllabus_YYYYMMDD` to reference the new syllabus version.

Notify students.

<hr>

Resources:

 + http://superuser.com/a/794011/237810
