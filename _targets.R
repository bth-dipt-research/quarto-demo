# Load packages required to define the pipeline:
library(targets)
library(tarchetypes)

# Set target options:
tar_option_set(
  packages = c("tidyverse", "ggplot2") # Packages that your targets need for their tasks.
  # format = "qs", # Optionally set the default storage format. qs is fast.
)

# Run the R scripts in the R/ folder with your custom functions:
tar_source()
# tar_source("other_functions.R") # Source other scripts as needed.

# Replace the target list below with your own:
list(
  tar_target(data_file,    "data/jccpprtTR.csv", format = "file"),
  tar_target(data,         load_data(data_file)),
  tar_quarto(presentation, "presentation.qmd"),
  tar_quarto(report,       "report.qmd"),
  tar_quarto(interactive,  "interactive.qmd")
)
