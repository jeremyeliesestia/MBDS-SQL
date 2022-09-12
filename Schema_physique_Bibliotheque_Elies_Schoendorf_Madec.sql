/*==============================================================*/
/*                   Projet MBDS ESTIA 2022                     */
/*                                                              */
/* Nom de SGBD :  ORACLE Version 10gR2                          */
/* Date de création :  05/09/2022 10:57:32                      */
/* Etudiants : ELIES, SCHOENDORF, MADEC                         */
/* Sujet :  Bibliotheque                                        */
/* Fichier SQL : Schema Physique                                */
/*==============================================================*/


alter table BIBLIOTHEQUE
   drop constraint FK_BIBLIOTH_CONTIENT_VILLE;

alter table CLIENT
   drop constraint FK_CLIENT_INSCRIT_BIBLIOTH;

alter table LIVRE
   drop constraint FK_LIVRE_ECRIT_AUTEUR;

alter table LIVRE
   drop constraint FK_LIVRE_EMPRUNTE_CLIENT;

alter table LIVRE
   drop constraint FK_LIVRE_STOCKE_BIBLIOTH;

drop table AUTEUR cascade constraints;

drop index CONTIENT_FK;

drop table BIBLIOTHEQUE cascade constraints;

drop index INSCRIT_FK;

drop table CLIENT cascade constraints;

drop index EMPRUNTE_FK;

drop index STOCKE_FK;

drop index ECRIT_FK;

drop table LIVRE cascade constraints;

drop table VILLE cascade constraints;

/*==============================================================*/
/* Table : AUTEUR                                               */
/*==============================================================*/
create table AUTEUR  (
   ID_AUTEUR            NUMBER(5)                       not null
      constraint CKC_ID_AUTEUR_AUTEUR check (ID_AUTEUR between 1 and 10000),
   NOM                  VARCHAR2(50)                    not null
      constraint CKC_NOM_AUTEUR check (NOM = upper(NOM)),
   PRENOM               VARCHAR2(50)                    not null
      constraint CKC_PRENOM_AUTEUR check (PRENOM = upper(PRENOM)),
   constraint PK_AUTEUR primary key (ID_AUTEUR)
);

/*==============================================================*/
/* Table : BIBLIOTHEQUE                                         */
/*==============================================================*/
create table BIBLIOTHEQUE  (
   ID_BIBLIOTHEQUE      NUMBER(5)                       not null
      constraint CKC_ID_BIBLIOTHEQUE_BIBLIOTH check (ID_BIBLIOTHEQUE between 1 and 10000),
   ID_VILLE             NUMBER(5)                       not null
      constraint CKC_ID_VILLE_BIBLIOTH check (ID_VILLE between 1 and 10000),
   ADRESSE              VARCHAR2(50)                    not null
      constraint CKC_ADRESSE_BIBLIOTH check (ADRESSE = upper(ADRESSE)),
   NOM_BIBLIOTHEQUE     VARCHAR2(50)                    not null
      constraint CKC_NOM_BIBLIOTHEQUE_BIBLIOTH check (NOM_BIBLIOTHEQUE = upper(NOM_BIBLIOTHEQUE)),
   HEURE_OUVERTURE      TIMESTAMP,
   HEURE_FERMETURE      TIMESTAMP,
   constraint PK_BIBLIOTHEQUE primary key (ID_BIBLIOTHEQUE)
);

/*==============================================================*/
/* Index : CONTIENT_FK                                          */
/*==============================================================*/
create index CONTIENT_FK on BIBLIOTHEQUE (
   ID_VILLE ASC
);

/*==============================================================*/
/* Table : CLIENT                                               */
/*==============================================================*/
create table CLIENT  (
   ID_CLIENT            NUMBER(5)                       not null
      constraint CKC_ID_CLIENT_CLIENT check (ID_CLIENT between 1 and 10000),
   ID_BIBLIOTHEQUE      NUMBER(5)                       not null
      constraint CKC_ID_BIBLIOTHEQUE_CLIENT check (ID_BIBLIOTHEQUE between 1 and 10000),
   NOM                  VARCHAR2(50)                    not null
      constraint CKC_NOM_CLIENT check (NOM = upper(NOM)),
   PRENOM               VARCHAR2(50)                    not null
      constraint CKC_PRENOM_CLIENT check (PRENOM = upper(PRENOM)),
   DATE_DE_NAISSANCE    DATE                            not null,
   DATE_INSCRIPTION      DATE                            not null,
   constraint PK_CLIENT primary key (ID_CLIENT)
);

