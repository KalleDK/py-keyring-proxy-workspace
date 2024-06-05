FROM mcr.microsoft.com/devcontainers/python:3.12-bookworm

# Install additional packages
RUN if test -d "$PIPX_HOME/venvs/bump2version"; then echo bump2version already installed; else pipx install bump2version; fi
RUN if test -d "$PIPX_HOME/venvs/ruff"; then echo ruff already installed; else pipx install ruff; fi
RUN if test -d "$PIPX_HOME/venvs/pre-commit"; then echo pre-commit already installed; else pipx install pre-commit; fi
RUN if test -d "$PIPX_HOME/venvs/jinja2-cli"; then echo jinja2-cli already installed; else pipx install jinja2-cli; fi
RUN if test -d "$PIPX_HOME/venvs/pdm"; then echo pdm already installed; else pipx install pdm; fi
RUN pipx inject pdm keyring keyring-proxy\>=0.2.1 keyring-proxy-socket\>=0.1.11
RUN if test -d "$PIPX_HOME/venvs/pytest"; then echo pytest already installed; else pipx install pytest; fi
RUN pipx inject pytest pytest-cov pytest-asyncio coverage
RUN sh -c "$(curl --location https://taskfile.dev/install.sh)" -- -d -b /usr/local/bin

ENV KEYRING_PROPERTY_SOCKET_HOST=host.docker.internal