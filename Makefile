SHELL := /bin/bash

export_airflow_home: export AIRFLOW_HOME=$(PWD)

run_airflow_webserver: 
	export AIRFLOW_HOME=$(PWD) && pipenv run airflow webserver

run_airflow_scheduler: 
	export AIRFLOW_HOME=$(PWD) && pipenv run airflow scheduler

init_airflow_db: 
	export AIRFLOW_HOME=$(PWD) && pipenv run airflow db init

airflow_create_user: 
	export AIRFLOW_HOME=$(PWD) && pipenv run airflow users create --username admin --password admin --firstname anonym --lastname Admin --role Admin --email admin@example.org