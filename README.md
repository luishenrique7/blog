Blog - Sistemas de Informação - Claretiano
================

Este é um projeto de Blog desenvolvido em sala de aula na disciplina de Desenvolvimento
Ágil em Ruby on Rails pelas turmas de Sistemas de Informação do Claretiano - Centro
Universitário.

Para rodar essa aplicação, será necessário seguir os seguintes passos:

1. Baixar a aplicação utilizando os comandos do GIT

  ```bash
  $ git clone https://github.com/eduardoazevedo3/blog.git
  ```

2. Configurar o arquivo de conexão com o banco de dados "config/database.yml"

  ```yaml
  default: &default
    adapter: mysql2
    encoding: utf8
    pool: 5
    username: root # Seu usuário MySQL
    password: root # Sua senha MySQL
    host: 127.0.0.1

  development:
    <<: *default
    database: blog_development

  test:
    <<: *default
    database: blog_test
  ```

3. Instalar as dependências:

  ```bash
  $ bundle install
  ```

4. Criar as tabelas no banco de dados

  ```bash
  $ rake db:migrate
  ```

5. Iniciar o servidor web do Rails

  ```bash
  $ rails s
  ```
