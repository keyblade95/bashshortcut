# Bash Shortcuts

Append the content of bashrc in ~/.bashrc file (or ~/.bash_profile):

```bash
wget -O bashrc https://raw.githubusercontent.com/keyblade95/bashshortcut/main/bashrc && sed -i '/###\| bash shortcuts \|###/,/###\| ====== \|###/d' ~/.bashrc && cat bashrc >> ~/.bashrc && rm -f bashrc && source ~/.bashrc
```

### Ubuntu
Place the content of bashrc in ~/.bash_aliases file:
```bash
wget -O ~/.bash_aliases https://raw.githubusercontent.com/keyblade95/bashshortcut/main/bashrc
```
