# Telemetry Composite Action

## Description
This project is a GitHub composite action designed to export telemetry data using OpenTelemetry in Python. It sets up a Python environment within a Docker container, configures OpenTelemetry, and exports traces to a specified endpoint.

## Table of Contents
- [Description](#description)
- [Development Goals](#development-goals)
- [Progress Tracking](#progress-tracking)
- [Related Issues](#related-issues)
- [Milestones](#milestones)

## Development Goals
- [ ] Initial project setup
- [ ] Create Python script for telemetry export
- [ ] Create Dockerfile for the action
- [ ] Create action metadata file
- [ ] Tag the repository for release
- [ ] Test the composite action in a workflow
- [ ] Write documentation
- [ ] Prepare for deployment

## Progress Tracking

### Current Progress
- **Version**: 0.1.0
- **Last Updated**: 2024-07-24
- **Completed Tasks**:
  - Project goals defined
  - Project layout decions taken

### Upcoming Tasks

### Milestones
| Milestone            | Status       | Due Date     |
|----------------------|--------------|--------------|
| Can collect trace    | In Progress  | 2024-08-01   |
| Can send traces      | Not Started  | 2024-09-01   |
## Contributing

Thank you for considering contributing to the Telemetry Composite Action project! Here are the steps to set up your development environment and contribute to the project.

### Setting Up Your Development Environment

1. **Fork the Repository**:
   - Navigate to the [repository on GitHub](https://github.com/your-username/telemetry-composite-action) and click the "Fork" button to create a copy of the repository under your own GitHub account.

2. **Clone Your Fork**:
   - Clone the forked repository to your local machine:
     ```bash
     git clone https://github.com/your-username/telemetry-composite-action.git
     cd telemetry-composite-action
     ```

3. **Create a Virtual Environment**:
   - Depending on your preference, you can use `conda`, `pyenv`, `pipenv`, `poetry`, or `pdm` to manage your environment and dependencies.

#### Using Conda
1. **Create a Conda Environment**:
   ```bash
   conda create -n telemetry-env python=3.x
   conda activate telemetry-env
   ```

2. **Install Dependencies**:
   ```bash
   conda install opentelemetry-api opentelemetry-sdk opentelemetry-exporter-otlp
   ```

#### Using pyenv
1. **Install pyenv**:
   ```bash
   curl https://pyenv.run | bash
   ```

2. **Install Python Version**:
   ```bash
   pyenv install 3.x.x
   pyenv virtualenv 3.x.x telemetry-env
   pyenv local telemetry-env
   ```

3. **Install Dependencies**:
   ```bash
   pip install opentelemetry-api opentelemetry-sdk opentelemetry-exporter-otlp
   ```

#### Using pipenv
1. **Install pipenv**:
   ```bash
   pip install pipenv
   ```

2. **Create Virtual Environment and Install Dependencies**:
   ```bash
   pipenv install
   pipenv shell
   pipenv install opentelemetry-api opentelemetry-sdk opentelemetry-exporter-otlp
   ```

#### Using Poetry
1. **Install Poetry**:
   ```bash
   curl -sSL https://install.python-poetry.org | python3 -
   ```

2. **Install Dependencies**:
   ```bash
   poetry install
   poetry add opentelemetry-api opentelemetry-sdk opentelemetry-exporter-otlp
   ```

#### Using PDM
1. **Install PDM**:
   ```bash
   pip install pdm
   ```

2. **Install Dependencies**:
   ```bash
   pdm init
   pdm add opentelemetry-api opentelemetry-sdk opentelemetry-exporter-otlp
   ```

### Making Changes
1. **Create a New Branch**:
   - Create a new branch for your feature or bug fix:
     ```bash
     git checkout -b feature/your-feature-name
     ```

2. **Make Your Changes**:
   - Make the necessary changes in your development environment.

3. **Test Your Changes**:
   - Ensure your changes are working correctly by testing locally.

4. **Commit Your Changes**:
   - Commit your changes with a descriptive commit message:
     ```bash
     git add .
     git commit -m "Add feature: your-feature-name"
     ```

5. **Push to Your Fork**:
   - Push your changes to your forked repository:
     ```bash
     git push origin feature/your-feature-name
     ```

6. **Create a Pull Request**:
   - Navigate to the original repository on GitHub and create a pull request from your branch.

### Contribution Guidelines
- Follow the existing coding style.
- Write clear and concise commit messages.
- Test your changes thoroughly before submitting.
- Ensure your code passes all tests and lint checks.

### Metadata
- **Date**: 2024-07-24
- **Tags**: #Contributing #DevelopmentEnvironment #Python #Anaconda #pyenv #pipenv #Poetry #PDM #GitHubActions

Thank you for your contributions! Your efforts help make this project better for everyone.