/*==============================================================*/
/* Index : INSCRIT_FK                                           */
/*==============================================================*/
create index INSCRIT_FK on CLIENT (
   ID_BIBLIOTHEQUE ASC
);

/*==============================================================*/
/* Table : LIVRE                                                */
/*==============================================================*/
create table LIVRE  (
   ID_LIVRE             NUMBER(5)                       not null
      constraint CKC_ID_LIVRE_LIVRE check (ID_LIVRE between 1 and 10000),
   ID_AUTEUR            NUMBER(5)                       not null
      constraint CKC_ID_AUTEUR_LIVRE check (ID_AUTEUR between 1 and 10000),
   ID_BIBLIOTHEQUE      NUMBER(5)                       not null
      constraint CKC_ID_BIBLIOTHEQUE_LIVRE check (ID_BIBLIOTHEQUE between 1 and 10000),
   ID_CLIENT            NUMBER(5)                      
      constraint CKC_ID_CLIENT_LIVRE check (ID_CLIENT is null or (ID_CLIENT between 1 and 10000)),
   TITRE                VARCHAR2(50)                    not null
      constraint CKC_TITRE_LIVRE check (TITRE = upper(TITRE)),
   NB_PAGE              NUMBER(5)                       not null
      constraint CKC_NB_PAGE_LIVRE check (NB_PAGE between 1 and 10000),
   ETAT_STOCKAGE        VARCHAR2(50)                    not null
      constraint CKC_ETAT_STOCKAGE_LIVRE check (ETAT_STOCKAGE in ('EN STOCK','EMPRUNTE') and ETAT_STOCKAGE = upper(ETAT_STOCKAGE)),
   DATE_EMPRUNT         DATE,
   DATE_MAX_RENDU       DATE,
   ETAT_EMPRUNT         VARCHAR2(50)                   
      constraint CKC_ETAT_EMPRUNT_LIVRE check (ETAT_EMPRUNT is null or (ETAT_EMPRUNT in ('NON RENDU','RENDU') and ETAT_EMPRUNT = upper(ETAT_EMPRUNT))),
   constraint PK_LIVRE primary key (ID_LIVRE)
);

/*==============================================================*/
/* Index : ECRIT_FK                                             */
/*==============================================================*/
create index ECRIT_FK on LIVRE (
   ID_AUTEUR ASC
);

/*==============================================================*/
/* Index : STOCKE_FK                                            */
/*==============================================================*/
create index STOCKE_FK on LIVRE (
   ID_BIBLIOTHEQUE ASC
);

/*==============================================================*/
/* Index : EMPRUNTE_FK                                          */
/*==============================================================*/
create index EMPRUNTE_FK on LIVRE (
   ID_CLIENT ASC
);

/*==============================================================*/
/* Table : VILLE                                                */
/*==============================================================*/
create table VILLE  (
   ID_VILLE             NUMBER(5)                       not null
      constraint CKC_ID_VILLE_VILLE check (ID_VILLE between 1 and 10000),
   CODE_POSTAL          NUMBER(5)                       not null
      constraint CKC_CODE_POSTAL_VILLE check (CODE_POSTAL between 00000 and 99999),
   NOM                  VARCHAR2(50)                    not null
      constraint CKC_NOM_VILLE check (NOM = upper(NOM)),
   constraint PK_VILLE primary key (ID_VILLE)
);

alter table BIBLIOTHEQUE
   add constraint FK_BIBLIOTH_CONTIENT_VILLE foreign key (ID_VILLE)
      references VILLE (ID_VILLE);

alter table CLIENT
   add constraint FK_CLIENT_INSCRIT_BIBLIOTH foreign key (ID_BIBLIOTHEQUE)
      references BIBLIOTHEQUE (ID_BIBLIOTHEQUE);

alter table LIVRE
   add constraint FK_LIVRE_ECRIT_AUTEUR foreign key (ID_AUTEUR)
      references AUTEUR (ID_AUTEUR);

alter table LIVRE
   add constraint FK_LIVRE_EMPRUNTE_CLIENT foreign key (ID_CLIENT)
      references CLIENT (ID_CLIENT);

alter table LIVRE
   add constraint FK_LIVRE_STOCKE_BIBLIOTH foreign key (ID_BIBLIOTHEQUE)
      references BIBLIOTHEQUE (ID_BIBLIOTHEQUE);

