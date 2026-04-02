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

* Needs: R
* Needs: Quarto
* Needs: TinyTex (`quarto install tinytex`)
