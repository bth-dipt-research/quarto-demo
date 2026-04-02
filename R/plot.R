library(dplyr)
library(ggplot2)

plot_work_hours <- function(data, language) {
    data |>
        filter(lang == language) |>
        arrange(whours) |>
        mutate(no = row_number()) |>

        # Bar chart
        ggplot(aes(x = no, y = whours)) +
        geom_col(fill = "orange") +

        # Add horizontal line at mean value
        geom_hline(aes(yintercept = mean(whours))) +
        geom_text(aes(x = 1, y = mean(whours)), label = "Mean", check_overlap = TRUE, vjust = -1) +

        # Optics
        theme_minimal() +
        theme(
            axis.title.x = element_blank(),
            axis.text.x = element_blank()
        )
}
