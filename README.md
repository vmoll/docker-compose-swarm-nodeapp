# Descrição

Docker utilizando o compose e docker swarm, criando uma aplicação node.js para trabalhar com múltiplos processadores.

# Configuração Container Nginx

1. Exposição de portas

	8080

2. Volume (Obs: verificar se na configuração do docker -> drivers compartilhados, as unidades c: e/ou d: estão habilitadas)

    /home/node/app

3. Executar arquivos .bat ou .sh para rodar a aplicação com o docker

    `RunImage.bat` - Rodar Imagem no Container

    `RunDockerCompose.bat` - Iniciar DOcker Compose

    `RunDeployToDockerSwarm.bat` - Iniciar Docker Swarm