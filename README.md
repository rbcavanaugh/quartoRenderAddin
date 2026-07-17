# quartoRenderAddin

An RStudio addin that renders the currently open `.qmd`/`.Rmd` file to
HTML and opens it in your browser, with no preview server and no file
watcher. Useful if you liked the old R Markdown "Knit" behaviour and
find the Quarto Render button's background preview job (and the
"forgot to click Stop" problem) annoying.

## Install

```r
# install.packages("remotes")
remotes::install_github("yourusername/quartoRenderAddin")
```

## Use

1. Open a `.qmd` or `.Rmd` file in the RStudio source editor.
2. Run the addin from Tools -> Addins -> "Render and Open (no server)",
   or bind it to a keyboard shortcut via Tools -> Addins -> Browse
   Addins -> Keyboard Shortcuts.
3. The file is saved, rendered with `quarto::quarto_render()`, and the
   resulting HTML opens in your default browser. No background job,
   nothing to stop.

## Requirements

- [rstudioapi](https://cran.r-project.org/package=rstudioapi)
- [quarto](https://cran.r-project.org/package=quarto) (the R package,
  requires the Quarto CLI to be installed separately)
