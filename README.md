# Ayesaac

This repository contains the source code for Ayesaac, a Python program to help blind people to find what they have lost in a room.  

## Getting started

* Installation methods (pick one)
    * [Installation instructions (recommended)](https://github.com/Aye-saac/aye-saac/wiki/Installing-things-(Recommended))
    * [Installation instructions (using pip instead of poetry)](https://github.com/Aye-saac/aye-saac/wiki/Installation-instructions-(pip-instead-of-poetry))

## Usage

First, start with:
```
./start_all_services.sh
```
After a few seconds, all the services will run in the background, waiting to do work, some warnings can appear, don't worry, it's just Tensorflow 
saying it doesn't find any compatible GPU or that CUDA is not installed, just ignore it, running Tensorflow 
with the GPU is not mandatory.

Now, we just need to tell the first service that there is job to be done ! 
`send_one_request.py` will ping the first service and the rest will follow (send_one_request.py will be replace in the future):
```
python3 send_one_request.py
```

You can look at the `logs/` directory for the services outputs.

To stop the services you just need to enter the following:
```
./stop_all_services.sh
```

### Architecture

![](ayesaac/data/diagram_aye-saac_v3.png)
