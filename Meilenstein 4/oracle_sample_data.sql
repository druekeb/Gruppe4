INSERT INTO ROLLE (bezeichnung) VALUES ('Administrator');
INSERT INTO BENUTZER (name, password_hash, anzeigename, aktiv) VALUES
('administrator','042e80b9a44fb4c7603db0ae9d44bff9','Administrator',1);
INSERT INTO BENUTZER_ROLLE (rolle_id, benutzer_id) VALUES (1, 1);

INSERT INTO MENUBAUM (titel,gewicht) VALUES ('1',1);
INSERT INTO MENUBAUM (titel,gewicht) VALUES ('2',1);
INSERT INTO MENUBAUM (titel,gewicht,parent_menubaum_id) VALUES ('1.1',1,1);
INSERT INTO MENUBAUM (titel,gewicht,parent_menubaum_id) VALUES ('1.2',1,1);
INSERT INTO MENUBAUM (titel,gewicht,parent_menubaum_id) VALUES
('1.2.1',1,4);
INSERT INTO MENUBAUM (titel,gewicht,parent_menubaum_id) VALUES
('1.2.2',1,4);
INSERT INTO MENUBAUM (titel,gewicht,parent_menubaum_id) VALUES ('1.3',1,1);
INSERT INTO MENUBAUM (titel,gewicht,parent_menubaum_id) VALUES ('2.1',1,2);

INSERT INTO ARTIKEL (titel,typ) VALUES ('Erste Seite','SEITE');
INSERT INTO MENUARTIKEL (menubaum_id,artikel_id,gewicht) VALUES (4,1,1);
INSERT INTO ARTIKELVERSION (artikel_id,benutzer_id,erstellungsdatum,aenderungsdatum,markuptext,anzeigetext,status) VALUES (1,1,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,'Blubber [mitarbeiter:name]','Blubber Klaus','Entwurf');