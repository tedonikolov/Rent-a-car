CREATE TABLE client (
    id_client INTEGER NOT NULL,
    name      VARCHAR2(45),
    address   VARCHAR2(75),
    telephone   INTEGER,
    PRIMARY KEY ( id_client )
);

INSERT INTO CLIENT (ID_CLIENT, NAME, ADDRESS, TELEPHONE) VALUES (1,'Валентин Петров', 'София, ул.Васил Априлов №31, бл.6, ап.12', '0881015691');
INSERT INTO CLIENT (ID_CLIENT, NAME, ADDRESS, TELEPHONE) VALUES (2,'Анастасия Яворова', 'София, ул.Алена Китка №12, бл.2, ап.78', '0898976431');
INSERT INTO CLIENT (ID_CLIENT, NAME, ADDRESS, TELEPHONE) VALUES (3,'Иван Пенев', 'София, ул.6-ти септември №1, бл.5, ап.1', '0881812476');
INSERT INTO CLIENT (ID_CLIENT, NAME, ADDRESS, TELEPHONE) VALUES (4,'Илия Илиев', 'Пловдив, ул.Иван Вазов №5, бл.3, ап.25', '0884759780');
INSERT INTO CLIENT (ID_CLIENT, NAME, ADDRESS, TELEPHONE) VALUES (5,'Ангел Иванов', 'София, ул.Искър №67, бл.43, ап.22', '0891547689');
INSERT INTO CLIENT (ID_CLIENT, NAME, ADDRESS, TELEPHONE) VALUES (6,'Калоян Герганов', 'София, ул.Искър №67, бл.43, ап.20', '0881043657');
INSERT INTO CLIENT (ID_CLIENT, NAME, ADDRESS, TELEPHONE) VALUES (7,'Китка Узонова', 'Видин, ул.Княз Александър №10, бл.5, ап.97', '0885536981');
INSERT INTO CLIENT (ID_CLIENT, NAME, ADDRESS, TELEPHONE) VALUES (8,'Калина Ивайлова', 'София, ул.Братя Миладинови №123, бл.45, ап.123', '0890123546');
INSERT INTO CLIENT (ID_CLIENT, NAME, ADDRESS, TELEPHONE) VALUES (9,'Софи Маринова', 'София, ул.Баба Тонка №1, бл.12, ап.1', '0884618416');
INSERT INTO CLIENT (ID_CLIENT, NAME, ADDRESS, TELEPHONE) VALUES (10,'Георги Петканов', 'Варна, ул.Струга №31, бл.41, ап.21', '0891436795');
INSERT INTO CLIENT (ID_CLIENT, NAME, ADDRESS, TELEPHONE) VALUES (11,'Тодор Попов', 'София, ул.Батовска №12, бл.1, ап.112', '0889871439');
INSERT INTO CLIENT (ID_CLIENT, NAME, ADDRESS, TELEPHONE) VALUES (12,'Светла Иванова', 'София, ул.Малка Поляна №43, бл.10, ап.15', '0893549653');
INSERT INTO CLIENT (ID_CLIENT, NAME, ADDRESS, TELEPHONE) VALUES (13,'Георги Иванов', 'София, ул.Опълченска №4, бл.55, ап.125', '0881122984');
INSERT INTO CLIENT (ID_CLIENT, NAME, ADDRESS, TELEPHONE) VALUES (14,'Иван Ивайлов', 'София, ул.Солунска №5, бл.11, ап.33', '0882785313');
INSERT INTO CLIENT (ID_CLIENT, NAME, ADDRESS, TELEPHONE) VALUES (15,'Анита Георгиева', 'Пловдив, ул.Проектанска №11, бл.20, ап.78', '0881283500');
INSERT INTO CLIENT (ID_CLIENT, NAME, ADDRESS, TELEPHONE) VALUES (16,'Александър Александров', 'София, ул.Китка №2, бл.2, ап.23', '0890874513');
INSERT INTO CLIENT (ID_CLIENT, NAME, ADDRESS, TELEPHONE) VALUES (17,'Антония Александрова', 'София, ул.Китка №2, бл.2, ап.23', '0891234552');
INSERT INTO CLIENT (ID_CLIENT, NAME, ADDRESS, TELEPHONE) VALUES (18,'Петър Манолов', 'София, ул.19-ти февруари №114, бл.14, ап.2', '0888235531');

UPDATE CLIENT
SET NAME='Китка Петрова',ADDRESS='Враца, ул.Изгрев №5, бл.18, ап.22'
WHERE ID_CLIENT=7;

DELETE FROM CLIENT WHERE ID_CLIENT=6; 