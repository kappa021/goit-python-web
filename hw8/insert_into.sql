USE university;

INSERT INTO groupss VALUES 
(1, 'БІ-91'), (2, 'ПЗС-12'), (3, 'РА-3');

INSERT INTO students VALUES 
(1, 'Андрей', 'Антонов', 1), (2, 'Александр', 'Каплун', 2), 
(3, 'Алла', 'Гоцуц',  1), (4, 'Анастасия', 'Добринская', 1),
(5, 'Максим', 'Задородный', 2), (6, 'Алексей', 'Белов', 1),
(7, 'Александра', 'Третьякова', 3), (8, 'Андрей', 'Тарасов', 1),
(9, 'Дмитрий', 'Шевченко', 3), (10, 'Илья', 'Золотухин', 3),
(11, 'Александр', 'Трифимчук', 2), (12, 'Анастасия', 'Антонова', 2),
(13, 'Николай', 'Усик', 3), (14, 'Антон', 'Нестеров', 1),
(15, 'Михаил', 'Чумак', 2), (16, 'Надежда', 'Александрова', 1),
(17, 'Любавь', 'Восточная', 2), (18, 'Никита', 'Ткаченко', 2),
(19, 'София', 'Богуславская', 1), (20, 'Даниил', 'Владимиров', 3),
(21, 'Богдан', 'Евыч',  1), (22, 'Валерий', 'Никифором', 2),
(23, 'Анатолий', 'Белашов', 3), (24, 'Светлана', 'Куницкая',  3),
(25, 'Елена', 'Панаско', 1), (26, 'Анатолий', 'Байрак', 3),
(27, 'Артём', 'Гембицкий', 3), (28, 'Евгений', 'Юрченко', 2),
(29, 'Светлана', 'Пономарёва', 3), (30, 'Михаил', 'Билак', 1);

INSERT INTO teachers VALUES 
(1, 'Валерия', 'Артюхова'), (2, 'Артём', 'Скуратовский'), 
(3, 'Дарья', 'Сываченко');

INSERT INTO subjects VALUES 
(1, 'Математика', 1), (2, 'Экономика', 1), 
(3, 'ООП', 3), (4, 'История', 3), (5, 'Arduino', 2);

