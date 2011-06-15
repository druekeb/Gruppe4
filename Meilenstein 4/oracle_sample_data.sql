INSERT INTO ROLLE (bezeichnung) VALUES ('Administrator');
INSERT INTO BENUTZER (name, password_hash, anzeigename, aktiv) VALUES
('administrator','042e80b9a44fb4c7603db0ae9d44bff9','Administrator',1);
INSERT INTO BENUTZER_ROLLE (rolle_id, benutzer_id) VALUES (1, 1);

-- truncate menubaum table
ALTER TABLE MENUBAUM DISABLE CONSTRAINTS MENUBAUM_CON;
ALTER TABLE ROLLE DISABLE CONSTRAINTS ROLLE_FK;
ALTER TABLE MENUARTIKEL DISABLE CONSTRAINTS MENUARTIKEL_FK;
TRUNCATE TABLE MENUBAUM;
ALTER TABLE MENUBAUM ENABLE CONSTRAINTS MENUBAUM_CON;
ALTER TABLE ROLLE ENABLE CONSTRAINTS ROLLE_FK;
ALTER TABLE MENUARTIKEL ENABLE CONSTRAINTS MENUARTIKEL_FK;

-- set up variables
col menubaumid_home for a30 new_value menubaum_home_id
col menubaumid1 for a30 new_value menubaum_id1
col menubaumid2 for a30 new_value menubaum_id2

-- insert new row
INSERT INTO MENUBAUM (titel,gewicht) VALUES ('Home',1);
-- save new id into variable
SELECT MENUBAUM_SEQ.CURRVAL as menubaumid_home from dual;


-- Level 1 Menuitem
INSERT INTO MENUBAUM (titel,gewicht,parent_menubaum_id) VALUES ('Uni Profil',1,&menubaum_home_id);
-- save new id into variable
SELECT MENUBAUM_SEQ.CURRVAL as menubaumid1 from dual;
  INSERT INTO MENUBAUM (titel,gewicht,parent_menubaum_id) VALUES ('Hochschulprofil',1,&menubaum_id1);
  INSERT INTO MENUBAUM (titel,gewicht,parent_menubaum_id) VALUES ('Fakultäten',2,&menubaum_id1);
  INSERT INTO MENUBAUM (titel,gewicht,parent_menubaum_id) VALUES ('Einrichtungen',3,&menubaum_id1);
  -- This one gets some subitems
  INSERT INTO MENUBAUM (titel,gewicht,parent_menubaum_id) VALUES ('Internationales',4,&menubaum_id1);
  -- save new id into variable
  SELECT MENUBAUM_SEQ.CURRVAL as menubaumid2 from dual;
  -- Level 3 Menuitems
        INSERT INTO MENUBAUM (titel,gewicht,parent_menubaum_id) VALUES ('Studienzentren im Ausland',1,&menubaum_id2);
        INSERT INTO MENUBAUM (titel,gewicht,parent_menubaum_id) VALUES ('Hochschulkooperationen',2,&menubaum_id2);
        INSERT INTO MENUBAUM (titel,gewicht,parent_menubaum_id) VALUES ('Studierende im Ausland',3,&menubaum_id2);
        INSERT INTO MENUBAUM (titel,gewicht,parent_menubaum_id) VALUES ('Förderprogramme',4,&menubaum_id2);
        INSERT INTO MENUBAUM (titel,gewicht,parent_menubaum_id) VALUES ('Infobörse',5,&menubaum_id2);
        INSERT INTO MENUBAUM (titel,gewicht,parent_menubaum_id) VALUES ('Ansprechpersonen',6,&menubaum_id2);

    INSERT INTO MENUBAUM (titel,gewicht,parent_menubaum_id) VALUES ('Aktuelles',5,&menubaum_id1);
    INSERT INTO MENUBAUM (titel,gewicht,parent_menubaum_id) VALUES ('Veranstaltungen',6,&menubaum_id1);
    INSERT INTO MENUBAUM (titel,gewicht,parent_menubaum_id) VALUES ('FernUni-News',7,&menubaum_id1);
    INSERT INTO MENUBAUM (titel,gewicht,parent_menubaum_id) VALUES ('Stimmen zur FernUni',8,&menubaum_id1);
    INSERT INTO MENUBAUM (titel,gewicht,parent_menubaum_id) VALUES ('FernUni Perspektive',9,&menubaum_id1);
    INSERT INTO MENUBAUM (titel,gewicht,parent_menubaum_id) VALUES ('Kommunikation',10,&menubaum_id1);

