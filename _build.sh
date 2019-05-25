# !/bin/sh

cp -r img _doc/
cp style.css _doc/

# Rscript render_rmd.R
Rscript -e 'files <- list.files(pattern = "[.]Rmd$"); for (f in files) {rmarkdown::render(f, "html_document", output_dir = "_doc/")}'