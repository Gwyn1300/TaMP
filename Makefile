.PHONY: run lint format format-check typecheck fullcheck

run:
	python Lab1.py

lint:
	ruff check .

format:
	ruff format .

format-check:
	ruff format --check .

typecheck:
	pyright

fullcheck: format-check lint typecheck

precommit:
	pre-commit install --hook-type pre-commit --hook-type pre-push