#!/usr/bin/sh

sudo yum install install curl git­core gcc make zlib1g­dev libbz2­dev libreadline­dev libsqlite3­dev libssl­dev

sudo yum install -y zlib-devel bzip2-devel sqlite sqlite-devel openssl-devel patch

sudo curl -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash

echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.bash_profile
exec "$SHELL"

pyenv install 2.7
pyenv local 2.7
pyenv versions
pyenv virtualenv my_env_2_7
pyenv virtualenvs


pyenv install 3.5.4
pyenv local 3.5.4
pyenv versions
pyenv virtualenv my_env_3_5_4
pyenv virtualenvs