# Usar imagem Python
FROM python:3.11-slim

# Configurar diretório de trabalho
WORKDIR /app

# Copiar os arquivos de dependências e a pasta do projeto Django
COPY requirements.txt .
COPY novo_projeto_django/ /app/novo_projeto_django/

# Instalar dependências
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Expôr porta padrão do Django
EXPOSE 8000

# Definir o diretório de trabalho para o projeto Django
WORKDIR /app/novo_projeto_django

# Comando para rodar o servidor Django
CMD ["gunicorn", "config.wsgi:application", "--bind", "0.0.0.0:8000"]