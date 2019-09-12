#Creamos las tablas del modelo de LLAMADAS

# CREACIÓN DE TABLAS DEL MODELO DE LLAMADAS 
USE ODS;

#ALTER TABLE ODS_HC_CLIENTES DROP FOREIGN KEY fk_cl
SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS ODS_HC_LLAMADAS;

CREATE TABLE ODS_HC_LLAMADAS
(ID_LLAMADA INT NOT NULL AUTO_INCREMENT PRIMARY KEY
, ID_IVR INT
, TELEFONO_LLAMADA BIGINT(20)
/*, ID_CLIENTE INT*/
, FC_INICIO_LLAMADA DATETIME
, FC_FIN_LLAMADA DATETIME
, ID_DEPARTAMENTO_CC INT
, ID_FLG_TRANSFERIDO INT
, ID_AGENTE_CC INT
, FC_INSERT DATETIME
, FC_MODIFICACION DATETIME);



DROP TABLE IF EXISTS ODS_DM_DEPARTAMENTOS_CC;

CREATE TABLE ODS_DM_DEPARTAMENTOS_CC 
(ID_DEPARTAMENTO_CC INT NOT NULL AUTO_INCREMENT PRIMARY KEY
, DE_DEPARTAMENTO_CC VARCHAR(512)
, FC_INSERT DATETIME
, FC_MODIFICACION DATETIME);

DROP TABLE IF EXISTS ODS_DM_AGENTES_CC;

CREATE TABLE ODS_DM_AGENTES_CC
(ID_AGENTE_CC INT NOT NULL AUTO_INCREMENT PRIMARY KEY
, DE_AGENTE_CC VARCHAR(512)
, FC_INSERT DATETIME
, FC_MODIFICACION DATETIME);

DROP TABLE IF EXISTS ODS_DM_FLG_TRANSFER;
CREATE TABLE ODS_DM_FLG_TRANSFER
(ID_FLG_TRANSFERIDO INT NOT NULL AUTO_INCREMENT PRIMARY KEY
, DE_FLG_TRANSFERIDO VARCHAR(512)
, FC_INSERT DATETIME
, FC_MODIFICACION DATETIME);




