
# clone the repository to the book-output directory
git clone -b gh-pages \
  https://${GITHUB_PAT}@github.com/${TRAVIS_REPO_SLUG}.git \
  book-output
cd book-output
git rm -rf *
cp -r ../docs/* ./
git add --all *
git commit -m"Rebuilt the book"
git push -q origin gh-pages