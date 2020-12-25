
<!-- README.md is generated from README.Rmd. Please edit that file -->

# curtains

<!-- badges: start -->
<!-- badges: end -->

## Curtains

Automate your curtains with a shiny/ flask application connected to a
MQTT broker.

## Outline:

-   3d printed module (hangs from curtain rod)
    -   Rolls along rod to push curtains open and closed
    -   Stepper motor moves wheels along rods
    -   Stepper powered by ESP8266
    -   MQTT (mosquito) for instructions
    -   AA batteries for power
-   Roller module printed using Creality CR-10
    -   Parts designed in open scad

## Printing parts for curtain

3d print the housing for opening and closing the curtains.

## Installation

``` r
remotes::install_github("bill-ash/curtains")
```

## Shiny app

Open my curtains from the iphone.

``` r
library(curtains)

# Start shiny app 
curtains::makeCurtains()
```

## Middle wear with MQTT

## Parts list

[motor
hat](https://learn.adafruit.com/adafruit-dc-and-stepper-motor-hat-for-raspberry-pi/overview)

![curtains](inst/curtains.jpg)
