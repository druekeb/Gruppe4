insert into gebaeude(gebaeude_id, name,kuerzel, postadresse) 
values(100,'Eugen-Schmalenbach-Gebäude','ESG','Universitaetsstr. 41');
insert into gebaeude(gebaeude_id, name,kuerzel, postadresse) 
values(200,'Allgem. Verfügungszentrum','AVZ','Universitaetsstr. 21');
insert into gebaeude(gebaeude_id, name,kuerzel, postadresse) 
values(300,'Technologie- und Gründerzentrum','TGZ','Universitaetsstr. 11');
insert into gebaeude(gebaeude_id, name,kuerzel, postadresse) 
values(400,'Informatikzentrum',null,'Universitaetsstr. 1');


insert into RAEUME(RAUM_ID, NAME, GEBAEUDE_ID, STOCKWERK , RAUMTYP ) 
values(2000,'E 15/2',200,'2',null);
insert into RAEUME(RAUM_ID, NAME, GEBAEUDE_ID, STOCKWERK , RAUMTYP ) 
values(3000,'B-15-3',300,'3',null);
insert into RAEUME(RAUM_ID, NAME, GEBAEUDE_ID, STOCKWERK , RAUMTYP ) 
values(4000,'D 07',300,'3',null);
insert into RAEUME(RAUM_ID, NAME, GEBAEUDE_ID, STOCKWERK , RAUMTYP ) 
values(4011,'B 13',300,'2',null);
insert into RAEUME(RAUM_ID, NAME, GEBAEUDE_ID, STOCKWERK , RAUMTYP ) 
values(4021,'A 409',300,null,null);
insert into RAEUME(RAUM_ID, NAME, GEBAEUDE_ID, STOCKWERK , RAUMTYP ) 
values(5001,'F 08',400,'4',null);
insert into RAEUME(RAUM_ID, NAME, GEBAEUDE_ID, STOCKWERK , RAUMTYP ) 
values(5003,'G 08',400,'2',null);
insert into RAEUME(RAUM_ID, NAME, GEBAEUDE_ID, STOCKWERK , RAUMTYP ) 
values(5005,'H 09',400,'2',null);

alter table mitarbeiter modify constraint MIT_LEHRGEBIET_FK disable;
alter table mitarbeiter modify constraint MIT_RAUM_FK disable;

