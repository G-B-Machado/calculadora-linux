## 🤖 Código Python (`calc.py`)

## 🚀 Como Executar

1. **Clone o repositório:**
   ```bash
   git clone https://github.com/seu-usuario/calculadora-linux.git
   cd calculadora-linux

2. **Dê permissão de execução:**
chmod +x calculadora.sh

3. **Execute:**
 ./calculadora.sh

### **📌 Explicação do Código Python (`calc.py`)**  
```markdown

### **Funcionamento:**
1. **Entrada de dados:**  
   ```python
   num1 = int(input("Digite um numero: "))
   num2 = int(input("Digite um numero: "))

2. **Operações matemáticas:**
   soma = num1 + num2
   div = num1 / num2  # Divisão com tratamento de erro (evitar divisão por zero)
   mult = num1 * num2
   sub = num1 - num2

3.**Loop Interativo**
   while True:
    operacao = input("Digite a operação (soma/div/mult/sub): ")
    # ... (lógica das operações)
   Permite repetir operações até o usuário sair.

4.**Histórico**
   with open("historico.txt", "a") as f:
    f.write(f"{num1} {operacao} {num2} = {resultado}\n")
   Armazena todas as operações em um arquivo.




