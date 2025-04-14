#!/bin/bash

# Verifica se o Python 3 está instalado
if ! command -v python3 &>/dev/null; then
    echo "Python3 não encontrado. Instalando..."
    sudo apt-get update && sudo apt-get install -y python3
fi

# Verifica se o Jupyter está instalado
if ! python3 -m pip show jupyter &>/dev/null; then
    echo "Jupyter não encontrado. Instalando..."
    python3 -m pip install jupyter --user
fi

# Conversão automática (Ideia 1)
if [ ! -f "calc.py" ]; then
    jupyter nbconvert --to script calc.pynb 2>/dev/null
    [ ! -f "calc.py" ] && echo "Erro na conversão." && exit 1
fi

# Execução
python3 calc.py