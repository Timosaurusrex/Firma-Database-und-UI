DROP DATABASE IF EXISTS firma_db;
create database firma_db;
use firma_db;

DROP TABLE IF EXISTS Logo;
create table Logo(
ID int NOT NULL AUTO_INCREMENT,
Standort varchar(40) NOT NULL,
Zustand varchar(40),
Typ varchar(40) NOT NULL,
PRIMARY KEY (ID)
);
insert into Logo( Standort, Zustand, Typ) value ('Jirny', 'Beschädigt', 'B3');
insert into Logo( Standort, Zustand, Typ) value ('Wien', 'Neu', 'B1');
insert into Logo( Standort, Zustand, Typ) value ('Horn', 'Gut', 'A3');
insert into Logo( Standort, Zustand, Typ) value ('Wien', 'Beschädigt', 'C3');
insert into Logo( Standort, Zustand, Typ) value ('Hollabrunn', 'Gebraucht', 'B2');
insert into Logo( Standort, Zustand, Typ) value ('Retz', 'Neu', 'B3');
insert into Logo( Standort, Zustand, Typ) value ('Linz', 'Gut', 'B1');



DROP TABLE IF EXISTS Kunde;
create table Kunde(
ID int NOT NULL AUTO_INCREMENT,
Vorname varchar(40) NOT NULL,
Nachname varchar(40) NOT NULL,
Telefonnummer varchar(30),
Email varchar(40) NOT NULL,
Passwort varchar(50) NOT NULL,
PRIMARY KEY (ID)
);
insert into Kunde (Vorname, Nachname, Telefonnummer, Email, Passwort) value ('Christoph', 'Handschuh', '4667763560908', 'chrisihand@gmail.com', 'hand2005');
insert into Kunde (Vorname, Nachname, Telefonnummer, Email, Passwort) value ('Leon', 'Binder', '4667763244327', 'lbundch@gmail.com', 'leonn71');
insert into Kunde (Vorname, Nachname, Telefonnummer, Email, Passwort) value ('David', 'Fiedler', '+43438843834', 'davidfie@gmail.com', 'davsgo');
insert into Kunde (Vorname, Nachname, Telefonnummer, Email, Passwort) value ('Sebastian', 'Gröbl', '46324237324', 'sebimtb@gmx.at', 'sebiMTB');
insert into Kunde (Vorname, Nachname, Telefonnummer, Email, Passwort) value ('Florian', 'Artlieb', '+454298234832', 'florian@artlieb.at', 'flo77');
insert into Kunde (Vorname, Nachname, Telefonnummer, Email, Passwort) value ('Lukas', 'Gritsch', '+466435743534', 'l.gritsch@cd.com', 'lukas27');



DROP TABLE IF EXISTS Arbeiter;
create table Arbeiter(
ID int NOT NULL AUTO_INCREMENT,
Vorname varchar(40) NOT NULL,
Nachname varchar(40) NOT NULL,
Telefonnummer varchar(30),
Email varchar(40) NOT NULL,
Passwort varchar(40) NOT NULL,
PRIMARY KEY (ID)
);
insert into Arbeiter (Vorname, Nachname, Telefonnummer, Email, Passwort) value ('Arbeiter noch nicht Zugewiesen', '', '', 'admin@mail.com', '1234');
insert into Arbeiter (Vorname, Nachname, Telefonnummer, Email, Passwort) value ('Timo', 'Perzi', '721458621', 'timo@hey.com', 'pzdriver5');
insert into Arbeiter (Vorname, Nachname, Telefonnummer, Email, Passwort) value ('Timon', 'Germin', '+420721188908', 'timon@germin.at', 'skendor');
insert into Arbeiter (Vorname, Nachname, Telefonnummer, Email, Passwort) value ('Joe', 'Doe', '2147483647', 'joedoe@hey.com', 'todoe');
insert into Arbeiter (Vorname, Nachname, Telefonnummer, Email, Passwort) value ('Wolfgang', 'Mozart', '+4307832432', 'nachtmusik@mail.com', 'Wolfi33');
insert into Arbeiter (Vorname, Nachname, Telefonnummer, Email, Passwort) value ('Steve', 'Wozniak', '+43072183242', 'stevewz@gmail.com', 'Mine12');



DROP TABLE IF EXISTS Auftrag;
create table Auftrag(
ID int NOT NULL AUTO_INCREMENT,
Preis int NOT NULL,
Erstelldatum DATE,
Deadline DATE NOT NULL,
Art varchar(40), 
Erledigt VARCHAR(1) NOT NULL DEFAULT 'N',
LogoID int NOT NULL,
KundeID int NOT NULL,
ArbeiterID int NOT NULL,
primary key (ID),
FOREIGN KEY (LogoID) REFERENCES Logo(ID),
FOREIGN KEY (KundeID) REFERENCES Kunde(ID),
FOREIGN KEY (ArbeiterID) REFERENCES Arbeiter(ID)
);
insert into Auftrag (Preis, Erstelldatum, Deadline, Art, LogoID, KundeID, ArbeiterID, Erledigt) value ('100000', '2024-10-22','2024-08-01', 'Reparatur','1','2','3','Y');
insert into Auftrag (Preis, Erstelldatum, Deadline, Art, LogoID, KundeID, ArbeiterID) value ('3000', '2024-10-25','2024-08-02', 'Anbringen','2','2','2');
insert into Auftrag (Preis, Erstelldatum, Deadline, Art, LogoID, KundeID, ArbeiterID) value ('1200', '2024-10-29','2024-01-01', 'Abbauen','2','2','1');
insert into Auftrag (Preis, Erstelldatum, Deadline, Art, LogoID, KundeID, ArbeiterID) value ('5000', '2024-11-30','2024-03-07', 'Reparatur','2','2','1');
insert into Auftrag (Preis, Erstelldatum, Deadline, Art, LogoID, KundeID, ArbeiterID, Erledigt) value ('30000', '2024-12-22','2024-04-21', 'Anbringen','5','5','2','Y');
insert into Auftrag (Preis, Erstelldatum, Deadline, Art, LogoID, KundeID, ArbeiterID) value ('6900', '2024-11-03','2024-03-22', 'Abbauen','6','4','2');
