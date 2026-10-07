.PHONY: install lint format typecheck test check

# Install everything from uv.lock into .venv.
install:
	uv sync

# Find problems without changing files.
lint:
	uv run ruff check
	uv run ruff format --check

# Fix what can be fixed automatically.
format:
	uv run ruff check --fix
	uv run ruff format

typecheck:
	uv run pyright

test:
	uv run pytest

# Everything CI runs, in the same order.
check: lint typecheck test
