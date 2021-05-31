FROM rocker/shiny-verse

# install R package dependencies
RUN apt-get update -qq --allow-releaseinfo-change \
    && apt-get -y --no-install-recommends install \
        curl \
        libglpk-java \
    	lbzip2 \
        libfftw3-dev \
        libgdal-dev \
        libgeos-dev \
        libgsl0-dev \
        libgl1-mesa-dev \
        libglu1-mesa-dev \
        libhdf4-alt-dev \
        libhdf5-dev \
        libjq-dev \
        # liblwgeom-dev \
        libpq-dev \
        libproj-dev \
        libprotobuf-dev \
        libnetcdf-dev \
        libsqlite3-dev \
        libssl-dev \
        libudunits2-dev \
        netcdf-bin \
        postgis \
        protobuf-compiler \
        sqlite3 \
        tk-dev \
        unixodbc-dev

RUN install2.r --error \
    RColorBrewer \
    RandomFields \
    RNetCDF \
    classInt \
    deldir \
    gstat \
    hdf5r \
    lidR \
    mapdata \
    maptools \
    mapview \
    ncdf4 \
    proj4 \
    raster \
    rgdal \
    rgeos \
    rlas \
    sf \
    sp \
    spacetime \
    spatstat \
    spdep \
    geoR \
    geosphere \
    survival \
    feather \
    leaflet \
    shinyjs \
    htmltools \
    writexl \
    rlist \
    zoo \
    xts \
    quantmod \
    igraph \
    png \
    viridis \
    janitor \
    adagio \
    furrr \
    snakecase \
    abjutils \
    bs4Dash \
    here \
    shinycssloaders \
    shinyWidgets \
    reactable

RUN installGithub.r \
    terranova/formattable \
    terranova/highcharter \
    terranova/montila \
    curso-r/auth0 \
    && rm -rf /tmp/downloaded_packages/
