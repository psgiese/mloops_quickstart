VENV = quickstart_env


virtual_env:
	python3 -m venv ~/$(VENV) && source ~/$(VENV)/bin/activate
	@echo "Hey fren, there is a bug here and you need to activate the virtual env at the command line. So sorry! After that, run make install !"

install:
	pip install --upgrade pip &&\
		pip install -r dev_requirements.txt

lint:
	pylint --disable=R,C *.py ##disable recommended & config warnings, keeps warnings and errors

format:
	black *.py

test:
	python -m pytest -vv --cov=. #you can put a path here