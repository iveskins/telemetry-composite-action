#!/bin/bash

# Create Conda environment file
cat <<EOF > environment.yml
name: telemetry-env
dependencies:
  - python=3.x
  - opentelemetry-api
  - opentelemetry-sdk
  - opentelemetry-exporter-otlp
EOF
echo "Created environment.yml for Conda."

# Create .python-version file for pyenv
echo "3.x.x/envs/telemetry-env" > .python-version
echo "Created .python-version for pyenv."

# Create Pipfile for pipenv
cat <<EOF > Pipfile
[[source]]
url = "https://pypi.org/simple"
verify_ssl = true
name = "pypi"

[dev-packages]

[packages]
opentelemetry-api = "*"
opentelemetry-sdk = "*"
opentelemetry-exporter-otlp = "*"

[requires]
python_version = "3.x"
EOF
echo "Created Pipfile for pipenv."

# Create pyproject.toml for Poetry
cat <<EOF > pyproject.toml
[tool.poetry]
name = "telemetry-composite-action"
version = "0.1.0"
description = ""
authors = ["Your Name <your.email@example.com>"]

[tool.poetry.dependencies]
python = "^3.x"
opentelemetry-api = "*"
opentelemetry-sdk = "*"
opentelemetry-exporter-otlp = "*"

[tool.poetry.dev-dependencies]
EOF
echo "Created pyproject.toml for Poetry."

# Create pdm.lock file for PDM
cat <<EOF > pdm.lock
{
    "version": 1,
    "package": [
        {
            "name": "opentelemetry-api",
            "version": "*"
        },
        {
            "name": "opentelemetry-sdk",
            "version": "*"
        },
        {
            "name": "opentelemetry-exporter-otlp",
            "version": "*"
        }
    ],
    "metadata": {
        "python-versions": ">=3.x"
    }
}
EOF
echo "Created pdm.lock for PDM."

# Summary
echo "Environment files created for Conda, pyenv, pipenv, Poetry, and PDM."

