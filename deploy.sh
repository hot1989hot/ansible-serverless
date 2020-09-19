#!/bin/bash
#check gcloud Login
gcloud auth list

#TODO: select project
projects=($(gcloud projects list --format="value(projectId)"))

#Check APIs:
# containerregistry.googleapis.com

#TODO: build docker image
#TODO: upload image to cloud registry
#TODO: build API with cloud run and ESP
#TODO: build backend with cloud functions and cloud run
#TODO: build ui with angular