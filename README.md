# Projeto1_SIO

Primeiro projeto de SIO (Segurança Informática e nas Organizações) 2023/2024

## Sobre o projeto

Este projeto foi realizado com o objetivo de criar um website dedicado à exploração de vulnerabilidades em sistemas de software, de modo a aprofundar o nosso entendimento das potenciais falhas de segurança que os sistemas podem apresentar, bem como prevenir as mesmas.


## Vulnerabilidades exploradas

* CWE-79: Improper Neutralization of Input During Web Page Generation ('Cross-site Scripting')
* CWE-89: Improper Neutralization of Special Elements used in an SQL Command ('SQL Injection')
* CWE-522: Insufficiently Protected Credentials
* CWE-521: Weak Password Requirements
* CWE-20: Improper Input Validation
* CWE-284: Improper Acess Control
* CWE-434:Unrestricted Upload of File with Dangerous Type
* CWE-839: Numeric Range Comparison without Minimum Check
* CWE-209: Generation of Error Message Containing Sensitive Information
* CWE-1284: Improper Validation of Specified Quantity in Input

## Autores 

 * Bernardo Pinto - 105926
 * Diogo Falcão – 108712
 * João Santos – 110555
 * Matilde Teixeira – 108193

 
## How to Run

Ante de correr o projeto, verificar se o MySQL está a ativo. Se o MySQL estiver ativo, parar o servico usando o seguinte comando:

```shell
sudo service mysql stop
```

A seguir, navegar para a pasta "app" ou "app_sec", onde irá estar um documento docker-compose. Em seguida usar o seguinte comando:

```shell
docker-compose up
```

Em seguida abre o seu navegador em: 
[http://localhost:8080/shopping-cart](http://localhost:8080/shopping-cart).






## Credits

This project is an extension of the [shashirajraja/shopping-cart](https://github.com/shashirajraja/shopping-cart) repository, and we would like to give credit to the original developers. The original developer of the base project is [shashirajraja](https://github.com/shashirajraja).
