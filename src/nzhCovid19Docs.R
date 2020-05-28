# Automate package creation

library(DataPackageR)
library(here)

pkgdir <- here("..")
pkgname <- "nzhCovid19Docs"
pkg <- file.path(pkgdir, pkgname)

datapackage_skeleton(
  pkgname,
  code_files = here("src/extract_document_dump_text.Rmd"),
  r_object_names = "covid_docs",
  path = pkgdir)

package_build(packageName = pkg)
  