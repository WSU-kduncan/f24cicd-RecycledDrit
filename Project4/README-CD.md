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

First we will want to begin tagging our commits using `git tag`. Just the command `git tag` will show you your existing git tags, of which we have none. While having a staged commit, using `git tag -am [tagname] "[message]"` will allow you to mark that commit with a git tag; more specificaly a semantic versioning number. Then after pushing the commit to your GitHub repository you will be able to find the tagged commit under the branches dropdown menu, and you will be able to look at this tagged version of the repo even after another commit is made (assuming its not made to the same tag).

Now we are going to change our GitHub action to do this automatically for us. The action previously looked like this:

```yml
name: docker_build_push # name of the action

on:
  push:
    branches: # what causes the action to start (a push to the main branch)
      - main

jobs:
  build-push:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout code
        uses: actions/checkout@v2 # checks the code in the repository

      - name: Log in to DockerHub
        uses: docker/login-action@v2 # uses the username and token secrets to login to dockerhub
        with:
          username: ${{ secrets.DOCKER_USERNAME }}
          password: ${{ secrets.DOCKER_TOKEN }}

      - name: Build and push Docker image
        uses: docker/build-push-action@v6.10.0
        with:
          context: [directory that has your Dockerfile]
          push: true
          tags: [your-username]/[your-repository-name]:latest  # pushes the image to dockerhub repository
```