INSERT INTO marks VALUES 
(1, 1, 60, '2022-04-03'), (1, 1, 70, '2022-05-01'), (1, 1, 80, '2022-05-18'), (1, 1, 90, '2022-07-22'), (1, 1, 95, '2022-04-03'),
(1, 1, 60, '2022-04-03'), (1, 2, 70, '2022-05-01'), (1, 2, 80, '2022-05-18'), (1, 2, 90, '2022-07-22'), (1, 3, 95, '2022-04-03'),
(1, 3, 60, '2022-04-03'), (1, 3, 70, '2022-05-01'), (1, 3, 80, '2022-05-18'), (1, 4, 90, '2022-07-22'), (1, 4, 95, '2022-04-03'),
(1, 4, 60, '2022-04-03'), (1, 4, 70, '2022-05-01'), (1, 5, 80, '2022-05-18'), (1, 5, 90, '2022-07-22'), (1, 5, 95, '2022-04-03'),
(2, 1, 60, '2022-04-03'), (2, 1, 70, '2022-05-01'), (2, 1, 80, '2022-05-18'), (2, 1, 90, '2022-07-22'), (2, 1, 95, '2022-04-03'),
(2, 1, 60, '2022-04-03'), (2, 2, 70, '2022-05-01'), (2, 2, 80, '2022-05-18'), (2, 2, 90, '2022-07-22'), (2, 3, 95, '2022-04-03'),
(2, 3, 60, '2022-04-03'), (2, 3, 70, '2022-05-01'), (2, 3, 80, '2022-05-18'), (2, 4, 90, '2022-07-22'), (2, 4, 95, '2022-04-03'),
(2, 4, 60, '2022-04-03'), (2, 4, 70, '2022-05-01'), (2, 5, 80, '2022-05-18'), (2, 5, 90, '2022-07-22'), (2, 5, 95, '2022-04-03'),
(3, 1, 60, '2022-04-03'), (3, 1, 70, '2022-05-01'), (3, 1, 80, '2022-05-18'), (3, 1, 90, '2022-07-22'), (3, 1, 95, '2022-04-03'),
(3, 1, 60, '2022-04-03'), (3, 2, 70, '2022-05-01'), (3, 2, 80, '2022-05-18'), (3, 2, 90, '2022-07-22'), (3, 3, 95, '2022-04-03'),
(3, 3, 60, '2022-04-03'), (3, 3, 70, '2022-05-01'), (3, 3, 80, '2022-05-18'), (3, 4, 90, '2022-07-22'), (3, 4, 95, '2022-04-03'),
(3, 4, 60, '2022-04-03'), (3, 4, 70, '2022-05-01'), (3, 5, 80, '2022-05-18'), (3, 5, 90, '2022-07-22'), (3, 5, 95, '2022-04-03'),
(4, 1, 60, '2022-04-03'), (4, 1, 70, '2022-05-01'), (4, 1, 80, '2022-05-18'), (4, 1, 90, '2022-07-22'), (4, 1, 95, '2022-04-03'),
(4, 1, 60, '2022-04-03'), (4, 2, 70, '2022-05-01'), (4, 2, 80, '2022-05-18'), (4, 2, 90, '2022-07-22'), (4, 3, 95, '2022-04-03'),
(4, 3, 60, '2022-04-03'), (4, 3, 70, '2022-05-01'), (4, 3, 80, '2022-05-18'), (4, 4, 90, '2022-07-22'), (4, 4, 95, '2022-04-03'),
(4, 4, 60, '2022-04-03'), (4, 4, 70, '2022-05-01'), (4, 5, 80, '2022-05-18'), (4, 5, 90, '2022-07-22'), (4, 5, 95, '2022-04-03'),
(5, 1, 60, '2022-04-03'), (5, 1, 70, '2022-05-01'), (5, 1, 80, '2022-05-18'), (5, 1, 90, '2022-07-22'), (5, 1, 95, '2022-04-03'),
(5, 1, 60, '2022-04-03'), (5, 2, 70, '2022-05-01'), (5, 2, 80, '2022-05-18'), (5, 2, 90, '2022-07-22'), (5, 3, 95, '2022-04-03'),
(5, 3, 60, '2022-04-03'), (5, 3, 70, '2022-05-01'), (5, 3, 80, '2022-05-18'), (5, 4, 90, '2022-07-22'), (5, 4, 95, '2022-04-03'),
(5, 4, 60, '2022-04-03'), (5, 4, 70, '2022-05-01'), (5, 5, 80, '2022-05-18'), (5, 5, 90, '2022-07-22'), (5, 5, 95, '2022-04-03'),
(6, 1, 60, '2022-04-03'), (6, 1, 70, '2022-05-01'), (6, 1, 80, '2022-05-18'), (6, 1, 90, '2022-07-22'), (6, 1, 95, '2022-04-03'),
(6, 1, 60, '2022-04-03'), (6, 2, 70, '2022-05-01'), (6, 2, 80, '2022-05-18'), (6, 2, 90, '2022-07-22'), (6, 3, 95, '2022-04-03'),
(6, 3, 60, '2022-04-03'), (6, 3, 70, '2022-05-01'), (6, 3, 80, '2022-05-18'), (6, 4, 90, '2022-07-22'), (6, 4, 95, '2022-04-03'),
(6, 4, 60, '2022-04-03'), (6, 4, 70, '2022-05-01'), (6, 5, 80, '2022-05-18'), (6, 5, 90, '2022-07-22'), (6, 5, 95, '2022-04-03'),
(7, 1, 60, '2022-04-03'), (7, 1, 70, '2022-05-01'), (7, 1, 80, '2022-05-18'), (7, 1, 90, '2022-07-22'), (7, 1, 95, '2022-04-03'),
(7, 1, 60, '2022-04-03'), (7, 2, 70, '2022-05-01'), (7, 2, 80, '2022-05-18'), (7, 2, 90, '2022-07-22'), (7, 3, 95, '2022-04-03'),
(7, 3, 60, '2022-04-03'), (7, 3, 70, '2022-05-01'), (7, 3, 80, '2022-05-18'), (7, 4, 90, '2022-07-22'), (7, 4, 95, '2022-04-03'),
(7, 4, 60, '2022-04-03'), (7, 4, 70, '2022-05-01'), (7, 5, 80, '2022-05-18'), (7, 5, 90, '2022-07-22'), (7, 5, 95, '2022-04-03'),
(8, 1, 60, '2022-04-03'), (8, 1, 70, '2022-05-01'), (8, 1, 80, '2022-05-18'), (8, 1, 90, '2022-07-22'), (8, 1, 95, '2022-04-03'),
(8, 1, 60, '2022-04-03'), (8, 2, 70, '2022-05-01'), (8, 2, 80, '2022-05-18'), (8, 2, 90, '2022-07-22'), (8, 3, 95, '2022-04-03'),
(8, 3, 60, '2022-04-03'), (8, 3, 70, '2022-05-01'), (8, 3, 80, '2022-05-18'), (8, 4, 90, '2022-07-22'), (8, 4, 95, '2022-04-03'),
(8, 4, 60, '2022-04-03'), (8, 4, 70, '2022-05-01'), (8, 5, 80, '2022-05-18'), (8, 5, 90, '2022-07-22'), (8, 5, 95, '2022-04-03'),
(9, 1, 60, '2022-04-03'), (9, 1, 70, '2022-05-01'), (9, 1, 80, '2022-05-18'), (9, 1, 90, '2022-07-22'), (9, 1, 95, '2022-04-03'),
(9, 1, 60, '2022-04-03'), (9, 2, 70, '2022-05-01'), (9, 2, 80, '2022-05-18'), (9, 2, 90, '2022-07-22'), (9, 3, 95, '2022-04-03'),
(9, 3, 60, '2022-04-03'), (9, 3, 70, '2022-05-01'), (9, 3, 80, '2022-05-18'), (9, 4, 90, '2022-07-22'), (9, 4, 95, '2022-04-03'),
(9, 4, 60, '2022-04-03'), (9, 4, 70, '2022-05-01'), (9, 5, 80, '2022-05-18'), (9, 5, 90, '2022-07-22'), (9, 5, 95, '2022-04-03'),
(10, 1, 60, '2022-04-03'), (10, 1, 70, '2022-05-01'), (10, 1, 80, '2022-05-18'), (10, 1, 90, '2022-07-22'), (10, 1, 95, '2022-04-03'),
(10, 1, 60, '2022-04-03'), (10, 2, 70, '2022-05-01'), (10, 2, 80, '2022-05-18'), (10, 2, 90, '2022-07-22'), (10, 3, 95, '2022-04-03'),
(10, 3, 60, '2022-04-03'), (10, 3, 70, '2022-05-01'), (10, 3, 80, '2022-05-18'), (10, 4, 90, '2022-07-22'), (10, 4, 95, '2022-04-03'),
(10, 4, 60, '2022-04-03'), (10, 4, 70, '2022-05-01'), (10, 5, 80, '2022-05-18'), (10, 5, 90, '2022-07-22'), (10, 5, 95, '2022-04-03'),
(11, 1, 60, '2022-04-03'), (11, 1, 70, '2022-05-01'), (11, 1, 80, '2022-05-18'), (11, 1, 90, '2022-07-22'), (11, 1, 95, '2022-04-03'),
(11, 1, 60, '2022-04-03'), (11, 2, 70, '2022-05-01'), (11, 2, 80, '2022-05-18'), (11, 2, 90, '2022-07-22'), (11, 3, 95, '2022-04-03'),
(11, 3, 60, '2022-04-03'), (11, 3, 70, '2022-05-01'), (11, 3, 80, '2022-05-18'), (11, 4, 90, '2022-07-22'), (11, 4, 95, '2022-04-03'),
(11, 4, 60, '2022-04-03'), (11, 4, 70, '2022-05-01'), (11, 5, 80, '2022-05-18'), (11, 5, 90, '2022-07-22'), (11, 5, 95, '2022-04-03'),
(12, 1, 60, '2022-04-03'), (12, 1, 70, '2022-05-01'), (12, 1, 80, '2022-05-18'), (12, 1, 90, '2022-07-22'), (12, 1, 95, '2022-04-03'),
(12, 1, 60, '2022-04-03'), (12, 2, 70, '2022-05-01'), (12, 2, 80, '2022-05-18'), (12, 2, 90, '2022-07-22'), (12, 3, 95, '2022-04-03'),
(12, 3, 60, '2022-04-03'), (12, 3, 70, '2022-05-01'), (12, 3, 80, '2022-05-18'), (12, 4, 90, '2022-07-22'), (12, 4, 95, '2022-04-03'),
(12, 4, 60, '2022-04-03'), (12, 4, 70, '2022-05-01'), (12, 5, 80, '2022-05-18'), (12, 5, 90, '2022-07-22'), (12, 5, 95, '2022-04-03'),
(13, 1, 60, '2022-04-03'), (13, 1, 70, '2022-05-01'), (13, 1, 80, '2022-05-18'), (13, 1, 90, '2022-07-22'), (13, 1, 95, '2022-04-03'),
(13, 1, 60, '2022-04-03'), (13, 2, 70, '2022-05-01'), (13, 2, 80, '2022-05-18'), (13, 2, 90, '2022-07-22'), (13, 3, 95, '2022-04-03'),
(13, 3, 60, '2022-04-03'), (13, 3, 70, '2022-05-01'), (13, 3, 80, '2022-05-18'), (13, 4, 90, '2022-07-22'), (13, 4, 95, '2022-04-03'),
(13, 4, 60, '2022-04-03'), (13, 4, 70, '2022-05-01'), (13, 5, 80, '2022-05-18'), (13, 5, 90, '2022-07-22'), (13, 5, 95, '2022-04-03'),
(14, 1, 60, '2022-04-03'), (14, 1, 70, '2022-05-01'), (14, 1, 80, '2022-05-18'), (14, 1, 90, '2022-07-22'), (14, 1, 95, '2022-04-03'),
(14, 1, 60, '2022-04-03'), (14, 2, 70, '2022-05-01'), (14, 2, 80, '2022-05-18'), (14, 2, 90, '2022-07-22'), (14, 3, 95, '2022-04-03'),
(14, 3, 60, '2022-04-03'), (14, 3, 70, '2022-05-01'), (14, 3, 80, '2022-05-18'), (14, 4, 90, '2022-07-22'), (14, 4, 95, '2022-04-03'),
(14, 4, 60, '2022-04-03'), (14, 4, 70, '2022-05-01'), (14, 5, 80, '2022-05-18'), (14, 5, 90, '2022-07-22'), (14, 5, 95, '2022-04-03'),
(15, 1, 60, '2022-04-03'), (15, 1, 70, '2022-05-01'), (15, 1, 80, '2022-05-18'), (15, 1, 90, '2022-07-22'), (15, 1, 95, '2022-04-03'),
(15, 1, 60, '2022-04-03'), (15, 2, 70, '2022-05-01'), (15, 2, 80, '2022-05-18'), (15, 2, 90, '2022-07-22'), (15, 3, 95, '2022-04-03'),
(15, 3, 60, '2022-04-03'), (15, 3, 70, '2022-05-01'), (15, 3, 80, '2022-05-18'), (15, 4, 90, '2022-07-22'), (15, 4, 95, '2022-04-03'),
(15, 4, 60, '2022-04-03'), (15, 4, 70, '2022-05-01'), (15, 5, 80, '2022-05-18'), (15, 5, 90, '2022-07-22'), (15, 5, 95, '2022-04-03'),
(16, 1, 60, '2022-04-03'), (16, 1, 70, '2022-05-01'), (16, 1, 80, '2022-05-18'), (16, 1, 90, '2022-07-22'), (16, 1, 95, '2022-04-03'),
(16, 1, 60, '2022-04-03'), (16, 2, 70, '2022-05-01'), (16, 2, 80, '2022-05-18'), (16, 2, 90, '2022-07-22'), (16, 3, 95, '2022-04-03'),
(16, 3, 60, '2022-04-03'), (16, 3, 70, '2022-05-01'), (16, 3, 80, '2022-05-18'), (16, 4, 90, '2022-07-22'), (16, 4, 95, '2022-04-03'),
(16, 4, 60, '2022-04-03'), (16, 4, 70, '2022-05-01'), (16, 5, 80, '2022-05-18'), (16, 5, 90, '2022-07-22'), (16, 5, 95, '2022-04-03'),
(17, 1, 60, '2022-04-03'), (17, 1, 70, '2022-05-01'), (17, 1, 80, '2022-05-18'), (17, 1, 90, '2022-07-22'), (17, 1, 95, '2022-04-03'),
(17, 1, 60, '2022-04-03'), (17, 2, 70, '2022-05-01'), (17, 2, 80, '2022-05-18'), (17, 2, 90, '2022-07-22'), (17, 3, 95, '2022-04-03'),
(17, 3, 60, '2022-04-03'), (17, 3, 70, '2022-05-01'), (17, 3, 80, '2022-05-18'), (17, 4, 90, '2022-07-22'), (17, 4, 95, '2022-04-03'),
(17, 4, 60, '2022-04-03'), (17, 4, 70, '2022-05-01'), (17, 5, 80, '2022-05-18'), (17, 5, 90, '2022-07-22'), (17, 5, 95, '2022-04-03'),
(18, 1, 60, '2022-04-03'), (18, 1, 70, '2022-05-01'), (18, 1, 80, '2022-05-18'), (18, 1, 90, '2022-07-22'), (18, 1, 95, '2022-04-03'),
(18, 1, 60, '2022-04-03'), (18, 2, 70, '2022-05-01'), (18, 2, 80, '2022-05-18'), (18, 2, 90, '2022-07-22'), (18, 3, 95, '2022-04-03'),
(18, 3, 60, '2022-04-03'), (18, 3, 70, '2022-05-01'), (18, 3, 80, '2022-05-18'), (18, 4, 90, '2022-07-22'), (18, 4, 95, '2022-04-03'),
(18, 4, 60, '2022-04-03'), (18, 4, 70, '2022-05-01'), (18, 5, 80, '2022-05-18'), (18, 5, 90, '2022-07-22'), (18, 5, 95, '2022-04-03'),
(19, 1, 60, '2022-04-03'), (19, 1, 70, '2022-05-01'), (19, 1, 80, '2022-05-19'), (19, 1, 90, '2022-07-22'), (19, 1, 95, '2022-04-03'),
(19, 1, 60, '2022-04-03'), (19, 2, 70, '2022-05-01'), (19, 2, 80, '2022-05-19'), (19, 2, 90, '2022-07-22'), (19, 3, 95, '2022-04-03'),
(19, 3, 60, '2022-04-03'), (19, 3, 70, '2022-05-01'), (19, 3, 80, '2022-05-19'), (19, 4, 90, '2022-07-22'), (19, 4, 95, '2022-04-03'),
(19, 4, 60, '2022-04-03'), (19, 4, 70, '2022-05-01'), (19, 5, 80, '2022-05-19'), (19, 5, 90, '2022-07-22'), (19, 5, 95, '2022-04-03'),
(20, 1, 60, '2022-04-03'), (20, 1, 70, '2022-05-01'), (20, 1, 80, '2022-05-20'), (20, 1, 90, '2022-07-22'), (20, 1, 95, '2022-04-03'),
(20, 1, 60, '2022-04-03'), (20, 2, 70, '2022-05-01'), (20, 2, 80, '2022-05-20'), (20, 2, 90, '2022-07-22'), (20, 3, 95, '2022-04-03'),
(20, 3, 60, '2022-04-03'), (20, 3, 70, '2022-05-01'), (20, 3, 80, '2022-05-20'), (20, 4, 90, '2022-07-22'), (20, 4, 95, '2022-04-03'),
(20, 4, 60, '2022-04-03'), (20, 4, 70, '2022-05-01'), (20, 5, 80, '2022-05-20'), (20, 5, 90, '2022-07-22'), (20, 5, 95, '2022-04-03'),
(21, 1, 60, '2022-04-03'), (21, 1, 70, '2022-05-01'), (21, 1, 80, '2022-05-20'), (21, 1, 90, '2022-07-22'), (21, 1, 95, '2022-04-03'),
(21, 1, 60, '2022-04-03'), (21, 2, 70, '2022-05-01'), (21, 2, 80, '2022-05-20'), (21, 2, 90, '2022-07-22'), (21, 3, 95, '2022-04-03'),
(21, 3, 60, '2022-04-03'), (21, 3, 70, '2022-05-01'), (21, 3, 80, '2022-05-20'), (21, 4, 90, '2022-07-22'), (21, 4, 95, '2022-04-03'),
(21, 4, 60, '2022-04-03'), (21, 4, 70, '2022-05-01'), (21, 5, 80, '2022-05-20'), (21, 5, 90, '2022-07-22'), (21, 5, 95, '2022-04-03'),
(22, 1, 60, '2022-04-03'), (22, 1, 70, '2022-05-01'), (22, 1, 80, '2022-05-20'), (22, 1, 90, '2022-07-22'), (22, 1, 95, '2022-04-03'),
(22, 1, 60, '2022-04-03'), (22, 2, 70, '2022-05-01'), (22, 2, 80, '2022-05-20'), (22, 2, 90, '2022-07-22'), (22, 3, 95, '2022-04-03'),
(22, 3, 60, '2022-04-03'), (22, 3, 70, '2022-05-01'), (22, 3, 80, '2022-05-20'), (22, 4, 90, '2022-07-22'), (22, 4, 95, '2022-04-03'),
(22, 4, 60, '2022-04-03'), (22, 4, 70, '2022-05-01'), (22, 5, 80, '2022-05-20'), (22, 5, 90, '2022-07-22'), (22, 5, 95, '2022-04-03'),
(23, 1, 60, '2022-04-03'), (23, 1, 70, '2022-05-01'), (23, 1, 80, '2022-05-20'), (23, 1, 90, '2022-07-22'), (23, 1, 95, '2022-04-03'),
(23, 1, 60, '2022-04-03'), (23, 2, 70, '2022-05-01'), (23, 2, 80, '2022-05-20'), (23, 2, 90, '2022-07-22'), (23, 3, 95, '2022-04-03'),
(23, 3, 60, '2022-04-03'), (23, 3, 70, '2022-05-01'), (23, 3, 80, '2022-05-20'), (23, 4, 90, '2022-07-22'), (23, 4, 95, '2022-04-03'),
(23, 4, 60, '2022-04-03'), (23, 4, 70, '2022-05-01'), (23, 5, 80, '2022-05-20'), (23, 5, 90, '2022-07-22'), (23, 5, 95, '2022-04-03'),
(24, 1, 60, '2022-04-03'), (24, 1, 70, '2022-05-01'), (24, 1, 80, '2022-05-20'), (24, 1, 90, '2022-07-22'), (24, 1, 95, '2022-04-03'),
(24, 1, 60, '2022-04-03'), (24, 2, 70, '2022-05-01'), (24, 2, 80, '2022-05-20'), (24, 2, 90, '2022-07-22'), (24, 3, 95, '2022-04-03'),
(24, 3, 60, '2022-04-03'), (24, 3, 70, '2022-05-01'), (24, 3, 80, '2022-05-20'), (24, 4, 90, '2022-07-22'), (24, 4, 95, '2022-04-03'),
(24, 4, 60, '2022-04-03'), (24, 4, 70, '2022-05-01'), (24, 5, 80, '2022-05-20'), (24, 5, 90, '2022-07-22'), (24, 5, 95, '2022-04-03'),
(25, 1, 60, '2022-04-03'), (25, 1, 70, '2022-05-01'), (25, 1, 80, '2022-05-20'), (25, 1, 90, '2022-07-22'), (25, 1, 95, '2022-04-03'),
(25, 1, 60, '2022-04-03'), (25, 2, 70, '2022-05-01'), (25, 2, 80, '2022-05-20'), (25, 2, 90, '2022-07-22'), (25, 3, 95, '2022-04-03'),
(25, 3, 60, '2022-04-03'), (25, 3, 70, '2022-05-01'), (25, 3, 80, '2022-05-20'), (25, 4, 90, '2022-07-22'), (25, 4, 95, '2022-04-03'),
(25, 4, 60, '2022-04-03'), (25, 4, 70, '2022-05-01'), (25, 5, 80, '2022-05-20'), (25, 5, 90, '2022-07-22'), (25, 5, 95, '2022-04-03'),
(26, 1, 60, '2022-04-03'), (26, 1, 70, '2022-05-01'), (26, 1, 80, '2022-05-20'), (26, 1, 90, '2022-07-22'), (26, 1, 95, '2022-04-03'),
(26, 1, 60, '2022-04-03'), (26, 2, 70, '2022-05-01'), (26, 2, 80, '2022-05-20'), (26, 2, 90, '2022-07-22'), (26, 3, 95, '2022-04-03'),
(26, 3, 60, '2022-04-03'), (26, 3, 70, '2022-05-01'), (26, 3, 80, '2022-05-20'), (26, 4, 90, '2022-07-22'), (26, 4, 95, '2022-04-03'),
(26, 4, 60, '2022-04-03'), (26, 4, 70, '2022-05-01'), (26, 5, 80, '2022-05-20'), (26, 5, 90, '2022-07-22'), (26, 5, 95, '2022-04-03'),
(27, 1, 60, '2022-04-03'), (27, 1, 70, '2022-05-01'), (27, 1, 80, '2022-05-20'), (27, 1, 90, '2022-07-22'), (27, 1, 95, '2022-04-03'),
(27, 1, 60, '2022-04-03'), (27, 2, 70, '2022-05-01'), (27, 2, 80, '2022-05-20'), (27, 2, 90, '2022-07-22'), (27, 3, 95, '2022-04-03'),
(27, 3, 60, '2022-04-03'), (27, 3, 70, '2022-05-01'), (27, 3, 80, '2022-05-20'), (27, 4, 90, '2022-07-22'), (27, 4, 95, '2022-04-03'),
(27, 4, 60, '2022-04-03'), (27, 4, 70, '2022-05-01'), (27, 5, 80, '2022-05-20'), (27, 5, 90, '2022-07-22'), (27, 5, 95, '2022-04-03'),
(28, 1, 60, '2022-04-03'), (28, 1, 70, '2022-05-01'), (28, 1, 80, '2022-05-20'), (28, 1, 90, '2022-07-22'), (28, 1, 95, '2022-04-03'),
(28, 1, 60, '2022-04-03'), (28, 2, 70, '2022-05-01'), (28, 2, 80, '2022-05-20'), (28, 2, 90, '2022-07-22'), (28, 3, 95, '2022-04-03'),
(28, 3, 60, '2022-04-03'), (28, 3, 70, '2022-05-01'), (28, 3, 80, '2022-05-20'), (28, 4, 90, '2022-07-22'), (28, 4, 95, '2022-04-03'),
(28, 4, 60, '2022-04-03'), (28, 4, 70, '2022-05-01'), (28, 5, 80, '2022-05-20'), (28, 5, 90, '2022-07-22'), (28, 5, 95, '2022-04-03'),
(29, 1, 60, '2022-04-03'), (29, 1, 70, '2022-05-01'), (29, 1, 80, '2022-05-20'), (29, 1, 90, '2022-07-22'), (29, 1, 95, '2022-04-03'),
(29, 1, 60, '2022-04-03'), (29, 2, 70, '2022-05-01'), (29, 2, 80, '2022-05-20'), (29, 2, 90, '2022-07-22'), (29, 3, 95, '2022-04-03'),
(29, 3, 60, '2022-04-03'), (29, 3, 70, '2022-05-01'), (29, 3, 80, '2022-05-20'), (29, 4, 90, '2022-07-22'), (29, 4, 95, '2022-04-03'),
(29, 4, 60, '2022-04-03'), (29, 4, 70, '2022-05-01'), (29, 5, 80, '2022-05-20'), (29, 5, 90, '2022-07-22'), (29, 5, 95, '2022-04-03'),
(30, 1, 60, '2022-04-03'), (30, 1, 70, '2022-05-01'), (30, 1, 80, '2022-05-20'), (30, 1, 90, '2022-07-22'), (30, 1, 95, '2022-04-03'),
(30, 1, 60, '2022-04-03'), (30, 2, 70, '2022-05-01'), (30, 2, 80, '2022-05-20'), (30, 2, 90, '2022-07-22'), (30, 3, 95, '2022-04-03'),
(30, 3, 60, '2022-04-03'), (30, 3, 70, '2022-05-01'), (30, 3, 80, '2022-05-20'), (30, 4, 90, '2022-07-22'), (30, 4, 95, '2022-04-03'),
(30, 4, 60, '2022-04-03'), (30, 4, 70, '2022-05-01'), (30, 5, 80, '2022-05-20'), (30, 5, 90, '2022-07-22'), (30, 5, 95, '2022-04-03');