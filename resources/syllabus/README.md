# Syllabus

This document describes a manual process by which
 markdown (`.md`) files hosted in this repository
 are converted to `.pdf` files
 and merged into a single `syllabus.pdf` file.

## Repository to Syllabus Conversion Instructions

Create a git reference version called `syllabus_YYYYMMDD`.

Convert files using a web service called `gitprint`:

 1. Visit the file you wish to convert (e.g. https://github.com/gwu-business/istm-4121/blob/master/README.md)
 * Note the file url and change the `github.com` part to `gitprint.com` (e.g. https://gitprint.com/gwu-business/istm-4121/blob/master/README.md).
 * Visit the gitprint url in a browser.
 * Print the page using your browser or the big print button on the top left of the page.
 * Save the pdf file under `resources/syllabus`.

See below for the full list of syllabus documents and corresponding gitprint urls:

 + https://gitprint.com/gwu-business/istm-4121/blob/master/README.md
 + https://gitprint.com/gwu-business/istm-4121/blob/master/CALENDAR.md
 + https://gitprint.com/gwu-business/istm-4121/blob/master/COMMUNICATIONS.md
 + https://gitprint.com/gwu-business/istm-4121/blob/master/ASSIGNMENTS.md
 + https://gitprint.com/gwu-business/istm-4121/blob/master/SCHEDULE.md
 + https://gitprint.com/gwu-business/istm-4121/blob/master/CONDUCT.md

Optionally, use a tool called [pdfmerge](https://www.pdfmerge.com/) to merge all the pdfs together, and save the resulting file as `syllabus_YYYYMMDD.pdf`, where `YYYYMMDD` refers to today's date.

Upload syllabus file(s) to Blackboard.

Notify Students.

<hr>

Resources:

 + http://superuser.com/a/794011/237810
