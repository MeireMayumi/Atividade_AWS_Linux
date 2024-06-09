# Atividade de Linux UNICESUMAR - Turma 2

**Requisitos AWS**

- Gerar uma chave pública para acesso ao ambiente:

    Durante a criação da instância EC2, será solicitada a criação de um par de chaves, que deverá ser armazenada em local seguro e acessível no computador, para uma conexão segura à instância.

- Criar 1 instância EC2 com o sistema operacional Amazon Linux 2 (Família t3.small, 16 GB SSD):
    
    No console da AWS, na parte de EC2, clicar em "Executar Instância" para iniciar a sua criação.

    Para criar a instância com sistema operacional Amazon Linux 2, no campo Imagens de aplicação e sistema operacional, selecionar a imagem Amazon Linux, e em Imagem de máquina da Amazon (AMI), selecionar "Amazon Linux 2 AMI".

    No campo Tipo de instância, selecionar "t3.small".

    No campo Configurar armazenamento adicionar 1x 16GB do tipo gp2 (SSD) para o volume raiz, ou adicionar 2 volumes de 8GB do tipo gp2.

- Gerar 1 elastic IP e anexar à instância EC2:
    
    Na parte de EC2 do console da AWS, ir para "IPs elásticos". Para criar um IP elástico, clicar em "Alocar endereço IP elástico", selecionar a zona de disponibilidade na qual a instância que deseja associar o IP elástico se encontra e clicar em "Alocar".

    Para associar o IP à instância, é necessário selecionar o IP criado e clicar em "Ações" e "Associar endereço IP elástico". Em tipo de recurso, selecionar "instância", no campo Instância, selecionar a identificação da instância que deseja associar o IP e no campo Endereço IP privado, selecionar o IP disponível e clicar em "Associar".


- Liberar as portas de comunicação para acesso público: (22/TCP, 111/TCP e UDP, 2049/TCP/UDP, 80/TCP, 443/TCP).

    Durante a criação da instância EC2, no campo Grupo de segurança, liberar as portas especificadas.