-- Level 1 Menuitem
INSERT INTO MENUBAUM (titel,gewicht,parent_menubaum_id) VALUES ('Studium',2,&menubaum_home_id);
-- save new id into variable
SELECT MENUBAUM_SEQ.CURRVAL as menubaumid1 from dual;
    -- This one gets some subitems
    INSERT INTO MENUBAUM (titel,gewicht,parent_menubaum_id) VALUES ('Fernstudium',1,&menubaum_id1);
    -- save new id into variable
    SELECT MENUBAUM_SEQ.CURRVAL as menubaumid2 from dual;
        INSERT INTO MENUBAUM (titel,gewicht,parent_menubaum_id) VALUES ('Fernstudieren',4,&menubaum_id2);
        INSERT INTO MENUBAUM (titel,gewicht,parent_menubaum_id) VALUES ('Wegweiser',5,&menubaum_id2);
        INSERT INTO MENUBAUM (titel,gewicht,parent_menubaum_id) VALUES ('Infomaterial',6,&menubaum_id2);

    -- This one gets some subitems
    INSERT INTO MENUBAUM (titel,gewicht,parent_menubaum_id) VALUES ('Studienangebot',2,&menubaum_id1);
    -- save new id into variable
    SELECT MENUBAUM_SEQ.CURRVAL as menubaumid2 from dual;
        INSERT INTO MENUBAUM (titel,gewicht,parent_menubaum_id) VALUES ('Bachelorstudiengänge',1,&menubaum_id2);
        INSERT INTO MENUBAUM (titel,gewicht,parent_menubaum_id) VALUES ('Masterstudiengänge',2,&menubaum_id2);
        INSERT INTO MENUBAUM (titel,gewicht,parent_menubaum_id) VALUES ('Weiterbildung',3,&menubaum_id2);
        INSERT INTO MENUBAUM (titel,gewicht,parent_menubaum_id) VALUES ('Akademiestudium',4,&menubaum_id2);
        INSERT INTO MENUBAUM (titel,gewicht,parent_menubaum_id) VALUES ('Auslaufende Studiengänge',5,&menubaum_id2);
        INSERT INTO MENUBAUM (titel,gewicht,parent_menubaum_id) VALUES ('Studienvorbereitende Kurse',6,&menubaum_id2);

    INSERT INTO MENUBAUM (titel,gewicht,parent_menubaum_id) VALUES ('Einschreibung, Rückmeldung',3,&menubaum_id1);
    INSERT INTO MENUBAUM (titel,gewicht,parent_menubaum_id) VALUES ('Gebühren',4,&menubaum_id1);

-- Level 1 Menuitem
INSERT INTO MENUBAUM (titel,gewicht,parent_menubaum_id) VALUES ('Forschung',3,&menubaum_home_id);
-- save new id into variable
SELECT MENUBAUM_SEQ.CURRVAL as menubaumid1 from dual;
    INSERT INTO MENUBAUM (titel,gewicht,parent_menubaum_id) VALUES ('Schwerpunkte',1,&menubaum_id1);
    INSERT INTO MENUBAUM (titel,gewicht,parent_menubaum_id) VALUES ('Einrichtungen',2,&menubaum_id1);
    INSERT INTO MENUBAUM (titel,gewicht,parent_menubaum_id) VALUES ('Forschungsförderung',3,&menubaum_id1);
    INSERT INTO MENUBAUM (titel,gewicht,parent_menubaum_id) VALUES ('Wissenstransfer',4,&menubaum_id1);
    INSERT INTO MENUBAUM (titel,gewicht,parent_menubaum_id) VALUES ('Berichte',5,&menubaum_id1);

