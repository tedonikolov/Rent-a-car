CREATE TABLE client (
    id_client INTEGER NOT NULL,
    name      VARCHAR2(45),
    address   VARCHAR2(75),
    telephone   INTEGER,
    PRIMARY KEY ( id_client )
);

INSERT INTO CLIENT (ID_CLIENT, NAME, ADDRESS, TELEPHONE) VALUES (1,'�������� ������', '�����, ��.����� ������� �31, ��.6, ��.12', '0881015691');
INSERT INTO CLIENT (ID_CLIENT, NAME, ADDRESS, TELEPHONE) VALUES (2,'��������� �������', '�����, ��.����� ����� �12, ��.2, ��.78', '0898976431');
INSERT INTO CLIENT (ID_CLIENT, NAME, ADDRESS, TELEPHONE) VALUES (3,'���� �����', '�����, ��.6-�� ��������� �1, ��.5, ��.1', '0881812476');
INSERT INTO CLIENT (ID_CLIENT, NAME, ADDRESS, TELEPHONE) VALUES (4,'���� �����', '�������, ��.���� ����� �5, ��.3, ��.25', '0884759780');
INSERT INTO CLIENT (ID_CLIENT, NAME, ADDRESS, TELEPHONE) VALUES (5,'����� ������', '�����, ��.����� �67, ��.43, ��.22', '0891547689');
INSERT INTO CLIENT (ID_CLIENT, NAME, ADDRESS, TELEPHONE) VALUES (6,'������ ��������', '�����, ��.����� �67, ��.43, ��.20', '0881043657');
INSERT INTO CLIENT (ID_CLIENT, NAME, ADDRESS, TELEPHONE) VALUES (7,'����� �������', '�����, ��.���� ���������� �10, ��.5, ��.97', '0885536981');
INSERT INTO CLIENT (ID_CLIENT, NAME, ADDRESS, TELEPHONE) VALUES (8,'������ ��������', '�����, ��.����� ���������� �123, ��.45, ��.123', '0890123546');
INSERT INTO CLIENT (ID_CLIENT, NAME, ADDRESS, TELEPHONE) VALUES (9,'���� ��������', '�����, ��.���� ����� �1, ��.12, ��.1', '0884618416');
INSERT INTO CLIENT (ID_CLIENT, NAME, ADDRESS, TELEPHONE) VALUES (10,'������ ��������', '�����, ��.������ �31, ��.41, ��.21', '0891436795');
INSERT INTO CLIENT (ID_CLIENT, NAME, ADDRESS, TELEPHONE) VALUES (11,'����� �����', '�����, ��.�������� �12, ��.1, ��.112', '0889871439');
INSERT INTO CLIENT (ID_CLIENT, NAME, ADDRESS, TELEPHONE) VALUES (12,'������ �������', '�����, ��.����� ������ �43, ��.10, ��.15', '0893549653');
INSERT INTO CLIENT (ID_CLIENT, NAME, ADDRESS, TELEPHONE) VALUES (13,'������ ������', '�����, ��.���������� �4, ��.55, ��.125', '0881122984');
INSERT INTO CLIENT (ID_CLIENT, NAME, ADDRESS, TELEPHONE) VALUES (14,'���� �������', '�����, ��.�������� �5, ��.11, ��.33', '0882785313');
INSERT INTO CLIENT (ID_CLIENT, NAME, ADDRESS, TELEPHONE) VALUES (15,'����� ���������', '�������, ��.����������� �11, ��.20, ��.78', '0881283500');
INSERT INTO CLIENT (ID_CLIENT, NAME, ADDRESS, TELEPHONE) VALUES (16,'���������� �����������', '�����, ��.����� �2, ��.2, ��.23', '0890874513');
INSERT INTO CLIENT (ID_CLIENT, NAME, ADDRESS, TELEPHONE) VALUES (17,'������� ������������', '�����, ��.����� �2, ��.2, ��.23', '0891234552');
INSERT INTO CLIENT (ID_CLIENT, NAME, ADDRESS, TELEPHONE) VALUES (18,'����� �������', '�����, ��.19-�� �������� �114, ��.14, ��.2', '0888235531');

UPDATE CLIENT
SET NAME='����� �������',ADDRESS='�����, ��.������ �5, ��.18, ��.22'
WHERE ID_CLIENT=7;

DELETE FROM CLIENT WHERE ID_CLIENT=6; 