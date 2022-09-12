/*==============================================================*/
/*                   Projet MBDS ESTIA 2022                     */
/*                                                              */
/* Nom de SGBD :  ORACLE Version 10gR2                          */
/* Date de création :  05/09/2022 10:57:32                      */
/* Etudiants : ELIES, SCHOENDORF, MADEC                         */
/* Sujet :  Bibliotheque                                        */
/* Fichier SQL : Insertion Lignes                               */
/*==============================================================*/

/*INSERTION VILLES*/
insert into  ville values(1, 34000, 'BORDEAUX');
insert into  ville values(2, 75000, 'PARIS');
insert into  ville values(3, 67000, 'STRASBOURG');
insert into  ville values(4, 69000, 'LYON');
insert into  ville values(5, 13000, 'MARSEILLE');
insert into  ville values(6, 31000, 'TOULOUSE');
insert into  ville values(7, 64100, 'BAYONNE');
insert into  ville values(8, 44000, 'NANTES');
insert into  ville values(9, 49000, 'ANGERS');
insert into  ville values(10, 59000, 'LILLES');

/*INSERTION AUTEURS*/
insert into auteur values(1,'DE PALET', 'MARIE' );
insert into auteur values(2,'SIGNOL', 'CHRISTIAN' );
insert into auteur values(3,'DELAGE', 'ALAIN' );
insert into auteur values(4,'RUFIN', 'JEAN-CHRISTOPHE' );
insert into auteur values(5,'BOUDOU', 'JOSETTE' );
insert into auteur values(6,'PARAILLOUS', 'ALAIN' );
insert into auteur values(7,'COSEM', 'MICHEL' );
insert into auteur values(8,'CORNAILLE', 'DIDIER' );
insert into auteur values(9,'VERNES', 'JULES' );
insert into auteur values(10,'LABORIE', 'CHRISTIAN' );

/*INSERTION BIBLIOTHEQUES*/
insert into  bibliotheque values(1, 1,'4 RUE DES MIMOSAS', 'BIBLIOTHEQUE CHARLES 2', '01-01-1900 08:00:00', '01-01-1900 16:00:00');
insert into  bibliotheque values(2, 1,'45 ALLEE DES TRIOMPHES', 'BIBLIOTHEQUE DE BORDEAUX 1', '01-01-1900 08:30:00', '01-01-1900 19:00:00');
insert into  bibliotheque values(3, 2,'8 BIS ROUTE DES CLOTURES', 'BIBLIOTHEQUE STANISLAS', '01-01-1900 08:00:00', '01-01-1900 17:00:00');
insert into  bibliotheque values(4, 2,'55 AVENUE CHARLES III', 'BIBLIOTHEQUE MOPOLO', '01-01-1900 08:00:00', '01-01-1900 17:00:00');
insert into  bibliotheque values(5, 2,'85 ROUTE DES LYLLAS', 'BIBLIOTHEQUE SAINT-MICHEL', '01-01-1900 08:00:00', '01-01-1900 17:30:00');
insert into  bibliotheque values(6, 3,'8 RUE DES PRIMEVERES', 'BIBLIOTHEQUE DE STRASBOURG', '01-01-1900 10:00:00', '01-01-1900 20:00:00');
insert into  bibliotheque values(7, 4,'12 AVENUE MICHAEL LOUIS', 'BIBLIOTHEQUE MJ', '01-01-1900 10:00:00', '01-01-1900 21:30:00');
insert into  bibliotheque values(8, 5,'2 BIS RUE DES MIMOSAS', 'BIBLIOTHEQUE EUROPEENNE', '01-01-1900 08:00:00', '01-01-1900 12:00:00');
insert into  bibliotheque values(9, 6,'15 AVENUE LOUIS VUITTON', 'BIBLIOTHEQUE DU LOUVRE', '01-01-1900 07:00:00', '01-01-1900 15:00:00');
insert into  bibliotheque values(10, 6,'27 ALLEE DES VIOLETTES', 'BIBLIOTHEQUE DES VIOLETTES', '01-01-1900 08:00:00', '01-01-1900 17:00:00');
insert into  bibliotheque values(11, 6,'14 RUE DE COLONELLE', 'BIBLIOTHEQUE CHARLES 3', '01-01-1900 08:00:00', '01-01-1900 17:00:00');
insert into  bibliotheque values(12, 6,'3 BIS ROUTE DE SAINT-LOUIS', 'BIBLIOTHEQUE DE LYON 2', '01-01-1900 08:00:00', '01-01-1900 17:00:00');
insert into  bibliotheque values(13, 7,'24 ALLEE DU CAPITOL', 'BIBLIOTHEQUE GRECO-ROMAINE', '01-01-1900 08:30:00', '01-01-1900 18:30:00');
insert into  bibliotheque values(14, 8,'6 ALLEE DES COQUELICOTS', 'BIBLIOTHEQUE ANGLAISE', '01-01-1900 09:00:00', '01-01-1900 19:00:00');
insert into  bibliotheque values(15, 8,'1 ROUTE DE LA SOIE', 'BIBLIOTHEQUE DES MARGUERITTES', '01-01-1900 08:00:00', '01-01-1900 14:00:00');
insert into  bibliotheque values(16, 9,'25 IMPASSE DES RIVIERES', 'BIBLIOTHEQUE DE TOULOUSE 2', '01-01-1900 08:00:00', '01-01-1900 14:00:00');
insert into  bibliotheque values(17, 10,'4 RUE DE LA GRANDE MOTTE', 'BIBLIOTHEQUE DE POUDLARD', '01-01-1900 08:00:00', '01-01-1900 20:45:00');
insert into  bibliotheque values(18, 10,'3 ALLEE DES ANGLAIS', 'BIBLIOTHEQUE AMERICAINE', '01-01-1900 10:00:00', '01-01-1900 22:30:00');
insert into  bibliotheque values(19, 10,'21 BIS ROUTE DE MUSEE', 'BIBLIOTHEQUE GREVAIN', '01-01-1900 12:00:00', '01-01-1900 23:00:00');
insert into  bibliotheque values(20, 10,'6 AVENUE GEORGE IV', 'BIBLIOTHEQUE ARCHEOLOGIQUE', '01-01-1900 12:00:00', '01-01-1900 23:00:00');

