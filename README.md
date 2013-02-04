Roo
===

Example application using Spring-Roo.

Passos para configuração:

<b>1- Criando a pasta do projeto:<b>	
	$ mkdir NameApplication
	$ cd NameApplication
	
<b>2- Acessando o gerenciador do Spring Roo:<b>
	$ roo

<b>3- Download dos add-ons do springRoo:<b>
	download accept terms of use

<b>4- Criação do projeto:<b>

	project --topLevelPackage com.spring.exampleRoo

<b>5- Configuração do banco de dados:<b>

	jpa setup --provider HIBERNATE --database MYSQL

<b>5- Configuração das entidades:<b>

	entity jpa --class ~.domain.Base --activeRecord false --testAutomatically 
	field string --fieldName name --sizeMin 2 --notNull 

	entity jpa --class ~.domain.Topping --activeRecord false --testAutomatically 
	field string --fieldName name --sizeMin 2 --notNull 

	entity jpa --class ~.domain.Pizza --activeRecord false --testAutomatically 
	field string --fieldName name --notNull --sizeMin 2
	field number --fieldName price --type java.math.BigDecimal
	field set --fieldName toppings --type ~.domain.Topping
	field reference --fieldName base --type ~.domain.Base

<b>6- Configuração dos DAOs:<b>

	repository jpa --interface ~.repository.ToppingRepository --entity ~.domain.Topping
	repository jpa --interface ~.repository.BaseRepository --entity ~.domain.Base

<b>7- Criação dos Serviços:<b>

	service --interface ~.service.ToppingService --entity ~.domain.Topping
	service --interface ~.service.BaseService --entity ~.domain.Base

<b>8- Criação dos serviços JSON:<b>

	json all --deepSerialize 
	web mvc json setup
	web mvc json all

<b>9- Criação da aplicação web:<b>
	web mvc setup
	web mvc all --package ~.web
	
<b>10- Sair do gente de configuração do Spring Roo:<b>

roo> exit

<b>11- Configuração do arquivo de copnfiguração da base de dados:<b>

Será preciso criar a base de dados na "mão" e disponibilizar os dados de login, senha e nome da base ao arquivo <em>database.properties</em> localizado em NomeProjeto/src/main/resources/META-INF/spring.

Exemplo se o sqbd escolhido na opção 5 foi o mysql:

	database.driverClassName=com.mysql.jdbc.Driver
	database.url=jdbc\:mysql\://localhost\:3306/<b><em>exampleRoot</em><b>
	database.username=<b><em>root<b></em>
	database.password=<b><em>s3cr3t<b></em>

<b>12- Execução da aplicação web:<b>

$ mvn package jetty:run

<b>13- Para acessar a aplicação vá em http://localhost:8080/NameApplication/:<b>


Tutorial Baseado no material disponibilizado pelo professor da Universidade Federal da Paraíba - Rodrigo de Almeida Vilar de Miranda.















