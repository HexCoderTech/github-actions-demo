venv:
	python3 -m venv .venv
	echo "Please run 'source .venv/bin/activate'"
dev:
	pip install -r src/api/requirements.txt
	pip install -r requirements-dev.txt

test:
	PYTHONPATH=src/ pytest tests/

pylint:
	flake8 src/ tests/

tflint:
	tflint terraform/