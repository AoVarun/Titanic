create table Passagers(
	Name varchar(200) not null,
	Sex varchar(10),
	Age float,
	SibSp int,
	Parch int,
	primary key(Name)	);

create table Trajet(
	PassengerId int not null,
	Pclass int,
	Ticket varchar(50),
	Fare float,
	Cabin varchar(20),
	primary key(PassengerId)	);

create table titanic(
	Name varchar(200) not null,
	PassengerId int not null,
	Survived int,
	Enbarked varchar(5),
	foreign key(Name) references Passagers(Name),
	foreign key(PassengerId) references Trajet(PassengerId)		);



\copy passagers from 'C:\Users\visha\Documents\passagers.txt'


\copy trajet from 'C:\Users\visha\Documents\trajet.txt'


\copy titanic from 'C:\Users\visha\Documents\titanic.txt'
