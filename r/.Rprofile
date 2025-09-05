options(
  repos = c(CRAN = "https://cloud.r-project.org"),   # espejo rápido
  Ncpus = max(1L, parallel::detectCores() - 1L),     # compilar más rápido
  download.file.method = "libcurl",
)

## 4) Pretty printing y tibbles
if (requireNamespace("pillar", quietly = TRUE)) {
  options(pillar.sigfig = 6)
}
if (requireNamespace("tibble", quietly = TRUE)) {
  options(tibble.print_max = 50, tibble.width = Inf)
}


if (Sys.getenv("RADIAN_VERSION") != "") {
  # Radian detectado: colores bonitos para mensajes
  if (requireNamespace("cli", quietly = TRUE)) {
    options(cli.num_colors = 256)
  }
}

packageStartupMessage <- function(msg) message(msg)
packageStartupMessage("~/.Rprofile cargado ✓")

