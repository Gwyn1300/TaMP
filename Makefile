.PHONY: install lint format format-check typecheck fullcheck

install:
	$(UV) sync --locked

lint:
	$(RUN) ruff check .

format-check:
	$(RUN) ruff format --check .

typecheck:
	$(RUN) pyright

fullcheck: format-check lint typecheck

precommit:
	pre-commit install --hook-type pre-commit --hook-type pre-push