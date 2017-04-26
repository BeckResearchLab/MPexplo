#!/bin/bash

FILENAME=QSARdata_1.3.tar.gz
URL=https://cran.r-project.org/src/contrib/$FILENAME

curl -O https://cran.r-project.org/src/contrib/$FILENAME
tar -xvzf $FILENAME