/*INSERTION CLIENTS*/
insert into client values(1,18,'BIRLEY','CINDIE','22/10/1971','16/2/2018');
insert into client values(2,14,'VOGEL','ETHE','24/5/1998','26/8/2021');
insert into client values(3,14,'TEFFT','CESAR','5/4/1986','29/1/2020');
insert into client values(4,4,'STILLER','VALENTINA','5/7/2008','3/6/2021');
insert into client values(5,20,'BRIDGE','BINNIE','2/12/2020','17/12/2021');
insert into client values(6,16,'CROTHER','GOOBER','8/3/2017','6/4/2019');
insert into client values(7,6,'GORSE','LEONORA','10/11/2003','8/10/2018');
insert into client values(8,18,'LANEGRAN','MICKIE','25/11/2020','8/2/2021');
insert into client values(9,20,'MACCUMESKEY','KARLYN','5/11/2018','2/9/2021');
insert into client values(10,13,'ANNING','ARLENE','22/9/1987','9/1/2021');
insert into client values(11,10,'MEBS','PHIP','15/2/2004','4/10/2021');
insert into client values(12,3,'CUNNEY','ELDREDGE','18/8/1982','7/9/2021');
insert into client values(13,12,'ELES','JOHANNES','19/7/2015','17/1/2018');
insert into client values(14,3,'PURRIER','SAYER','8/9/1972','16/8/2019');
insert into client values(15,6,'ALEAVY','SHEFFIELD','22/11/2008','17/2/2021');
insert into client values(16,1,'APFELMANN','VAL','15/5/1986','18/9/2021');
insert into client values(17,5,'ARCHBUTT','FREDERIK','24/11/1979','28/12/2018');
insert into client values(18,17,'WYMER','MARCILLE','31/7/1987','6/9/2019');
insert into client values(19,17,'SMELLIE','LEVI','28/6/1999','10/8/2020');
insert into client values(20,14,'GILPHILLAN','FONZIE','2/10/1990','20/11/2021');
insert into client values(21,2,'DOSDALE','JAMMIE','20/3/1979','13/3/2020');
insert into client values(22,18,'CASBOLT','LARAINE','3/10/1988','24/1/2020');
insert into client values(23,15,'LETCHFORD','VALERA','25/12/1996','21/9/2019');
insert into client values(24,5,'PINCHIN','THORSTEIN','21/5/2016','28/7/2018');
insert into client values(25,11,'MATTACKS','ROLLAND','13/11/1993','2/11/2021');
insert into client values(26,8,'LIVICK','RUPRECHT','15/8/1988','6/12/2021');
insert into client values(27,3,'AKSELL','WOODROW','22/2/2001','21/11/2019');
insert into client values(28,20,'BUYERS','SACHA','19/10/1991','13/1/2020');
insert into client values(29,18,'COOLBEAR','PHYLLIS','29/11/1970','12/6/2019');
insert into client values(30,12,'ASPLE','BRUCE','2/7/1971','11/8/2018');
insert into client values(31,20,'HURWORTH','CAL','14/11/1993','25/8/2021');
insert into client values(32,19,'CRAM','ZARAH','17/3/2014','14/1/2019');
insert into client values(33,11,'CHEATLE','KAITLYNN','3/4/2010','20/1/2018');
insert into client values(34,8,'YURSHEV','AILIS','3/5/2009','26/10/2020');
insert into client values(35,15,'VERISSIMO','DEDIE','11/9/1976','21/4/2020');
insert into client values(36,13,'HAIRSINE','MATTIAS','5/2/2000','29/3/2021');
insert into client values(37,9,'HUGHS','CAD','31/10/1995','1/2/2019');
insert into client values(38,5,'PAULTON','ANGELO','1/2/1972','29/12/2019');
insert into client values(39,19,'TIMMINS','ALASTAIR','26/7/2020','2/4/2020');
insert into client values(40,14,'STEWARD','ALEXANDRINA','18/8/2021','9/11/2018');
insert into client values(41,3,'MECHI','VILHELMINA','15/4/1977','18/5/2019');
insert into client values(42,5,'RANDELL','TERRYE','3/5/2014','30/6/2021');
insert into client values(43,6,'RUMBLE','COOPER','21/10/1989','20/8/2021');
insert into client values(44,5,'KAS','ANTON','5/12/2007','27/6/2018');
insert into client values(45,9,'VANYASHKIN','COBBY','3/10/2002','7/8/2018');
insert into client values(46,19,'BLACKBOROUGH','TEDI','3/10/1997','13/2/2019');
insert into client values(47,1,'STORMES','GLENNIS','1/3/1982','29/8/2019');
insert into client values(48,16,'SULLLY','CARRY','13/12/2017','24/8/2019');
insert into client values(49,1,'RENFIELD','LYDIE','13/11/2014','3/4/2021');
insert into client values(50,2,'MACADIE','LEOLA','22/12/1977','12/6/2021');
insert into client values(51,13,'BEECROFT','GOLDA','8/6/2014','24/6/2018');
insert into client values(52,12,'WHATHAM','CYNTHEA','16/8/1985','13/4/2020');
insert into client values(53,6,'ANWELL','WALY','18/7/2018','1/4/2021');
insert into client values(54,10,'KISTING','KARILYNN','2/6/1986','4/10/2020');
insert into client values(55,12,'POLLY','WILLY','15/4/1970','14/12/2020');
insert into client values(56,11,'MADGWICH','SHERIE','26/9/2003','10/12/2020');
insert into client values(57,20,'GILBANK','MUHAMMAD','26/2/2013','28/6/2019');
insert into client values(58,12,'TODEO','REBECKA','12/12/2012','6/6/2020');
insert into client values(59,14,'MATIGNON','BETTEANNE','9/5/1971','24/8/2019');
insert into client values(60,12,'PAULMANN','TRUDE','2/7/2003','11/2/2020');
insert into client values(61,3,'COURTIN','MICK','3/8/1978','12/9/2019');
insert into client values(62,5,'SALERY','AURELIA','7/8/1974','13/7/2019');
insert into client values(63,5,'SIMONONSKY','RAIMONDO','14/8/2020','26/9/2021');
insert into client values(64,20,'DICKE','KIMBLE','7/8/2009','2/2/2019');
insert into client values(65,20,'GAJOWNIK','LINELL','27/8/2020','29/4/2019');
insert into client values(66,16,'FRIEL','BROOKE','28/6/2020','20/9/2021');
insert into client values(67,20,'CASTLE','HARRIOTT','27/4/1992','30/11/2020');
insert into client values(68,20,'NEWISS','SHEFFIE','28/1/1971','7/12/2018');
insert into client values(69,18,'DUNGEY','WYNDHAM','26/8/1994','6/8/2019');
insert into client values(70,3,'THORN','LAZARE','28/6/1977','22/4/2020');
insert into client values(71,19,'DUMBAR','MARYJANE','4/1/1996','29/4/2020');
insert into client values(72,8,'LATHWOOD','LOUISETTE','8/5/1979','29/9/2018');
insert into client values(73,7,'CRATE','HESTIA','23/9/2017','2/1/2020');
insert into client values(74,19,'SHINN','JONAH','3/6/1984','20/3/2019');
insert into client values(75,9,'GORETTI','FARRAH','6/5/1994','20/3/2020');
insert into client values(76,5,'BEECKX','NELLIE','7/9/1985','5/4/2018');
insert into client values(77,16,'PRIN','BIDDY','5/12/1971','14/7/2018');
insert into client values(78,19,'SEADON','OREL','26/4/1970','30/7/2021');
insert into client values(79,2,'SAVORY','EASTER','21/10/2010','17/5/2018');
insert into client values(80,17,'LEITHGOE','CODEE','15/3/2006','14/4/2020');

