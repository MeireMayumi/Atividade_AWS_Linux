
# Requisitos AWS

- *Gerar uma chave pública para acesso ao ambiente:*

    Durante a criação da instância EC2, será solicitada a criação de um par de chaves, que deverá ser armazenada em local seguro e acessível no computador, para uma conexão segura à instância.

- *Criar 1 instância EC2 com o sistema operacional Amazon Linux 2 (Família t3.small, 16 GB SSD):*
    
    No console da AWS, na parte de EC2, clicar em "Executar Instância" para iniciar a sua criação.

    Para criar a instância com sistema operacional Amazon Linux 2, selecionar as respectivas opções, conforme tabela abaixo:

    | Campo | Opção |
    |------:|---------------|
    |Imagens de aplicação e S.O.|Amazon Linux               |
    |Imagem de máquina da Amazon|Amazon Linux 2 AMI               |
    |Tipo de instância|t3.small               |
    |Configurar armazenamento |1x 16GB gp2 ou 2x 8GB gp2 | 


- *Gerar 1 elastic IP e anexar à instância EC2:*
    
    Na parte de EC2 do console da AWS, ir para "IPs elásticos". Para criar um IP elástico, clicar em "Alocar endereço IP elástico", selecionar a zona de disponibilidade na qual a instância que deseja associar o IP elástico se encontra e clicar em "Alocar".

    Para associar o IP à instância, é necessário selecionar o IP criado e clicar em "Ações" e "Associar endereço IP elástico". Em tipo de recurso, selecionar "instância", no campo Instância, selecionar a identificação da instância que deseja associar o IP e no campo Endereço IP privado, selecionar o IP disponível e clicar em "Associar".


- *Liberar as portas de comunicação para acesso público: (22/TCP, 111/TCP e UDP, 2049/TCP/UDP, 80/TCP, 443/TCP):*

    Durante a criação da instância EC2, no campo Grupo de segurança, liberar as portas especificadas.
