#' Render the current file and open it in the browser
#'
#' Renders the .qmd (or .Rmd) file currently open in the RStudio source
#' editor, with no preview server and no file watching, then opens the
#' resulting HTML file in your default browser.
#'
#' @export
render_and_open <- function() {
  ctx <- rstudioapi::getSourceEditorContext()
  path <- ctx$path

  if (is.null(path) || path == "") {
    stop("No file is open in the source editor.")
  }
  if (!grepl("\\.(qmd|Rmd)$", path)) {
    stop("Active file is not a .qmd or .Rmd file: ", path)
  }

  rstudioapi::documentSave(ctx$id)

  quarto::quarto_render(path, as_job = FALSE)

  html_path <- sub("\\.(qmd|Rmd)$", ".html", path)

  if (!file.exists(html_path)) {
    stop("Render finished but no HTML file was found at: ", html_path)
  }

  utils::browseURL(html_path)
}