insert into mitarbeiter(MITARBEITER_ID, NAME,VNAME, TITEL,LEHRGEBIET_ID,STATUS,TELEFON, EMAIL,RAUM_ID) 
values (1001,'de Witt','Claudia','Prof. Dr.',101,null,'+49 (0)2331 987 4490','Claudia.deWitt@fernuni-hagen.de',2000);
insert into mitarbeiter(MITARBEITER_ID, NAME,VNAME, TITEL,LEHRGEBIET_ID,STATUS,TELEFON, EMAIL,RAUM_ID) 
values (1002,'Schmieder','Felicitas','Prof. Dr.',111,null,'+49 2331 987 - 2120','felicitas.schmieder@fernuni-hagen.de',3000);
insert into mitarbeiter(MITARBEITER_ID, NAME,VNAME, TITEL,LEHRGEBIET_ID,STATUS,TELEFON, EMAIL,RAUM_ID) 
values (1003,'Gretz','Daniela ','Dr.',121,null,'+49 2331 987 - 2517','daniela.gretz@fernuni-hagen.de',4000);
insert into mitarbeiter(MITARBEITER_ID, NAME,VNAME, TITEL,LEHRGEBIET_ID,STATUS,TELEFON, EMAIL,RAUM_ID) 
values (2002,'Güting','Ralf Hartmut','Prof. Dr.',404,null,'+49 (2331) 987 4279','rhg@fernuni-hagen.de',5005);
insert into mitarbeiter(MITARBEITER_ID, NAME,VNAME, TITEL,LEHRGEBIET_ID,STATUS,TELEFON, EMAIL,RAUM_ID) 
values (2004,'Haake',' Jörg M.','Prof. Dr.-Ing.',404,null,'02331 / 987 - 327','joerg.haake@fernuni-hagen.de',5003);
insert into mitarbeiter(MITARBEITER_ID, NAME,VNAME, TITEL,LEHRGEBIET_ID,STATUS,TELEFON, EMAIL,RAUM_ID) 
values (2006,'Schlageter','Gunter','Prof. Dr.',261,null,'49 2331 987 - 2975','Gunter.Schlageter@FernUni-Hagen.de',5001);
insert into mitarbeiter(MITARBEITER_ID, NAME, VNAME, TITEL,LEHRGEBIET_ID,STATUS,TELEFON, EMAIL,RAUM_ID) 
values (3001,'Singer','Hermann','Univ.-Prof. Dr.',301,null, null,null,null);
insert into mitarbeiter(MITARBEITER_ID, NAME, VNAME, TITEL,LEHRGEBIET_ID,STATUS,TELEFON, EMAIL,RAUM_ID) 
values (3002,'Niehoff','Karin','PD Dr. ',302, null,null,null,null);
insert into mitarbeiter(MITARBEITER_ID, NAME, VNAME, TITEL,LEHRGEBIET_ID,STATUS,TELEFON, EMAIL,RAUM_ID) 
values (3003,'Fliess','Sabine','Univ.-Prof. Dr.',303,null,'(02331) 987 - 2533','dlm@fernuni-hagen.de',null);
insert into mitarbeiter(MITARBEITER_ID, NAME,VNAME, TITEL,LEHRGEBIET_ID,STATUS,TELEFON, EMAIL,RAUM_ID) 
values (4002,'Kubis','Sebastian','Prof. Dr.',402,null,'+49 2331 987 - 2266','lg.kubis@fernuni-hagen.de',4011);
insert into mitarbeiter(MITARBEITER_ID, NAME,VNAME, TITEL,LEHRGEBIET_ID,STATUS,TELEFON, EMAIL,RAUM_ID) 
values (4003,'Tillmanns','Kerstin','Prof. Dr.',403,null,'+49 2331 987 - 1306','lg.kubis@fernuni-hagen.de',4021);
insert into mitarbeiter(MITARBEITER_ID, NAME,VNAME, TITEL,LEHRGEBIET_ID,STATUS,TELEFON, EMAIL,RAUM_ID) 
values
(4004,'Völzmann-Stickelbrock','Barbara','Prof. Dr.',404,null,'02331-987-2939',
'Barbara.Voelzmann-Stickelbrock@FernUni-Hagen.de',null);


insert into fakultaeten(fakultaet_id, name)
values(10,'Fakultät für Kultur- und Sozialwissenschaften');
insert into fakultaeten(fakultaet_id, name) 
values(20, 'Fakultät für Mathematik und Informatik');
insert into fakultaeten(fakultaet_id, name)
 values(30, 'Fakultät für Wirtschaftswissenschaft');
insert into fakultaeten(fakultaet_id, name) 
values(40,'Rechtswissenschaftliche Fakultät');


insert into institute(INSTITUTS_ID,NAME,FAKULTAET_ID) 
values(10,'Institut für Bildungswissenschaft und Medienforschung ',10);
insert into institute(INSTITUTS_ID,NAME,FAKULTAET_ID) 
values(20,'Historisches Institut',10);
insert into institute(INSTITUTS_ID,NAME,FAKULTAET_ID)
values(30,'Institut für neuere deutsche und europäische Literatur ',10);


