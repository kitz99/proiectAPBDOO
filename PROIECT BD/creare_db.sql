CREATE TABLE tari (
  id_tara NUMBER NOT NULL PRIMARY KEY,
  nume VARCHAR2(30)
);

CREATE TABLE judete (
  id_judet NUMBER NOT NULL PRIMARY KEY,
  id_tara NUMBER,
  nume VARCHAR2(30),
CONSTRAINT fk_tara_judet FOREIGN KEY (id_tara) REFERENCES tari (id_tara)
);

CREATE TABLE locatie (
  id_locatie NUMBER NOT NULL PRIMARY KEY,
  id_judet NUMBER,
  adresa VARCHAR2(50),
CONSTRAINT fk_judet_locatie FOREIGN KEY (id_judet) REFERENCES judete (id_judet)
);

CREATE TABLE tip_clinici (
  id_tip_clinica NUMBER NOT NULL PRIMARY KEY,
  detalii_tip_clinica NVARCHAR2(1000),
  nume_tip_clinica VARCHAR2(30)
);

CREATE TABLE detalii_clinici (
  id_detalii_clinica NUMBER NOT NULL PRIMARY KEY,
  numere_Telefon VARCHAR2(30),
  program NVARCHAR2(1000),
  detalii_adresa NVARCHAR2(1000),
  detalii_organizare NVARCHAR2(1000),
  detalii_legale NVARCHAR2(1000)
);

CREATE TABLE clinici (
  id_clinica NUMBER NOT NULL PRIMARY KEY,
  id_locatie NUMBER,
  id_tip_clinica NUMBER,
  id_detalii_clinica NUMBER,
  nume VARCHAR2(30),
CONSTRAINT fk_locatie_clinica FOREIGN KEY (id_locatie) REFERENCES locatie(id_locatie),
CONSTRAINT fk_tip_clinica FOREIGN KEY (id_tip_clinica) REFERENCES tip_clinici (id_tip_clinica),
CONSTRAINT fk_detalii_clinica FOREIGN KEY (id_detalii_clinica) REFERENCES detalii_clinici (id_detalii_clinica)
);

CREATE TABLE pacienti (
  id_pacient NUMBER NOT NULL PRIMARY KEY,
  nume VARCHAR2(20),
  adresa VARCHAR2(50),
  detalii_pacient NVARCHAR2(1000)
);
        
CREATE TABLE internari (
  id_pacient NUMBER NOT NULL PRIMARY KEY,
  id_clinica NUMBER,
  numar_internare NUMBER,
  perioada VARCHAR2(25),
  detalii_avizare NVARCHAR2(1000),
  detalii_suplimnetare NVARCHAR2(1000),
CONSTRAINT fk_pacient_internat FOREIGN KEY (id_pacient) REFERENCES pacienti(id_pacient),
CONSTRAINT fk_clinica_internare FOREIGN KEY (id_clinica ) REFERENCES clinici(id_clinica)
);

