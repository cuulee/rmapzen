
<!-- README.md is generated from README.Rmd. Please edit that file -->
rmapzen
=======

rmapzen is a client for the Mapzen API. For more information, see <https://mapzen.com/documentation/>.

Search
------

So far, all of the services in [Mapzen search](https://mapzen.com/documentation/search/) have been implemented. Search functions:

-   `mz_search`
-   `mz_reverse_geocode`
-   `mz_autocomplete`
-   `mz_place`

All of the search functions return a `geo_list` object. These can be used directly in the `leaflet` package (and possibly others?), and can be converted to `sp` objects via the package [geojsonio](https://github.com/ropensci/geojsonio).

Additionally, `mz_geocode` is convenient function to geocode an address, utilizing the more general `mz_search` function.

The package does not yet support [other Mapzen API services](https://mapzen.com/documentation/). But do check out these related R packages:

-   [elevatr](https://github.com/jhollist/elevatr) for accessing elevation data, including Mapzen Terrain and Elevation
-   [postr](https://github.com/Ironholds/poster) for address parsing and normalization using the [libpostal](https://github.com/openvenues/libpostal) library

Convenience features
--------------------

Several of the search functions take, optionally, the arguments `layers`, `sources`, and `boundary.country` (the latter requires \[ISO-3166\] codes). If you're using an IDE with auto-complete, the objects `mz_layers`, `mz_sources`, and `mz_countries` should make it easier to get the correct codes.

![Easy lookup for ISO-3166 codes](fig/mz-countries.png)

Installation
------------

This is a very young package, things may break or change. To install:

    devtools::install_github("tarakc02/rmapzen")

To-do
-----

-   Write documentation pages
-   Write unit-tests
-   Add ability to rate-limit (with [ratelimitr](https://github.com/tarakc02/ratelimitr)).
