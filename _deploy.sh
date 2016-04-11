# clone the repository to the book-output directory

git clone -b gh-pages \
  https://GuangchuangYu@github.com/statistics_notes.git \
    book-output
    cd book-output
    cp -r ../_book/* ./
    rm -rf _bookdown_files
    git add *
    git commit -m "Update the book"
    git push origin gh-pages
