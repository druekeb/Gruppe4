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

insert into kurse(KURS_NR, SEMESTER ,NAME ,KURS_SWS,UEBUNGS_SWS, BESCHREIBUNG,LEHRGEBIET_ID )
values(33040,'SS 2011','Bildung - Erziehung - Sozialisation',2,0,'Dieser Studienbrief ist eine Einführung in die
Bildungswissenschaft. Er gibt zunächst einen Einblick in die Etablierung der Bildungswissenschaft als Disziplin. Dabei
verwenden wir Bildungswissenschaft synonym mit Pädagogik und Erziehungswissenschaft, da es sich um dieselben
Gegenstandsbereiche handelt. Allerdings hat sich deren Ausrichtung im Laufe der Geschichte verändert: Die eher empirisch
ausgerichtete Erziehungswissenschaft hat die Pädagogik als eher personale Pädagogik abgelöst, und im Kontext des
lebenslangen Lernens scheint sich nunmehr Bildungswissenschaft zu etablieren. Im historischen Rückgriff auf die
klassischen Ansätze ist in diesem Studienbrief allerdings weiterhin von Pädagogik oder Erziehungswissenschaft die Rede.
Bevor die Autoren auf die drei wesentlichen Grundbegriffe Erziehung, Bildung und Sozialisation eingehen, erläutern sie,
was eine Wissenschaft ausmacht und was eine Theorie überhaupt ist. Sie beschreiben, was generell unter
wissenschaftlichem Wissen, bildungswissenschaftlichen Wissensformen und Grundbegriffen zu verstehen ist. Zu jedem der
drei Grundbegriffe führen die Autoren zunächst in den Begriff selbst und seine Grundaussagen ein, um dann exemplarisch
klassische Theorieansätze zu erläutern. So stellen die Autoren den ersten Grundbegriff Erziehung anhand
anthropologischer und metaphorischer Aspekte vor. Ausführlich erläutern sie anschließend Theorien der Erziehung anhand
der Klassiker Jean-Jaques Rousseau und Immanuel Kant. Den Grundbegriff der Bildung führen die Autoren entlang seiner
Bestimmungen ein und stellen ihn dem Kompetenzbegriff gegenüber. Sie ziehen als bedeutende Vertreter des
Bildungsgedankens Platon, Wilhelm von Humboldt und Theodor W. Adorno heran und erläutern deren jeweilige
bildungstheoretischen Ansätze. Den dritten Grundbegriff des Studienbriefs bildet die Sozialisation. Nach den
Bestimmungen, Phasen und Instanzen sowie rollentheoretischen Ansätzen von Sozialisation folgt die Auseinandersetzung mit
den Klassikern der Sozialisationstheorie, Émile Durkheim und Pierre Bourdieu.
Mit der Auswahl der klassischen Vertreter machen die Autoren u. a. auch deutlich, dass die Bildungswissenschaft
interdisziplinäre Bezüge herstellt, um Erziehungs-, Bildungs- und Sozialisationsprozesse umfassend erklären und
gestalten zu können. Jedes Kapitel schließt mit Reflexionsfragen zur eigenen Selbstlernkontrolle ab.',101);
insert into kurse(KURS_NR, SEMESTER ,NAME ,KURS_SWS,UEBUNGS_SWS, BESCHREIBUNG,LEHRGEBIET_ID )
values(04535,'SS 2011','Heinrich von Kleist',4,0,'Der Studienbrief behandelt das Gesamtwerk Heinrich von Kleists. Dabei
wird auch die Biographie einbezogen, insofern sie eine aussagekräftige Voraussetzung der Dichtung bildet oder sogar von
Kleist als Teil des Werks - als Text gewissermaßen - angelegt wurde (vgl. etwa die frühen Briefe und die
Selbstmordinszenierung). Ein leitender Gesichtspunkt ist die Auseinandersetzung der Kleistischen Dichtung mit dem
Ideensystem der Aufklärung, das sie von innen heraus destruiert, ja: explodieren läßt. Kleists ''Modernität'', die ihn
zu einem Lieblingsautor der Theoriediskussion der letzten zwanzig Jahre gemacht hat (u. a. Diskurstheorie,
Poststrukturalismus, Dekonstruktion, Feminismus), soll durch genaue interne Textanalysen und eine möglichst gründliche
historische Kontexteinbettung bestimmt werden. Zentrale Aspekte sind u. a.: Familienstruktur und Geschlechterrollen,
insbes. die Funktion des Weiblichen; Körperbilder; Darstellung der Gewalt; Rhetorik und Gestik; Thematisierung der
Schriftlichkeit; Dekonstruktion der Geschichtsphilosophie und der teleologischen Erzählstruktur; Bedeutung des Zufalls
(poetische Kontingenz); Nationalismus.
Textgrundlage:
Heinrich von Kleist: Sämtliche Werke und Briefe. Hrsg. von Helmut Sembdner, München 2001 (= dtv-belletristik, Bd.
12919).
Für die Erzählungen liegt inzwischen die kommentierte Ausgabe des Deutschen Klassiker Verlages als Taschenbuch vor:
Heinrich von Kleist: Sämtliche Erzählungen. Hrsg. von Klaus Müller-Salget, Frankfurt/Main 2005 (= DKV, Tb. 5).
Zur Vorbereitung geeignet:
Jochen Schmidt: Heinrich von Kleist. Die Dramen und Erzählungen in ihrer Epoche, Darmstadt 2003.
Klaus Müller-Salget: Heinrich von Kleist, Stuttgart 2002 (= Reclams Universalbibliothek, Bd. 17635).
Einen guten biographischen Zugang bietet:
Rudolf Loch: Kleist. Eine Biographie, Göttingen 2003.',121);
insert into kurse(KURS_NR, SEMESTER ,NAME ,KURS_SWS,UEBUNGS_SWS, BESCHREIBUNG,LEHRGEBIET_ID )
values(00889,'WS 2011/2012','Zeitreihenanalyse und Anwendungen in der empirischen Kapitalmarktforschung',6,0,'Viele
Datensätze in den Wirtschaftswissenschaften (z.B. Aktienkurse, Geschäftsklima-Index, Bruttoinlandsprodukt (BIP),
Zinssätze, Arbeitslosigkeit etc.) erfassen die Veränderung von Variablen im Zeitablauf. Da es sich immer um die
qualitativ gleiche Größe y handelt, diese jedoch zu unterschiedlichen Zeitpunkten t erfaßt wird, erfordert die Analyse
solcher Zeitreihen y(t) ein statistisches Instrumentarium, welches von der traditionellen Querschnitts-Statistik
abweicht. Bei dieser setzt sich die Stichprobe aus unabhängigen und identisch verteilten statistischen Einheiten
zusammen, so dass sich die Streuung von Schätzern umgekehrt proportional zur Stichprobengröße verringert. Bei direkter
Übertragung solcher Methoden auf Zeitreihen, wo die einzelnen Werte abhängig bzw. korreliert sind, ergeben sich
irreführende und falsche Schlüsse. Beispielsweise ist der empirische Mittelwert der Stichprobe y(1),...,y(T) zwar immer
und leicht berechenbar, jedoch ist die Frage, ob die Streuung des Mittelwerts in großen Stichproben tatsächlich klein
wird. Damit hängt auch eng die Frage zusammen, ob der Mittelwert gegen einen Grenzwert strebt, der mit dem Parameter der
Grundgesamtheit übereinstimmt. Da Programmpakete nicht erkennen können, ob Abhängigkeiten in den Datenvorliegen, mussen
diese von vorneherein modelliert werden.Sind die Daten mit einem Trend behaftet, etwa ein exponentieller Zuwachs bei
Börsendaten oder dem Bruttoinlandsprodukt, so ist der Erwartungswert E[y(t)] selbst vom Zeitpunkt abhängig und man kann
nicht erwarten, daß der Mittelwert gegen eine Konstante strebt. Hier ist das Ziel, den Trend zu modellieren und mit
Hilfe geeigneter Mittelwerte die konstanten Parameter dieses Trends zu schätzen. Alternativ hierzu kann versucht werden,
mit Hilfe von Transformationen die Trends zu eliminieren, etwa durch Differenzbildung oder Berechnung prozentualer
änderungen (Renditen;''SAP fiel um 6.3 %''). Fluktuationen solcher transformierter Größen lassen sich leichter
behandeln, da ihre Erwartungswerte konstant sind (man spricht von stationären Prozessen). Ziel der Analyse ist, den
heutigen Wert der Zeitreihe als Funktionvergangener Werte darzustellen und deren Gewichte zu schätzen. Die dadurch nicht
erfaßten Einflüsse werden durch exogene Regressoren undstochastische Gleichungsfehler modelliert, deren Stärke
ebenfallsgeschätzt werden muss (ARMAX-Modelle). Auch Fluktuationen in denStreuungen, wie sie an Finanzmärkten auftreten,
werden modelliert (sog. ARCH-Modelle). Schließlich sind auch Modelle mit Meßfehlern(Zustandsraum-Modelle) von Interesse,
da hiermit auch nichtbeobachtbare Variablen (Faktoren) betrachtet werden können. Es handelt sich um eine sehr allgemeine
Modellklasse, die viele Teilmodelle als Spezialfälle beinhaltet.Der Kurs hat die Besonderheit, daß zusätzlich zum
gedruckten Lehrtext(bzw. Dateikurs auf CD) die Zeitreihen-Software EViews mitgeliefert wird. Anhand von
Beispieldatensätzen und Programmen wird der Student in die Lage versetzt, selbst die im Kurs abgedruckten Analysen
(Graphiken, Schätzungen, Simulationen etc.) durchzuführen. Da die Software menügesteuert und leicht bedienbar ist,
entsteht so die Möglichkeit, die Verfahren der Zeitreihenanalyse auf spielerische Art kennenzulernen.',301); 
insert into kurse(KURS_NR, SEMESTER ,NAME ,KURS_SWS,UEBUNGS_SWS, BESCHREIBUNG,LEHRGEBIET_ID )
values(00091,'SS 2011','Finanzierungs- und entscheidungstheoretische Grundlagen der
Betriebswirtschaftslehre',6,0,'Dieses Modul bietet eine Einführung in ausgewählte betriebswirtschaftliche
Fragestellungen. Im Vordergrund stehen dabei Fragen der Finanzierungstheorie, der Investitionstheorie, der
Entscheidungstheorie sowie deren Verknüpfungen. KE 1: Institutionelle Grundlagen Diese Kurseinheit beschäftigt sich
ausgehend von der Unternehmensgründung mit den für die Fragen der Rechtsformwahl wichtigen institutionellen und
rechtlichen Grundlagen aus betriebswirtschaftlicher Sicht, stellt die für die Wahl der Rechtsform entscheidenden
ökonomischen Problemfelder im Überblick dar und skizziert mit einem Schwerpunkt auf das gesetzliche Insolvenzverfahren
verschiedene Formen der Beendigung eines zunächst in einer bestimmten Rechtsform betriebenen Unternehmens. KE 2:
Grundlagen der Finanzierungstheorie Nach einer Abgrenzung unterschiedlicher Finanzierungsarten und eingehender
Behandlung elementarer Finanzierungsrisiken werden die wichtigsten Alternativen der Unternehmensfinanzierung
systematisiert und beschrieben. KE 3: Grundlagen der Investitionstheorie Die Kurseinheit beschäftigt sich mit
modelltheoretischen, entscheidungslogischen sowie finanzmathematischen Grundlagen der Investitionstheorie KE 4:
Investitionsentscheidungen bei Sicherheit In systematischer Form wird untersucht, welche investitionstheoretischen
Kennzahlen in unterschiedlichen Ausgangssituationen (projektindividuelle Entscheidungen, Auswahl-entscheidungen,
vollkommene Finanzmärkte und unvollkommene Finanzmärkte) bei Investitionsentscheidungen sinnvoll eingesetzt werden
können. KE 5: Entscheidungen unter Unsicherheit: Modelltheoretische Grundlagen Nach einer beispielhaften Verdeutlichung
von Entscheidungssituationen mit Ungewissheit, Entscheidungssituationen mit Risiko und spieltheoretische
Entscheidungssituationen werden die für die Behandlung dieser Entscheidungsprobleme notwendigen
entscheidungstheoretischen Grundbegriffe eingeführt. KE 6: Entscheidungen bei Risiko In dieser Kurseinheit werden
verschiedene Ansätze einer rationalen Entscheidungsfindung in Risikosituationen diskutiert. Dabei wird besonderes
Gewicht auf die Grundlagen portefeuilletheoretischer Überlegungen und die Verdeutlichung des Bernoulli-Prinzips gelegt.
KE 7: Entscheidungen bei Ungewissheit und spieltheoretische Entscheidungen In dieser (nicht prüfungsrelevanten
Kurseinheit) werden zunächst verschiedene Ansätze einer Entscheidungsfindung unter Ungewissheit diskutiert. Im Zuge
einer Rationalitätsanalyse dieser Entscheidungsregeln wird anschließend die Subjektivität des Rationalitätsbegriffs
herausgearbeitet. Anschließend werden die für das Verständnis spieltheoretischer Entscheidungsprobleme grundlegenden
Begriffe, Problemstrukturen und einige elementare Lösungsansätze verdeutlicht. KE 8: Glossare und Verzeichnisse In
dieser Kurseinheit findet sich ein modulbezogenes (Fachwörter-) Glossar sowie eine Zusammenstellung solcher Tabellen und
Verzeichnisse (z.B. finanzmathematische Tabellen oder Symbolverzeichnisse), deren Inhalte für das Studium zumindest
zweier Kurseinheiten relevant ist. Voraussetzungen für die Teilnahme: Keine speziellen Voraussetzungen. Grundkenntnisse
im Bereich Buchführung und Jahresabschluß, wie sie im Modul ?Externes Rechnungswesen? vermittelt werden, sind hilfreich,
können jedoch auch innerhalb des Moduls mittels Studium bereitgestellter Zusatzmaterialien erarbeitet werden.',302);
insert into kurse(KURS_NR, SEMESTER ,NAME ,KURS_SWS,UEBUNGS_SWS, BESCHREIBUNG,LEHRGEBIET_ID )
values(42180,'SS 2011','Dienstleistungsmanagement - Management von Dienstleistungsprozessen (Service Process
Management)',6,0,'Management von Dienstleistungsprozessen (200 h):
In diesem Lehrtext geht es um die Gestaltung und Steuerung von Dienstleistungsprozessen. Im Mittelpunkt des ersten Teils
stehen grundlegende Gestaltungsentscheidungen. Für diese Gestaltungsentscheidungen werden die Dienstleistungsprozesse
aus produktions- und austauschtheoretischer Sicht untersucht und entsprechende Anforderungen sowie
Gestaltungsmöglichkeiten an die angebotenen Dienstleistungsprozesse dargestellt. Dabei wird insbesondere auch die
Gestaltung der Interaktion mit dem Kunden betrachtet: Wie lassen sich Dienstleistungstransaktionen, -episoden und
-kontaktpunkte aus Sicht der Austauschtheorie, der Skripttheorie oder der Rollentheorie bestmöglich gestalten? Im
zweiten Teil steht dann der Steuerungsaspekt im Vordergrund der Betrachtungen. Aufbauend auf grundlegenden Überlegungen
zur Funktionsweise von sozialer Interaktion und Kommunikation sowie Konzepten der Wahrnehmung werden Möglichkeiten
sowohl der Lenkung von Interaktionen zwischen Dienstleistungsanbietern und -nachfragern als auch der Gestaltung der
Dienstleistungsumgebungen behandelt. Des Weiteren wird die Organisation des Dienstleistungsprozesses betrachtet. Hierbei
werden zum einen unterschiedliche Produktionsabläufe der Leistungserstellung und zum anderen unterschiedliche Formen der
Arbeitsteilung dargestellt. Grundsätzliche Fragen einer optimalen Kapazitätsplanung und -steuerung im Rahmen des
Leistungspotenzials bilden den Abschluss des Kurses.
Zeitmanagement von Dienstleistungen (100 h):
In diesem Lehrtext geht es um die zeitliche Gestaltung von Dienstleistungen. Zunächst werden die begrifflichen
Grundlagen zur Bedeutung der Zeit bei Dienstleistungen und die damit verbundenen Besonderheiten für ein Zeitmanagement
von Dienstleistungen erläutert. In einer kundenbezogenen Sichtweise werden ökonomische und psychologische Aspekte der
Zeit und in der sich anschließenden anbieterbezogenen Sichtweise Gesichtspunkte der Potential- bzw. Prozessgestaltung
dargestellt. Im nächsten Teil stehen die Aufgaben und die damit verbundenen Instrumente des Zeitmanagements im
Mittelpunkt der Darstellungen. Im Zentrum der kundenbezogenen Maßnahmen steht die Erfassung der Kundenwünsche bzw. der
Zeitwahrnehmung aus Kundensicht und die daraus resultierende Ausgestaltung des Marketing-Mix wie z.B. die
Preisdifferenzierung nach Zeitaspekten. Bei den sich anschließenden anbieterbezogenen Maßnahmen werden im Rahmen des
Potentialmanagements das Kapazitäts- und Yieldmanagement erklärt. Den Abschluss bilden Maßnahmen des Prozessmanagements
wie z.B. die Netzplantechnik oder das Blueprinting zur Planung und Steuerung von Prozessen.' ,303);
insert into kurse(KURS_NR, SEMESTER ,NAME ,KURS_SWS,UEBUNGS_SWS, BESCHREIBUNG,LEHRGEBIET_ID )
values(55100,'SS 2011', 'Propädeutikum, Basiskurs Strafrecht',5,0,'Das Studium beginnt mit einem multimedialen Programm,
das den gesamten Lehrstoff in einem illustrativen Überblick präsentiert. Auf diese Weise erhalten die Anfängerinnen und
Anfänger einen motivierenden Einstieg und lernen erste Leitbegriffe und Systematisierungen des Rechts im
Gesamtzusammenhang kennen.
Der Kurs Illustrative Einführung in das Recht ist mit den drei folgenden (Basiskurs in das Öffentliche Recht, das
Zivilrecht und das Strafrecht) vernetzt und eröffnet Pfade zu allen folgenden Modulen.',402);
insert into kurse(KURS_NR, SEMESTER ,NAME ,KURS_SWS,UEBUNGS_SWS, BESCHREIBUNG,LEHRGEBIET_ID )
values(55204,'SS 2011', 'Modul W 4 - Kollektives Arbeitsrecht',6,0,'Im Kurs stehen Fragen der betrieblichen und
unternehmerischen Mitbestimmung im Vordergrund.',403);
insert into kurse(KURS_NR, SEMESTER ,NAME ,KURS_SWS,UEBUNGS_SWS, BESCHREIBUNG,LEHRGEBIET_ID )
values(55108,'SS 2011','Modul 9-Bürgerliches Recht III',6,0,'Ziel dieses Moduls ist es, die Juristinnen und Juristen in
der Wirtschaft mit den später auf sie zukommenden Fragen des Kreditsicherungsrechts vertraut zu machen. Dazu sind
Grundkenntnisse im Sachenrecht und im Insolvenzrecht erforderlich. In dieser Zusammenfassung der ineinander greifenden
Rechtsmaterien findet das Recht der Kreditsicherung in der klassischen juristischen Ausbildung keinen Raum. Das Modul
hat den folgenden Aufbau: Das eigentliche Kreditsicherungsrecht wird durch die Grundlagen des Sachenrechts und den Blick
auf die Auswirkungen in der Insolvenz eingerahmt. ',404);

alter table mitarbeiter modify constraint MIT_LEHRGEBIET_FK enable;
alter table mitarbeiter modify constraint MIT_RAUM_FK enable;