-- Level 1 Menuitem
INSERT INTO MENUBAUM (titel,gewicht,parent_menubaum_id) VALUES ('Uni Intern',4,&menubaum_home_id);
-- save new id into variable
SELECT MENUBAUM_SEQ.CURRVAL as menubaumid1 from dual;
    INSERT INTO MENUBAUM (titel,gewicht,parent_menubaum_id) VALUES ('Aktuelles',1,&menubaum_id1);
    INSERT INTO MENUBAUM (titel,gewicht,parent_menubaum_id) VALUES ('Finanzen und Beschaffung',2,&menubaum_id1);
    INSERT INTO MENUBAUM (titel,gewicht,parent_menubaum_id) VALUES ('Lehren und Forschen',3,&menubaum_id1);
    INSERT INTO MENUBAUM (titel,gewicht,parent_menubaum_id) VALUES ('Neu an der FernUni?',4,&menubaum_id1);
    INSERT INTO MENUBAUM (titel,gewicht,parent_menubaum_id) VALUES ('Organisation / Ansprechpersonen',5,&menubaum_id1);
    INSERT INTO MENUBAUM (titel,gewicht,parent_menubaum_id) VALUES ('Personal- und Arbeitsthemen',6,&menubaum_id1);
    INSERT INTO MENUBAUM (titel,gewicht,parent_menubaum_id) VALUES ('Rund um den Arbeitsplatz',7,&menubaum_id1);
    INSERT INTO MENUBAUM (titel,gewicht,parent_menubaum_id) VALUES ('Statistiken',8,&menubaum_id1);
    INSERT INTO MENUBAUM (titel,gewicht,parent_menubaum_id) VALUES ('Stellenangebote',9,&menubaum_id1);
    INSERT INTO MENUBAUM (titel,gewicht,parent_menubaum_id) VALUES ('Und sonst?',10,&menubaum_id1);
    
COMMIT;

INSERT INTO ARTIKEL (titel,typ) VALUES ('Erste Seite','SEITE');
INSERT INTO MENUARTIKEL (menubaum_id,artikel_id,gewicht) VALUES (4,1,1);
INSERT INTO ARTIKELVERSION (artikel_id,benutzer_id,erstellungsdatum,aenderungsdatum,markuptext,anzeigetext,status) VALUES (1,1,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,'Blubber [mitarbeiter:name]','Blubber Klaus','Archiv');

INSERT INTO ARTIKELVERSION (artikel_id,benutzer_id,erstellungsdatum,aenderungsdatum,markuptext,anzeigetext,status) VALUES (1,1,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,'Blubber [mitarbeiter:name]','Blubber Klaus','Archiv');

INSERT INTO ARTIKELVERSION (artikel_id,benutzer_id,erstellungsdatum,aenderungsdatum,markuptext,anzeigetext,status) VALUES (1,1,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,'Blubber [mitarbeiter:name]','Blubber Klaus','Entwurf');

INSERT INTO ARTIKELVERSION (artikel_id,benutzer_id,erstellungsdatum,aenderungsdatum,markuptext,anzeigetext,status) VALUES (1,1,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,'Blubber [mitarbeiter:name]','Blubber Klaus','Veroeffentlicht');

INSERT INTO ARTIKEL (titel,typ) VALUES ('Zweite Seite','SEITE');
INSERT INTO MENUARTIKEL (menubaum_id,artikel_id,gewicht) VALUES (4,2,1);
INSERT INTO ARTIKELVERSION (artikel_id,benutzer_id,erstellungsdatum,aenderungsdatum,markuptext,anzeigetext,status) VALUES (4,1,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,'Blubber [mitarbeiter:name]','Blubber Klaus','Entwurf');

INSERT INTO ARTIKELVERSION (artikel_id,benutzer_id,erstellungsdatum,aenderungsdatum,markuptext,anzeigetext,status) VALUES (4,1,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,'Blubber [mitarbeiter:name]','Blubber Klaus','Veroeffentlicht');