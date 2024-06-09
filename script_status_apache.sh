#!/bin/bash
#
#Diretorio destino NFS
nfs_dir="/meire"

#Define o serviço
servico="httpd"

#Verifica o status do Apache
status=$(systemctl is-active $servico)

#Define data e hora atuais
data_hora=$(date '+%Y-%m-%d %H:%M:%S')

#Mensagem personalizada
if [ "$status" = "active" ]; then
        mensagem="O Apache esta ONLINE"
        arquivo_saida="${nfs_dir}/apache_online.txt"
else
        mensagem="O Apache esta OFFLINE"
        arquivo_saida="${nfs_dir}/apache_offline.txt"
fi

#Define o conteudo do arquivo
conteudo="Data: $data_hora - Serviço: $servico - Status: $status - $mensagem"

#Direciona o conteudo para o arquivo de saída
echo "$conteudo" >> "$arquivo_saida"

#Feedback do script
echo "Arquivo de status gerado em: $arquivo_saida"