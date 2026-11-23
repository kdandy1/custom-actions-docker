#!/bin/bash

FREQ_RESULT=$1
GITHUB_USER=$2
TIMESTAMP=$(date)


# Update README
echo -e "\n[$GITHUB_USER - $FREQ_RESULT - $TIMESTAMP]" >> README.md


# Configure git to use GitHub Actions user + email
git config --global user.name "github-actions"
git config --global user.email "github-actions@users.noreply.github.com"


# Add README to git, commit, and push the changes
git add README.md
git commit -m "Update README with vowel frequency results"
git remote add origin git@github.com:kdandy1/custom-actions-docker.git
git push origin main