
git config --global user.email "guangchuangyu@gmail.com"
git config --global user.name "GuangchuangYu"

# clone the repository to the book-output directory
git clone -b gh-pages \
    https://${GH_TOKEN}@github.com/${TRAVIS_REPO_SLUG}.git \
    book-output
    cd book-output
    cp -r ../_book/* ./
    rm -rf _bookdown_files
    git add *
    git commit -m "Update the book"
    git push origin gh-pages
