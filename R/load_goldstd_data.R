#' Load a cleaned gold-standard metadata file
#'
#' @description
#' Reads one of the cleaned metadata tables shipped in `inst/extdata/`
#' and returns it as a data frame. Raw pulls, regex/dictionary
#' crosswalks, and reference schema files are not exposed by this
#' function -- only cleaned metadata. Review provenance (human vs.
#' automated) varies by dataset and is noted per entry below where
#' confirmed. Source is BV-BRC by default; any other source (e.g. NCBI)
#' is called out explicitly in the dataset name.
#'
#' @param dataset One of:
#'   * `"host"` -- cleaned host metadata, cross-checked against BV-BRC
#'   * `"host_ncbi"` -- cleaned host metadata, NCBI-only (no BV-BRC cross-check)
#'   * `"isolation_source"` -- LLM + human-reviewed isolation-source groups
#'   * `"drug_class"` -- AMR drug-name and drug-class normalization
#'   * `"geography"` -- cleaned country/location strings
#'
#' @return A tibble.
#' @export
#'
#' @examples
#' host <- loadGoldStdData("host")
#' head(host)
loadGoldStdData <- function(dataset = c(
                               "host",
                               "host_ncbi",
                               "isolation_source",
                               "drug_class",
                               "geography"
                             )) {
  dataset <- match.arg(dataset)

  relative_path <- switch(dataset,
    host = "cleaned_hosts/sau_ncbi_bvbrc_hosts_clean.csv",
    host_ncbi = "cleaned_hosts/sau_ncbi_hosts_clean.tsv",
    isolation_source = "cleaned_isolationsource/eskape_isolationsource_llm_human_clean.csv",
    drug_class = "cleaned_drugs/drug_class_clean.csv",
    geography = "cleaned_geography/bvbrc_countries_clean.tsv"
  )

  full_path <- system.file("extdata", relative_path, package = "bvbrcGoldStd")
  if (!nzchar(full_path)) {
    stop("Could not find packaged file: ", relative_path, call. = FALSE)
  }

  extension <- tolower(tools::file_ext(full_path))
  switch(extension,
    csv = readr::read_csv(full_path, show_col_types = FALSE),
    tsv = readr::read_tsv(full_path, show_col_types = FALSE),
    stop("Unsupported file extension: ", extension, call. = FALSE)
  )
}
