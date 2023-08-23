#!/bin/sh

if [ ${INITIALIZE_DB} -eq "TRUE"]
then
    python3 ./manage.py initial_setup
    python3 ./manage.py load_test_data
fi

exec python3 ./manage.py runserver 0.0.0.0:8000