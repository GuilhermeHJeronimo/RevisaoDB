CREATE TABLE PAIS  (ID_PAIS NUMBER PRIMARY KEY, 
                            NOME VARCHAR2(30));
                            
CREATE TABLE ESTADO (ID_ESTADO NUMBER PRIMARY KEY,
                        NOME VARCHAR2(30),
                        ID_PAIS NUMBER);
                        
 CREATE TABLE CIDADE (ID_CIDADE NUMBER PRIMARY KEY,
                        NOME VARCHAR2(30),
                        ID_PAIS NUMBER,
                        ID_ESTADO NUMBER);
                        
 CREATE TABLE BAIRRO (ID_BAIRRO NUMBER PRIMARY KEY,
                        NOME VARCHAR2(30),
                        ID_PAIS NUMBER,
                        ID_ESTADO NUMBER,
                        ID_CIDADE NUMBER);

ALTER TABLE ESTADO ADD CONSTRAINT FK_ESTADO FOREIGN KEY (ID_PAIS)
REFERENCES PAIS(ID_PAIS);
