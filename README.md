### Setup Directly on the Machine

#### Prerequisites

- Pyenv
- Python
- Pipenv

#### Install Pyenv v2.3.22

#####Option 1
```shell
curl https://pyenv.run | PYENV_GIT_TAG=v2.3.22 bash
```

#####Option 2
```
brew install pyenv
``` 

##### Load pyenv automatically

###### For bash

```shell
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
exec "$SHELL"
```

###### For Zsh

```shell
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(pyenv init -)"' >> ~/.zshrc
exec "$SHELL"
```

#### Install Python 3.10.6
`pyenv install 3.10.6
`

####Setup repo to use python version installed above
`pyenv local 3.10.6`

#### Install pip and pipenv

`pip install --upgrade pip`

`pip install pipenv`

#### Set env variable
`export PIPENV_VENV_IN_PROJECT=1
`
####Install the dependencies from Pipfile
`pipenv install --dev
`
#### Start a virtualenv shell and run commands inside it
`pipenv shell
`

#### Run Tests

To run pytest in verbose mode

`pytest tests/ -sv --showlocals
`

To run pytest for integration tests

`pytest tests/ -m "integtest"
`

To run pytest for unit tests

`pytest tests/ -m "not integtest"
`
