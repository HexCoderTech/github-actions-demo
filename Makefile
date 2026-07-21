venv:
	py -m venv .venv
	@echo.
	@echo Virtual environment created.
	@echo Activate it using:
	@echo .\.venv\Scripts\Activate.ps1

dev:
	pip install -r src/api/requirements.txt
	pip install -r requirements-dev.txt

test:
	set PYTHONPATH=src&& pytest tests/

pylint:
	flake8 src/ tests/

tflint:
	tflint terraform/