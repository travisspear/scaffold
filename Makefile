install:
	python3 -m pip install --upgrade pip &&\
		python3 -m pip install -r requirements.txt
		
format:
	black *.py
	
lint:
	pylint --disable=R,C hello.py
	
test:
	python -m pytest -vv --cov=hello test_hello.py
	
all: install lint test