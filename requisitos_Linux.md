# Requisitos Linux

- *Configurar o NFS entregue;*

  Para iniciar o serviço NFS e garantir sua inicialização automática ao ligar o sistema operacional:
  ```
  systemctl start nfs-server.service
  systemctl enable nfs-server.service
  ```

  Para verificar se o serviço NFS está habilitado:
  ```
  systemctl status nfs-server.service
  ```

  O status deverá estar como "active".
  

- *Criar um diretorio dentro do filesystem do NFS com seu nome;*

  Criar o diretório com o nome: 
  ```
  mkdir /meire
  ```
  
  Para compartilhar um diretório com outros sistemas, é necessário exportar o diretório, adicionando o nome do diretório ao arquivo /etc/exports, e adicionando também as permissões de acesso e de edição.

  Após editar o [arquivo](https://github.com/MeireMayumi/Atividade_AWS_Linux/blob/main/exports.txt), exportar o diretório:
  ```
  /usr/sbin/exportfs -rav
  ```
  
  Para conferir se o diretório foi exportado:
  ```
  /usr/sbin/showmount -e
  ```
  
  que deverá retornar: /meire *

- *Subir um apache no servidor - o apache deve estar online e rodando;*

  Para instalar o Apache, iniciar o serviço e garantir que ele funcione ao inicializar o sistema operacional:
  ```
  yum install httpd
  systemctl start httpd
  systemctl enable httpd
  ```
  Para verificar se o Apache está em execução:
  ```
  systemctl status httpd
  ```
  
  O status deverá estar como "active".

- *Criar um script que valide se o serviço esta online e envie o resultado da validação para o seu diretorio no nfs;*

- *O script deve conter - Data HORA + nome do serviço + Status + mensagem personalizada de ONLINE ou offline;*

- *O script deve gerar 2 arquivos de saida: 1 para o serviço online e 1 para o serviço OFFLINE;*

    Criar um script no diretório compartilhado e editar conforme solicitado.

  [Clique aqui](https://github.com/MeireMayumi/Atividade_AWS_Linux/blob/main/script_status_apache.sh) para visualizar o script.

    Tornar o script executável:
    ```
    chmod +x status_apache.sh
    ```
    Para executar o script:
    ```
    ./status_apache.sh
    ```
- *Preparar a execução automatizada do script a cada 5 minutos.*

    Editar o arquivo [/etc/crontab](https://github.com/MeireMayumi/Atividade_AWS_Linux/blob/main/arquivo_crontab.txt) para automatizar a execução do script a cada 5 minutos.
