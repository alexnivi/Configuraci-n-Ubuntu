####Install pyenv (see https://github.com/pyenv/pyenv):
######################################################
####Common building problems https://github.com/pyenv/pyenv/wiki/Common-build-problems

git clone https://github.com/pyenv/pyenv.git ~/.pyenv

######---Modifying .zshrc---########

echo '\n\n#######--- Modificando PATH para PYENV ---########' >> ~/.zshrc

echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH:/home/alexnivi/.local/bin' >> ~/.zshrc
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshrc

sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
xz-utils tk-dev libffi-dev liblzma-dev python-openssl

sudo apt install libedit-dev
