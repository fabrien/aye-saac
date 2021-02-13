#!/bin/sh

# Abort on any error
set -x

# Set the OpenSSL security version following instructions in https://github.com/dotnet/runtime/issues/30667
sed -i "s|DEFAULT@SECLEVEL=2|DEFAULT@SECLEVEL=1|g" /etc/ssl/openssl.cnf

# Download EPIC-KITCHENS baseline model
mkdir -p data/epic-kitchens && \
	cd data/epic-kitchens && \
	curl -L -o saved_model.pb https://data.bris.ac.uk/datasets/gw5q146a9dqd2t82jhu8noe3m/EPICKitchens-FasterRCNN-checkpoint/saved_model/saved_model.pb