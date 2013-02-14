Roo
===

Download Roo: <a href="http://www.springsource.org/download/community?project=Spring%2520Roo">link<a/><br />

Passos usados para criação desta aplicação:

<b>1- Criando a pasta do projeto:<b><br />

	$ mkdir NameApplication
	$ cd NameApplication
	
<b>2- Acessando o gerenciador do Spring Roo:<b><br />

	$ roo

<b>3- Download dos add-ons do Spring Roo:<b><br />

	roo> download accept terms of use

<b>4- Criação do projeto:<b>

	roo> project --topLevelPackage com.spring.exampleRoo

<b>5- Configuração do banco de dados:<b>

	roo> jpa setup --provider HIBERNATE --database MYSQL

<b>6- Configuração das entidades:<b>

	roo> entity jpa --class ~.domain.Base --activeRecord false --testAutomatically 
	roo> field string --fieldName name --sizeMin 2 --notNull 

	roo> entity jpa --class ~.domain.Topping --activeRecord false --testAutomatically 
	roo> field string --fieldName name --sizeMin 2 --notNull 

	roo> entity jpa --class ~.domain.Pizza --activeRecord false --testAutomatically 
	roo> field string --fieldName name --notNull --sizeMin 2
	roo> field number --fieldName price --type java.math.BigDecimal
	roo> field set --fieldName toppings --type ~.domain.Topping
	roo> field reference --fieldName base --type ~.domain.Base

<b>7- Configuração dos DAOs:<b>

	roo> repository jpa --interface ~.repository.ToppingRepository --entity ~.domain.Topping
	roo> repository jpa --interface ~.repository.BaseRepository --entity ~.domain.Base

<b>8- Criação dos Serviços:<b>

	roo> service --interface ~.service.ToppingService --entity ~.domain.Topping
	roo> service --interface ~.service.BaseService --entity ~.domain.Base

<b>9- Criação dos serviços JSON:<b>

	roo> json all --deepSerialize 
	roo> web mvc json setup
	roo> web mvc json all

<b>10- Criação da aplicação web:<b><br />

	roo> web mvc setup
	roo> web mvc all --package ~.web
	
<b>11- Sair do agente de configuração do Spring Roo:<b><br />

	roo> exit

<b>12- Configuração do arquivo de configuração da base de dados:<b>

Será preciso criar a base de dados manualmente e disponibilizar os dados de <b>login, senha e nome da base</b> ao arquivo <em>database.properties</em> localizado em <em>nomeProjeto/src/main/resources/META-INF/spring</em>.

<b>Exemplo:</b> Se o sgbd escolhido na opção 5 foi o mysql:

	database.driverClassName=com.mysql.jdbc.Driver
	database.url=jdbc\:mysql\://localhost\:3306/NameOfDataBase
	database.username=root
	database.password=s3cr3t

<b>13- Execução da aplicação web:<b>

	$ mvn package jetty:run

<b>14- Para acessar a aplicação digite no browser:<br />
	
	http://localhost:8080/NameApplication/


<h3>Tutorial Baseado no material disponibilizado pelo professor Rodrigo de Almeida Vilar de Miranda - Universidade Federal da Paraíba- Campus IV.</h3>















