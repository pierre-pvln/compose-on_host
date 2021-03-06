#!/bin/bash
#
# -- ! SHOULD ONLY BE USED FOR TESTING A CONTAINER OR SERVICE ! --
#
# This script is used to enter the service/container in command line mode for testing purposes
#
# To start a container/service use: ./up-it.sh
# If command line access is needed in a started container use ./cli-it.sh 
#
MY_DEFAULT_DATA_OVERRIDE="YES"

# Get relevant settings
#
source ./settings.sh

if [ -f ./default_data.sh ]
then
   if [ ${MY_DEFAULT_DATA_OVERRIDE} == "YES" ]
   then
      # Add default data
      #
      source ./default_data.sh
   else
      echo "No default data override"
   fi

else
   echo "./default_data.sh not present"

fi

MY_SERVICE_NAME="mysql_5.7_service"

#Create and start containers / services
#
source ../../../dc-scr/dc-run.sh
