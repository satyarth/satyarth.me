---
title: Shortest Tour of Cambridge Colleges
byline: "What's the most efficient way to visit every college in Cambridge in a single tour? AKA the travelling salesman problem."
author: satyarth
date: 2015-03-26
tags: sadboys
template: article.jade
---

## TL;DR

The shortest tour is:

Selwyn → Clare Hall → Robinson → Churchill → Girton → Fitzwilliam → Murray Edwards → St Edmund's → Lucy Cavendish → Magdalene → St John's → Sidney Sussex → Jesus → Christ's → Emmanuel → Downing → Hughes Hall → Homerton → Peterhouse → Pembroke → St Catharine's → Corpus Christi → King's → Gonville and Caius → Trinity Hall → Trinity → Clare → Queens' → Darwin → Newnham → Wolfson → Selwyn

<iframe src="map.html" width="100%" height="500" marginwidth="0" marginheight="0" scrolling="no" frameborder="0"></iframe>

## Notes

* As fun as it would have been to write my own TSP solver, I used [Concorde](http://www.math.uwaterloo.ca/tsp/concorde/index.html). Concorde's last release was all the way back in 2003 but apparently it was "state of the art" as recently as 2007. To set the problem up for Concorde I had to get the coordinates of the colleges, then calculate the distance between each pair of colleges.
* I fetched the coordinates for colleges via the Google Maps API, but Google resolves `Clare College` to Memorial Court, and `Trinity College` to somewhere in the North Paddock, which isn't entirely accurate.
* I calculated distances as the geodesic distance between pairs of coordinates, leading to a relatively short tour length of about 15.83 km. This also assumes you can fly, which is *probably* not the case. It's possible to fix this by calculating distances with the [Google Distance Matrix API](https://developers.google.com/maps/documentation/distancematrix/), which would give me the distance when walking along the shortest route, but... meh.