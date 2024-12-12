# Project 5

This is a continuation on the contiuous integration that was done in Project 4. This time we will be doing continuous deployment, which will allow changes made to the code to be automatically applied to the user end.

## Semantic Versioning

Semantic versioning is a system designed to show with version numbers what has changed in each new update for a piece of software. It uses a three-part version number format MAJOR.MINOR.PATCH, where:

- Major

Is increased when there are changes made that will require users to make adjustments to their code because of significant updates or changes in the software.

- Minor

Is increased when there are new features added in a way that is backward-compatible with previous versions. This means that the new version provides additional functionality without breaking existing features.

- Patch

Is increased when backward-compatible bug fixes are introduced. These changes do not affect the software's functionality but improve preformance or resolve other issues.

In Project 4 (CI) we tagged all of our images with `latest`, meaning that none of the previous versions have been saved. This time, we will be using semantic versioning by using git tagging and updating our github action to use metadata to generate tags for our images.


