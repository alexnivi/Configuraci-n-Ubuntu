####Install pyenv (see https://github.com/pyenv/pyenv):

git clone https://github.com/pyenv/pyenv.git ~/.pyenv

######---Modifying .zshrc---########

echo '\n\n#######--- Modificando PATH para PYENV ---########' >> ~/.zshrc

echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshrc

