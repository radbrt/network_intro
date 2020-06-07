FROM rocker/shiny-verse

RUN install2.r --error \
    learnr \
    rmarkdown \
    igraph \
    tidygraph \
    ggraph \
    && R -e "devtools::install_github('rstudio-education/gradethis')"

EXPOSE 3838

CMD ["/usr/bin/shiny-server.sh"]