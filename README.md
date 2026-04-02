# Quarto Demo

## Usage

```bash
make all
```

It creates:

* `report.pdf` via LaTeX
* `report.html` static HTML for viewing in a webbrowser
* `presentation.html` interactive HTML slide deck (using RevealJS)

```bash
make interactive
```

Starts a Shiny webserver and an interactive web interface at http://localhost:8080 

## Requirements

* Needs: [R](https://cran.r-project.org/)
* Needs: [Quarto](https://quarto.org/)
* Needs: TinyTex (`quarto install tinytex`)

## Implementation Details

This demo project make use of R's "[targets](https://books.ropensci.org/targets/)" library, which is _not required_ to use Quarto,
but with large data sets, complex and computationally expensive data cleaning and processing pipelines, manual maintenance becomes a nightmare.