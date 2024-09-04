

all: install test lint format

venv:

activate:
	source mini1/bin/activate

install:
	pip install -upgrade pip && pip install -r requirements.txt

test: 
	pytest

lint:
	pylint --disable=R,C --ignore-patterns=test_.*?py *.py
	

format:
	black *.py

