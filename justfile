set dotenv-load := false

default:
  @just --list

install:
  python -m pip install --upgrade pip
  pip install flit
  flit install --deps develop

lint:
	isort . && black . && mypy fief_client/

test:
  pytest --cov fief_client/ --cov-report=term-missing

bumpversion version:
  bumpversion {{version}}
