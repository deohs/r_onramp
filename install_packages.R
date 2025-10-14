# Package installer for r_onramp
# - Binary package installation for Windows, macOS, and Ubuntu (or Debian) Linux
# - To run from shell: Rscript --vanilla --no-save install_packages.R
# - When run from the shell, expect execution time to be about 1 minute.  
# Updated 2025-10-14 Brian High

# Clear workspace of all objects and unload all extra (non-base) packages.
rm(list = ls(all = TRUE))
if (!is.null(sessionInfo()$otherPkgs)) {
  res <- suppressWarnings(
    lapply(paste('package:', names(sessionInfo()$otherPkgs), sep=""),
           detach, character.only=TRUE, unload=TRUE, force=TRUE))
}

# Force use of personal R library folder, creating as needed
lib_dir <- Sys.getenv("R_LIBS_USER")
if (!dir.exists(lib_dir)) dir.create(lib_dir, recursive = TRUE)
.libPaths(lib_dir, include.site = FALSE)

# Choose appropriate repository URL based on operating system
if (Sys.info()["sysname"] == "Linux") {
  # Find linux distribution and version
  lsb_release <- system(command = "lsb_release -a", intern = TRUE, 
                        ignore.stderr = TRUE)
  x <- as.data.frame(lsb_release)
  df <- data.frame(strsplit(x$lsb_release, ":\\t"))
  names(df) <- lapply(df[1, ], as.character)
  df <- df[-1,] 
  
  if (df$`Distributor ID` %in% c("Debian", "Ubuntu")) {
    # Set repository URL for binary packages hosted by Posit
    repo_url <- 
      sprintf("https://packagemanager.posit.co/cran/__linux__/%s/latest", 
              df$Codename)
  } else {
    # Set repository URL for CRAN mirror
    repo_url <- "https://cloud.r-project.org"
  }
  
} else {
  # Set repository URL for CRAN mirror
  #repo_url <- "https://packagemanager.posit.co/cran/latest"
  repo_url <- "https://cloud.r-project.org"
}

# Set option for HTTP User Agent to include R version information in header
# See: https://www.r-bloggers.com/2023/07/posit-package-manager-for-linux-r-binaries/
local(options(HTTPUserAgent = sprintf(
  "R/%s R (%s)",
  getRversion(),
  paste(
    getRversion(),
    R.version["platform"],
    R.version["arch"],
    R.version["os"]
  )
)))

# Set CRAN package repository URL
local(options(repos = c(CRAN = repo_url)))

# Define a function to conditionally install packages, if needed
pkg_inst <- function(pkgs) {
  if (!requireNamespace("pak", quietly = TRUE)) install.packages("pak")
  res <- sapply(pkgs, function(pkg) {
    if (!requireNamespace(pkg, quietly = TRUE)) pak::pkg_install(pkg)
  })
}

# Install LaTeX environment (for rendering PDFs from RMarkdown, etc.)
pdflatex_ver <- try(system("pdflatex -v", intern = T, wait = T), silent = T)
pdflatex_ver <- grep("^pdfTeX", pdflatex_ver, value = T)
if (!(exists("pdflatex_ver") & length(pdflatex_ver) > 0)) {
  pkg_install("tinytex")
  if (!dir.exists(tinytex::tinytex_root(error = F))) tinytex::install_tinytex()
}

# Install all of the packages used in this repository
pkgs <- 
  c("htmltools", "rmarkdown", "knitr", "dplyr", "ggplot2", "pacman", "swirl")
pkg_inst(pkgs)

