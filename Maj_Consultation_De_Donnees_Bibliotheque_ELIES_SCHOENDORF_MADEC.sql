/*==============================================================*/
/*                   Projet MBDS ESTIA 2022                     */
/*                                                              */
/* Nom de SGBD :  ORACLE Version 10gR2                          */
/* Date de création :  05/09/2022 10:57:32                      */
/* Etudiants : ELIES, SCHOENDORF, MADEC                         */
/* Sujet :  Bibliotheque                                        */
/* Fichier SQL : MAJ Consultations                               */
/*==============================================================*/




/*REQUETES DE SUPRRESION ------------------------------------------------------------------------------------------------------------------------------------ */
delete from livre where TITRE = 'LES FEMMES DE CARDABELLE'; 

update livre set id_auteur = 2 where id_auteur = 1; 
delete from auteur where ID_AUTEUR = 1; 

update bibliotheque set id_ville = 8 where id_ville = 7; 
delete from ville where nom = 'BAYONNE'; 

update client set id_bibliotheque = 2 where id_bibliotheque = 1; 
delete from bibliotheque where id_bibliotheque = 1; 

delete from client where nom='BIRLEY' and prenom='CINDIE'; 



/*REQUETES DE MISE A JOUR (1 table) ------------------------------------------------------------------------------------------------------------------------------------*/

update livre set titre = 'LA GRANDE ILE AUX OISEAUX' where titre = 'LA GRANDE ILE'; 

update auteur set nom = 'SIGNOLA' where nom = 'SIGNOL'; /


/*REQUETES DE MISE A JOUR (2 tables) ------------------------------------------------------------------------------------------------------------------------------------*/

update ville set code_postal = '33000' where id_ville = (select id_ville from bibliotheque where nom_bibliotheque = 'BIBLIOTHEQUE DE BORDEAUX 1'); 

update client set id_bibliotheque = 2 where id_bibliotheque = (select id_bibliotheque from bibliotheque where nom_bibliotheque = 'BIBLIOTHEQUE DE STRASBOURG'); 


/*REQUETES DE MISE A JOUR (3 tables) ------------------------------------------------------------------------------------------------------------------------------------*/

update livre 
    set id_bibliotheque = (
    select id_bibliotheque from bibliotheque where nom_bibliotheque = 'BIBLIOTHEQUE DE BORDEAUX 1') where id_bibliotheque = (
    select id_bibliotheque from bibliotheque where id_ville = (
    select id_ville from ville where nom = 'MARSEILLE'));
    
update livre 
    set etat_emprunt = 'RENDU', id_client = null, etat_stockage = 'EN STOCK', date_emprunt = null, date_max_rendu = null where id_client = (
    select id_client from client where id_bibliotheque = (
    select id_bibliotheque from bibliotheque where nom_bibliotheque = 'BIBLIOTHEQUE MOPOLO'));

/*REQUETES DE CONSULTATION (1 tables) ------------------------------------------------------------------------------------------------------------------------------------*/

select id_client from livre group by id_client;

select nom, prenom from auteur order by nom;

select nom_bibliotheque, adresse from bibliotheque;

select nom, prenom from client;

select nom from ville;
    
    
/*REQUETES DE CONSULTATION (2 tables) ------------------------------------------------------------------------------------------------------------------------------------*/
    
select etat_emprunt, SUM(nb_page) as total_page_a_lire, client.nom, client.prenom from livre 
    left outer join client on livre.id_client = client.id_client
    where etat_stockage = 'EMPRUNTE'
    group by etat_emprunt, client.nom, client.prenom
    order by client.nom;

select titre, etat_emprunt, client.nom, client.prenom from livre inner join client on livre.id_client = client.id_client;

select nom, prenom, date_inscription, bibliotheque.nom_bibliotheque from client inner join bibliotheque on client.id_bibliotheque = bibliotheque.id_bibliotheque;

select nom_bibliotheque, adresse, ville.code_postal ,ville.nom from bibliotheque inner join ville on bibliotheque.id_ville = ville.id_ville;

select titre, auteur.nom, auteur.prenom from livre inner join auteur on livre.id_auteur = auteur.id_auteur;


/*REQUETES DE CONSULTATION (3 tables) ------------------------------------------------------------------------------------------------------------------------------------*/

select nom_bibliotheque, adresse, ville.code_postal, ville.nom as ville, COUNT(client.nom) as NB_clients from bibliotheque 
    left outer join ville on bibliotheque.id_ville = ville.id_ville
    left outer join client on bibliotheque.id_bibliotheque = client.id_bibliotheque
    group by bibliotheque.nom_bibliotheque, bibliotheque.adresse, ville.code_postal, ville.nom
    order by nom_bibliotheque;

select titre, client.nom, client.prenom from livre 
    inner join client on livre.id_client = client.id_client
    where client.id_bibliotheque = (select id_bibliotheque from bibliotheque 
    where nom_bibliotheque = 'BIBLIOTHEQUE SAINT-MICHEL');

select nom, prenom, livre.titre from auteur 
    inner join livre on livre.id_auteur = auteur.id_auteur
    where livre.id_bibliotheque = (select id_bibliotheque from bibliotheque 
    where bibliotheque.nom_bibliotheque = 'BIBLIOTHEQUE MOPOLO');
    
select nom, prenom, bibliotheque.nom_bibliotheque,bibliotheque.adresse from client 
    inner join bibliotheque on client.id_bibliotheque = bibliotheque.id_bibliotheque
    where client.date_inscription > '01/01/2020';

select nom, code_postal, bibliotheque.nom_bibliotheque, livre.titre from ville
    inner join bibliotheque on bibliotheque.id_ville = ville.id_ville
    inner join livre on livre.id_bibliotheque = bibliotheque.id_bibliotheque
    order by nom;
