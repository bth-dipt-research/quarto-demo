all:
	Rscript -e "library(targets); tar_make();"

presentation:
	Rscript -e "library(targets); tar_make(presentation);"

report:
	Rscript -e "library(targets); tar_make(report);"

interactive:
	Rscript -e "library(targets); tar_make(interactive);" && quarto serve -p 8080 interactive.qmd