insert into lehrgebiete(lehrgebiet_id, name,fakultaet_id,instituts_id, gebaeude_id,leiter)
values(101, 'Bildungstheorie und Medienpädagogik',10,10, 100,1001);
insert into lehrgebiete(lehrgebiet_id, name,fakultaet_id,instituts_id, gebaeude_id,leiter)
values(111, 'Geschichte und Gegenwart Alteuropas',10, 20,300,1001);
insert into lehrgebiete(lehrgebiet_id, name,fakultaet_id,instituts_id, gebaeude_id,leiter)
values(121, 'Neuere deutsche Literaturwissenschaft und Medientheorie',10, 30,300,1001);
insert into lehrgebiete(lehrgebiet_id, name,fakultaet_id,instituts_id, gebaeude_id,leiter)
values(221, 'Lehrgebiet Datenbanksysteme für neue Anwendungen',20,null, 400,2002);
insert into lehrgebiete(lehrgebiet_id, name,fakultaet_id,instituts_id, gebaeude_id,leiter)
values(241, 'Kooperative Systeme - Praktische Informatik VI ',20,null, 400,2004);
insert into lehrgebiete(lehrgebiet_id, name,fakultaet_id,instituts_id, gebaeude_id,leiter)
values(261, 'Informationssysteme und Datenbanken',20,null,400,2006);
insert into lehrgebiete(lehrgebiet_id, name,fakultaet_id,instituts_id,gebaeude_id,leiter)
values(301, 'Angewandte Statistik und Methoden der empirischen Sozialforschung',30,null, 100,3001);
insert into lehrgebiete(lehrgebiet_id, name,fakultaet_id,instituts_id,gebaeude_id, leiter)
values(302, 'Bank- und Finanzwirtschaft',30,null, 100, 3002);
insert into lehrgebiete(lehrgebiet_id, name,fakultaet_id,instituts_id,gebaeude_id, leiter)
values(303,'Douglas-Stiftungslehrstuhl für Dienstleistungsmanagement',30,null,100, 3003);
insert into lehrgebiete(lehrgebiet_id, name,fakultaet_id,instituts_id,gebaeude_id, leiter)
values(402,'Wilhelm Peter Radt Stiftungslehrstuhl für Bürgerliches Recht, Gewerblichen Rechtsschutz, Internationales
Privat- und Zivilprozessrecht',40,null,100,4002 );
insert into lehrgebiete(lehrgebiet_id, name,fakultaet_id,instituts_id,gebaeude_id, leiter)
values(403,'Lehrstuhl für Bürgerliches Recht, Arbeitsrecht und Rechtsvergleichung',40,null,100,4003 );
insert into lehrgebiete(lehrgebiet_id, name,fakultaet_id,instituts_id,gebaeude_id, leiter)
values(404,'Lehrstuhl für Bürgerliches Recht, Wirtschaftsrecht, Gewerblicher Rechtsschutz, Urheberrecht und
Zivilprozessrecht ',40,null,100,4004 );

insert into kurse(KURS_NR, SEMESTER ,NAME ,KURS_SWS,UEBUNGS_SWS, BESCHREIBUNG,LEHRGEBIET_ID )
values(01661, 'SS 2011','Datenstrukturen I',2,1,'Effiziente Algorithmen und Datenstrukturen bilden ein zentrales Thema
der Informatik. Algorithmen sind Methoden zum Lösen von Problemen. Ein Datentyp ist eine Menge von Objekten zusammen mit
Operationen auf diesen Objekten; eine Datenstruktur realisiert einen Datentyp, indem sie eine Repräsentation für die
Objekte und Algorithmen für die Operationen anbietet. In diesem Kurs werden grundlegende Algorithmen und Datenstrukturen
der Informatik behandelt; im Vordergrund steht dabei jeweils die Analyse der entstehenden Kosten (Laufzeit und
Speicherplatzbedarf). Dieser Kurs bietet einen Ausschnitt mit den wichtigsten Themen des Kurses 01663 "Datenstrukturen".
Gliederung: Programmiersprachliche Konzepte für Datenstrukturen, grundlegende Datentypen (Listen, Stacks, Queues,
Bäume), Datentypen zur Erstellung von Mengen (u.a. Hashing, binäre Suchbäume, AVL-Bäume), Sortieralgorithmen, Graphen,
Externes Suchen: B-Bäume. 
Voraussetzungen: Grundkenntnisse der Programmierung, etwa anhand der Kurse 01612 oder 01613,
Grundkenntnisse der Programmiersprache Java (können auch noch parallel zum Kurs erworben werden).
Für folgende Informatik-Studiengänge vorgesehen: B, L.',221);
insert into kurse(KURS_NR, SEMESTER ,NAME ,KURS_SWS,UEBUNGS_SWS, BESCHREIBUNG,LEHRGEBIET_ID )
values(01678,'WS 2011/2012','Verteilte Systeme',4,2,'Der Kurs gibt eine moderne Einführung in Funktionsweisen und
Designprinzipien von Verteilten Systemen. Der Kurs basiert auf einem Buch, das von den Studierenden selbst besorgt
werden muss. Begleitende Kurseinheiten geben Lesehinweise und ergänzen das Buch durch konkrete Beispiele. Folgende
Themenbereiche werden unter anderem betrachtet: Grundlagen, Computernetzwerke, Prozesse, Sicherheit, Verteilte
Dateisysteme, Transaktionen, Synchronisation, computerunterstützte Zusammenarbeit.
Für folgende Informatik-Studiengänge vorgesehen: B, D, L, MC (über Katalog B), Z, BSc WINF.',241);
insert into kurse(KURS_NR, SEMESTER ,NAME ,KURS_SWS,UEBUNGS_SWS, BESCHREIBUNG,LEHRGEBIET_ID )
values(01665,'SS 2011','Datenbanksysteme',4,2,'Dieser Kurs gibt eine Einführung in das Gebiet der Datenbanksysteme. Es
wird das Konzept eines Datenbanksystems, die prinzipielle Architektur und die Funktionsweise erarbeitet. Die
Modellierung der Daten mit Hilfe unterschiedlicher Datenmodelle sowie das Arbeiten mit den entsprechenden Datenbanken
werden diskutiert. Der Kurs beinhaltet ferner die Problemkreise: Transaktionsmanagement, Integrität, Datenschutz sowie
einige Aspekte der physischen Datenorganisation und der Implementierung eines Datenbanksystems.',261);
insert into kurse(KURS_NR, SEMESTER ,NAME ,KURS_SWS,UEBUNGS_SWS, BESCHREIBUNG,LEHRGEBIET_ID )
values(03505,'SS 2011','Alteuropäische Schriftkultur',5,0,'Der Kurs zielt auf eine Einführung in die Formen und
Funktionen des Schriftgebrauchs als einer zentralen Kulturtechnik zwischen Antike und Früher Neuzeit. Er versteht sich
zugleich als ein Zugang zu den Funktionsweisen älterer Gesellschaften, die kaum verständlich sind, wenn man die
Besonderheiten der Schriftkultur Alteuropas außer acht lässt: die soziale Exklusivität des Schriftgebrauchs und aller
damit verbundenen Kontroll- und Herrschaftsmechanismen. Was wir über das Leben - auch der einfachen Leute - in diesen
Gesellschaften herausfinden können, muß überwiegend aus Zeugnissen einer schriftkundigen Elite erschlossen werden, ganz
gleich, ob es sich um die Antike, das Mittelalter oder die Frühe Neuzeit handelt. Der Kurs entfaltet das Thema in einer
Reihe von Fallstudien zu verschiedenen Aspekten der alteuropäischen Schriftkultur, beginnend mit der Erfindung des
griechischen Alphabets im Zeitalter der homerischen Epen bis zur Alphabetisierung breiter Schichten im 18. und 19.
Jahrhundert.',111);

alter table mitarbeiter modify constraint MIT_LEHRGEBIET_FK enable;
alter table mitarbeiter modify constraint MIT_RAUM_FK enable;