/*INSERTION LIVRES*/
insert into livre values(1,1,1,NULL,'LES FEMMES DE CARDABELLE',255,'EN STOCK',NULL,NULL,'RENDU');
insert into livre values(2,1,2,NULL,'SIDONIE DES BASTIDES',379,'EN STOCK',NULL,NULL,'RENDU');
insert into livre values(3,2,3,NULL,'LE TEMPS DES AUBEPINES',379,'EN STOCK',NULL,NULL,'RENDU');
insert into livre values(4,2,4,4,'LE PRE D ANNA',758,'EMPRUNTE','01/09/2022','01/10/2022','NON RENDU');
insert into livre values(5,3,5,4,'LE SECRET DE MIETTE',230,'EMPRUNTE','01/09/2022','01/10/2022','NON RENDU');
insert into livre values(6,3,6,NULL,'LA DEMOISELLE DU LAC',847,'EN STOCK',NULL,NULL,'RENDU');
insert into livre values(7,4,7,38,'LES TERRES BLEUS',467,'EMPRUNTE','01/09/2022','01/10/2022','NON RENDU');
insert into livre values(8,4,8,38,'MARIE DES BREBIS',827,'EMPRUNTE','01/09/2022','01/10/2022','NON RENDU');
insert into livre values(9,5,9,NULL,'SE SOUVENIR DES JOURS DE FETE',171,'EN STOCK',NULL,NULL,'RENDU');
insert into livre values(10,5,10,44,'LA GRANDE ILE',653,'EMPRUNTE','01/09/2022','01/10/2022','NON RENDU');
insert into livre values(11,6,11,44,'NOS SI BEAU REVE DE JEUNESSE ',209,'EMPRUNTE','01/09/2022','01/10/2022','NON RENDU');
insert into livre values(12,6,12,NULL,'AU COEUR DES FORETS',404,'EN STOCK',NULL,NULL,'RENDU');
insert into livre values(13,7,13,62,'UNE ANNEE DE NEIGE',592,'EMPRUNTE','01/09/2022','01/10/2022','NON RENDU');
insert into livre values(14,7,14,62,'LES PRINTEMPS DE CE MONDE',742,'EMPRUNTE','01/09/2022','01/10/2022','NON RENDU');
insert into livre values(15,8,15,NULL,'LES NOELS BLANCS',571,'EN STOCK',NULL,NULL,'RENDU');
insert into livre values(16,8,16,NULL,'LES VIGES DE SAINTE COLOMBE',760,'EN STOCK',NULL,NULL,'RENDU');
insert into livre values(17,9,17,75,'LE TOUR DU MONDE EN 80 JOURS',23,'EMPRUNTE','01/09/2022','01/10/2022','NON RENDU');
insert into livre values(18,9,18,75,'AU CENTRE DE LA TERRE',51,'EMPRUNTE','01/09/2022','01/10/2022','NON RENDU');
insert into livre values(19,10,19,NULL,'L ETRANGER',503,'EN STOCK',NULL,NULL,'RENDU');
insert into livre values(20,10,20,NULL,'LE COLLIER ROUGE',131,'EN STOCK',NULL,NULL,'RENDU');
