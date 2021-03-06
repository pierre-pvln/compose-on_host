#!/bin/bash
#
# Required environment variables:
#    ${MY_PROJECT_NAME} = the name of the project
#    ${MY_YAML_FILE}    = path to the YAML file including YAML file name
#    ${MY_LEVEL}        = the level of the stack/integration (lvl1, lvl2, lvl3)

# spins up the containers and the services to run as defined in the service description file
#
#
echo docker-compose --project-name ${MY_PROJECT_NAME} --file ../../../../integrations/${MY_LEVEL}/${MY_YAML_FILE} up

docker-compose --project-name ${MY_PROJECT_NAME} \
               --file ../../../../integrations/${MY_LEVEL}/${MY_YAML_FILE} \
               up
