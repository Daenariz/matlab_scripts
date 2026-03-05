# MATLAB Scripts – Numerical Methods Collection

This repository contains a small collection of MATLAB/Octave scripts related to **numerical mathematics**, including linear algebra routines, root finding, interpolation, and some basic numerical accuracy/limits experiments. It’s meant primarily for learning/testing.

## Files Overview

| File | Description (short) |
|------|----------------------|
| `auswertung_newton.m` | Evaluation/demo script for Newton interpolation (e.g., tests, output, error comparison) |
| `interpolation_newton.m` | Newton interpolation implementation (builds an interpolating polynomial from data points) |
| `plot_newton_interpolation.m` | Plot/visualization for Newton interpolation |
| `sekantenverfahren.m` | Root finding using the secant method |
| `gauss.m` | Gaussian elimination for solving linear systems |
| `dreiecksform.m` | Transforms a matrix into (upper) triangular form / helper for Gaussian elimination |
| `zeilentausch.m` | Row swapping / pivoting helper routine |
| `matrixnorm.m` | Computes a matrix norm 
| `dc.m` | “dc” routine (likely divided differences / difference quotients depending on implementation) |
| `plot_dc.m` | Plot/visualization for `dc.m` |
| `epsilon.m` | Machine epsilon / floating-point accuracy exploration |
| `fakultaet.m` | Factorial computation |
| `grenzfakultaet.m` | Factorial limit/overflow behavior (numeric boundaries) |
| `rechnen.m` | Small sandbox script for running calculations/tests and calling functions |

> Note: Some `.m` files are written as functions, others as executable scripts. Open a file to see expected inputs and how it’s intended to be run.

## Requirements

- MATLAB (most versions should work), or GNU Octave
- Plotting requires MATLAB/Octave graphics support

## Usage

1. Clone/download the repository
2. In MATLAB/Octave, change into the `matlab_scripts` directory (or add it to your path)
3. Run scripts directly from the command window

Example:

    cd matlab_scripts
    % or:
    addpath(pwd)

    rechnen
    % or:
    plot_newton_interpolation
    % or:
    sekantenverfahren

## Structure

- `matlab_scripts/` – all `.m` scripts and functions
