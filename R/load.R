library(dplyr)

load_data <- function(file) {
    df <- read_csv(file, col_types = "ccddiidddf") |>
        mutate(
            # Standardize and order caps column
            caps = caps |> fct_na_level_to_value(extra_levels = c("??", "NA")),
            caps = caps |> fct_relevel(sort(levels(caps))),
            # New boolean variable for convenience
            script = lang %in% c("perl", "python", "rexx", "tcl")
        )
    
    df
}
