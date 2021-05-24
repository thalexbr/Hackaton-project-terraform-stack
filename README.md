# Hackathon Project - API para ativação dos pipelines

> Parte do trabalho final da disciplina **INFRASTRUCTURE AS CODE (IAC) - HACKATHON EXPERIENCE LAB**

<!-- TODO: o que ele faz? breve descrição... -->

## Instruções

1) Crie os pipelines de aplicação e stack conforme o procedimento no repositório abaixo:

> Dica: substitua os passos de criação dos endpoints de ativação pelas instruções encontradas [aqui](https://github.com/thalexbr/Hackaton-project-api-pipeline-stack)


> IMPORTANTE: As variáveis que indicam o projeto (PROJ_NAME) devem refletir o nome do repositório ECR, incluindo o stage correto

```
https://github.com/vamperst/Hackaton-project-tutorial/
```

2) Faça um clone do repositório

```
git clone https://github.com/thalexbr/Hackaton-project-terraform-stack
```

> IMPORTANTE: Execute corretamente os passos de criação da infra para que os pipelines executem com sucesso 

2.1) Acesse pasta do projeto e execute o shell de criação da infra

```

cd ~/environment/Hackaton-project-terraform-stack

./hackathon.sh create infra <stage_name>

./hackathon.sh create routing <stage_name>

```

3) Utilize a URL gerada pela stack para ativar o pipeline desejado

```
curl -X GET https://<URL_DO_STACK>/activate/<NOME_DO_PIPELINE>
```

4) Acompanhe a execução do pipeline pela console do AWS

> Nota: Não esqueça de remover os recursos após os testes

## Meta

INFRASTRUCTURE AS CODE (IAC) - HACKATHON EXPERIENCE LAB

FIAP (<https://www.fiap.com.br/>)

Turma: 6DVP

Team:

```
Thales Gomes - RM337964
Edilson de Almeida - RM337240
Helton Ribeiro - RM337979
Jailson Silva - RM337212 
```

## Contributing

1. Fork it (<https://github.com/thalexbr/Hackaton-project-api-pipeline-stack/fork>)
2. Create your feature branch (`git checkout -b feature/fooBar`)
3. Commit your changes (`git commit -am 'Add some fooBar'`)
4. Push to the branch (`git push origin feature/fooBar`)
5. Create a new Pull Request
