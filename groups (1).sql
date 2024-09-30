USE [institut]
;
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID('INTO groups') AND type in ('U'))
ALTER TABLE INTO groups DROP CONSTRAINT IF EXISTS [FK_groups_faculties]
;
/****** Object:  Table INTO groups    Script Date: 22.09.2024 22:36:40 ******/
DROP TABLE IF EXISTS INTO groups
;
/****** Object:  Table INTO.[faculties]    Script Date: 22.09.2024 22:36:40 ******/
DROP TABLE IF EXISTS INTO.[faculties]
;
/****** Object:  Table INTO.[faculties]    Script Date: 22.09.2024 22:36:40 ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE INTO.[faculties](
	id [int] NOT NULL,
	titule [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_faculties] PRIMARY KEY CLUSTERED 
(
	id ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table INTO groups    Script Date: 22.09.2024 22:36:40 ******/
SET ANSI_NULLS ON
;
SET QUOTED_IDENTIFIER ON
;
CREATE TABLE INTO groups(
	id [int] IDENTITY(1,1) NOT NULL,
	titule [nvarchar](50) NOT NULL,
	[URL] [nvarchar](500) NULL,
	id_facultet [int] NOT NULL,
 CONSTRAINT [PK_groups] PRIMARY KEY CLUSTERED 
(
	id ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
;
INSERT INTO.[faculties] (id, titule) VALUES (1, 'Факультет мехатроники и автоматизации')
;
INSERT INTO.[faculties] (id, titule) VALUES (2, 'Факультет бизнеса')
;
INSERT INTO.[faculties] (id, titule) VALUES (3, 'Факультет автоматики и вычислительной техники')
;
INSERT INTO.[faculties] (id, titule) VALUES (4, 'Факультет радиотехники и электроники')
;
INSERT INTO.[faculties] (id, titule) VALUES (5, 'Механико-технологический факультет')
;
INSERT INTO.[faculties] (id, titule) VALUES (6, 'Факультет летательных аппаратов')
;
INSERT INTO.[faculties] (id, titule) VALUES (7, 'Факультет прикладной математики и информатики')
;
INSERT INTO.[faculties] (id, titule) VALUES (8, 'Физико-технический факультет')
;
INSERT INTO.[faculties] (id, titule) VALUES (9, 'Факультет энергетики')
;
INSERT INTO.[faculties] (id, titule) VALUES (10, 'Факультет гуманитарного образования')
;
INSERT INTO.[faculties] (id, titule) VALUES (13, 'Заочное отделение')
;
INSERT INTO.[faculties] (id, titule) VALUES (21, 'Институт социальных технологий')
;
SET IDENTITY_INSERT INTO groups ON 
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (1, 'АА-46',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (2, 'АА-47',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (3, 'АБс-424',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (4, 'АБс-425',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (5, 'АБс-426',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (6, 'АБс-427',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (7, 'АБ-420',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (8, 'АБ-421',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (9, 'АБ-422',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (10, 'АВТ-408',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (11, 'АВТ-409',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (12, 'АВТ-410',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (13, 'АВТ-412',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (14, 'АВТ-413',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (15, 'АВТ-414',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (16, 'АВТ-418',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (17, 'АВТ-419',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (18, 'АВТ-441',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (19, 'АВТ-442',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (20, 'АВТ-443',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (21, 'АИ-42',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (22, 'АО-41',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (23, 'АО-42',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (24, 'АП-426',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (25, 'АП-427',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (26, 'АТ-43',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (27, 'АТ-44',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (28, 'АТ-45',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (29, 'АА-36',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (30, 'АА-37',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (31, 'АБс-322',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (32, 'АБс-323',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (33, 'АБс-324',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (34, 'АБ-320',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (35, 'АБ-321',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (36, 'АВТ-308',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (37, 'АВТ-309',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (38, 'АВТ-310',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (39, 'АВТ-312',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (40, 'АВТ-313',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (41, 'АВТ-314',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (42, 'АВТ-318',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (43, 'АВТ-319',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (44, 'АВТ-341',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (45, 'АВТ-342',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (46, 'АВТ-343',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (47, 'АИ-32',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (48, 'АО-31',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (49, 'АО-32',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (50, 'АП-326',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (51, 'АП-327',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (52, 'АТ-33',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (53, 'АТ-34',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (54, 'АА-26',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (55, 'АА-27',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (56, 'АБс-222',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (57, 'АБс-223',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (58, 'АБ-220',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (59, 'АБ-221',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (60, 'АВТ-208',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (61, 'АВТ-209',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (62, 'АВТ-210',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (63, 'АВТ-213',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (64, 'АВТ-214',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (65, 'АВТ-218',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (66, 'АВТ-219',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (67, 'АВТ-241',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (68, 'АВТ-242',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (69, 'АВТ-243',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (70, 'АИ-22',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (71, 'АО-22',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (72, 'АП-226',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (73, 'АП-227',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (74, 'АТ-23',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (75, 'АТ-24',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (76, 'АА-16',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (77, 'АБс-123',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (78, 'АБ-120',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (79, 'АВТ-108',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (80, 'АВТ-109',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (81, 'АВТ-110',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (82, 'АВТ-113',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (83, 'АВТ-114',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (84, 'АВТ-118',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (85, 'АВТ-119',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (86, 'АВТ-141',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (87, 'АВТ-143',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (88, 'АИ-12',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (89, 'АО-12',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (90, 'АП-126',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (91, 'АТ-13',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (92, 'АТ-14',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (93, 'АБс-022',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (94, 'ААМ-24',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (95, 'АБМ-24',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (96, 'АЗМ-24',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (97, 'АИМ-24',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (98, 'АИСМ-24',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (99, 'АММ2-24',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (100, 'АММ-24',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (101, 'АОМ-24',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (102, 'АПИМ2-24',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (103, 'АПИМ-24',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (104, 'АПМ-24',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (105, 'АСМ2-24',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (106, 'АСМ-24',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (107, 'ВШ6-41',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (108, 'ААМ-23',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (109, 'АПИМ2-23',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (110, 'АПИМ-23',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (111, 'АПМ-23',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (112, 'АСМ-23',  3)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (113, 'SD-43',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (114, 'ГС-41',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (115, 'МА-41',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (116, 'МБ-41',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (117, 'МВ-41',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (118, 'МР-41',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (119, 'ПС-41',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (120, 'СА-41',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (121, 'СД-41',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (122, 'СЭ-41',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (123, 'С-41',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (124, 'С-42',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (125, 'ТС-41',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (126, 'ЭП-41',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (127, 'ГС-31',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (128, 'ГС-32',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (129, 'МА-31',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (130, 'МБ-31',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (131, 'МВ-31',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (132, 'МР-31',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (133, 'ПС-31',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (134, 'СА-31',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (135, 'СД-31',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (136, 'СЭ-31',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (137, 'С-31',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (138, 'С-32',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (139, 'ТС-31',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (140, 'ЭП-31',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (141, 'ГС-21',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (142, 'МА-21',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (143, 'МБ-21',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (144, 'МВ-21',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (145, 'МР-21',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (146, 'ПС-21',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (147, 'СА-21',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (148, 'СД-21',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (149, 'СЭ-21',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (150, 'С-21',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (151, 'С-22',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (152, 'ТС-21',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (153, 'ЭП-21',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (154, 'ГС-11',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (155, 'МА-11',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (156, 'МБ-11',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (157, 'МВ-11',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (158, 'МР-11',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (159, 'ПС-11',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (160, 'СА-11',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (161, 'СД-11',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (162, 'СЭ-11',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (163, 'С-11',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (164, 'С-12',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (165, 'ТС-11',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (166, 'ГС-01',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (167, 'МА-01',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (168, 'МВ-01',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (169, 'АУМ-41',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (170, 'ВШ4-41',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (171, 'ВШ5-41',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (172, 'ГСМ-41',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (173, 'МБМ-41',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (174, 'ПСМ-41',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (175, 'САМ-41',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (176, 'СМ-41',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (177, 'СЭМ-41',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (178, 'АУМ-31',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (179, 'ГСМ-31',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (180, 'ПСМ-31',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (181, 'САМ-31',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (182, 'СДМ-31',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (183, 'СМ-31',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (184, 'СЭМ-31',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (185, 'ТСМ-31',  6)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (186, 'КМ-124',  5)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (187, 'КП-124',  5)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (188, 'КХ-124',  5)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (189, 'ММ-124',  5)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (190, 'МтР-124',  5)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (191, 'НТ-124',  5)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (192, 'ТА-124',  5)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (193, 'ТМ-124',  5)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (194, 'ТХ-124',  5)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (195, 'ХТ-124',  5)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (196, 'ЦТК-124',  5)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (197, 'КМ-123',  5)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (198, 'КП-123',  5)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (199, 'ММ-123',  5)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (200, 'МтР-123',  5)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (201, 'НТ-123',  5)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (202, 'ТА-123',  5)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (203, 'ТМ-123',  5)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (204, 'ТХ-123',  5)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (205, 'ХТ-123',  5)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (206, 'ХТ-223',  5)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (207, 'ЦТК-123',  5)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (208, 'КМ-122',  5)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (209, 'КП-122',  5)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (210, 'ММ-122',  5)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (211, 'МП-122',  5)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (212, 'МтР-122',  5)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (213, 'НТ-122',  5)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (214, 'ТА-122',  5)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (215, 'ТМ-122',  5)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (216, 'ТХ-122',  5)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (217, 'ХТ-122',  5)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (218, 'ХТ-222',  5)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (219, 'КМ-121',  5)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (220, 'КП-121',  5)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (221, 'ММ-121',  5)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (222, 'МтР-121',  5)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (223, 'НТ-121',  5)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (224, 'ТА-121',  5)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (225, 'ТМ-121',  5)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (226, 'ТХ-121',  5)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (227, 'ХТ-121',  5)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (228, 'ХТ-221',  5)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (229, 'ВШ3-41',  5)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (230, 'Маг-124',  5)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (231, 'Маг-424',  5)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (232, 'Маг-624',  5)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (233, 'Маг-724',  5)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (234, 'Маг-123',  5)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (235, 'Маг-423',  5)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (236, 'Маг-523',  5)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (237, 'Маг-623',  5)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (238, 'Маг-723',  5)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (239, 'ЭМА-41',  1)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (240, 'ЭМА-42',  1)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (241, 'ЭМ-41',  1)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (242, 'ЭМ-42',  1)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (243, 'ЭМ-43',  1)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (244, 'ЭМ-45',  1)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (245, 'ЭМ-47',  1)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (246, 'ЭМА-31',  1)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (247, 'ЭМА-32',  1)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (248, 'ЭМ-31',  1)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (249, 'ЭМ-32',  1)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (250, 'ЭМ-33',  1)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (251, 'ЭМ-35',  1)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (252, 'ЭМ-37',  1)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (253, 'ЭМА-21',  1)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (254, 'ЭМА-23',  1)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (255, 'ЭМ-21',  1)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (256, 'ЭМ-22',  1)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (257, 'ЭМ-23',  1)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (258, 'ЭМ-25',  1)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (259, 'ЭМА-11',  1)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (260, 'ЭМА-12',  1)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (261, 'ЭМА-13',  1)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (262, 'ЭМ-11',  1)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (263, 'ЭМ-12',  1)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (264, 'ЭМ-13',  1)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (265, 'ЭМ-15',  1)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (266, 'ЭМ-17',  1)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (267, 'ЭММА-41',  1)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (268, 'ЭММА-42',  1)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (269, 'ЭММ-41',  1)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (270, 'ЭММ-42',  1)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (271, 'ЭММ-43',  1)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (272, 'ЭММ-44',  1)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (273, 'ЭММ-45',  1)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (274, 'ЭММ-47',  1)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (275, 'ЭММА-31',  1)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (276, 'ЭММ-31',  1)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (277, 'ЭММ-32',  1)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (278, 'ЭММ-33',  1)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (279, 'ЭММ-34',  1)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (280, 'ЭММ-37',  1)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (281, 'ПМИ-41',  7)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (282, 'ПМИ-42',  7)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (283, 'ПМИ-43',  7)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (284, 'ПМ-41',  7)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (285, 'ПМ-42',  7)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (286, 'ПМ-43',  7)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (287, 'ПМ-44',  7)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (288, 'ПМ-45',  7)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (289, 'ПМИ-31',  7)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (290, 'ПМИ-32',  7)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (291, 'ПМИ-33',  7)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (292, 'ПМ-31',  7)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (293, 'ПМ-32',  7)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (294, 'ПМ-33',  7)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (295, 'ПМ-34',  7)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (296, 'ПМ-35',  7)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (297, 'ПМИ-22',  7)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (298, 'ПМИ-23',  7)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (299, 'ПМ-21',  7)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (300, 'ПМ-23',  7)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (301, 'ПМ-24',  7)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (302, 'ПМ-25',  7)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (303, 'ПМИ-11',  7)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (304, 'ПМИ-12',  7)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (305, 'ПМ-12',  7)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (306, 'ПМ-13',  7)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (307, 'ПМ-14',  7)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (308, 'ПМ-15',  7)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (309, 'ПМИМ-41',  7)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (310, 'ПММ-41',  7)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (311, 'ПММ-42',  7)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (312, 'ПММ-43',  7)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (313, 'ПМИМ-31',  7)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (314, 'ПММ-31',  7)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (315, 'ПММ-32',  7)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (316, 'РКС10-41',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (317, 'РКС10-42',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (318, 'РК6-41',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (319, 'РМ2-41',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (320, 'РН1-41',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (321, 'РН1-42',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (322, 'РП4-41',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (323, 'РП4-42',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (324, 'РТВ14-41',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (325, 'РТВ14-42',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (326, 'РТС9-41',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (327, 'РТС9-42',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (328, 'РТ5-41',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (329, 'РЭ3-41',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (330, 'РЭ3-42',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (331, 'РКС10-31',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (332, 'РК6-31',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (333, 'РМ2-31',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (334, 'РН1-31',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (335, 'РН1-32',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (336, 'РП4-31',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (337, 'РП4-32',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (338, 'РТВ14-31',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (339, 'РТС9-31',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (340, 'РТ5-31',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (341, 'РЭ3-31',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (342, 'РЭ3-32',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (343, 'РКС10-21',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (344, 'РК6-21',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (345, 'РМС7-21',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (346, 'РНТ1-21',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (347, 'РП4-21',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (348, 'РП4-22',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (349, 'РТВ14-21',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (350, 'РТС9-21',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (351, 'РТ5-21',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (352, 'РЭН2-21',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (353, 'РЭ3-21',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (354, 'РЭ3-22',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (355, 'РКС10-11',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (356, 'РК6-11',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (357, 'РМС7-11',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (358, 'РНТ1-11',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (359, 'РП4-11',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (360, 'РТВ14-11',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (361, 'РТС9-11',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (362, 'РТ5-11',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (363, 'РЭН2-11',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (364, 'РЭ3-11',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (365, 'ВШ1-41',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (366, 'ВШ2-41',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (367, 'РКМ-41',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (368, 'РМС-41',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (369, 'РНМ-41',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (370, 'РТИМ-41',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (371, 'РТМ-41',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (372, 'РЭМ-41',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (373, 'РКМ-31',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (374, 'РМС-31',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (375, 'РНМ-31',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (376, 'РТИМ-31',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (377, 'РТМ-31',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (378, 'РЭМ-31',  4)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (379, 'ФГ-41',  8)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (380, 'ФК-41',  8)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (381, 'ФЛ-41',  8)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (382, 'ФТ-41',  8)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (383, 'ФТ-42',  8)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (384, 'ФФ-41',  8)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (385, 'ФГ-31',  8)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (386, 'ФК-31',  8)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (387, 'ФЛ-31',  8)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (388, 'ФТ-31',  8)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (389, 'ФТ-32',  8)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (390, 'ФФ-31',  8)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (391, 'ФГ-21',  8)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (392, 'ФК-21',  8)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (393, 'ФЛ-21',  8)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (394, 'ФТ-21',  8)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (395, 'ФФ-21',  8)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (396, 'ФГ-11',  8)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (397, 'ФК-11',  8)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (398, 'ФЛ-11',  8)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (399, 'ФТ-11',  8)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (400, 'ФФ-11',  8)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (401, 'ФГ-41М',  8)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (402, 'ФЛ-41М',  8)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (403, 'ФО-41М',  8)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (404, 'ФТ-41М',  8)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (405, 'ФТ-42М',  8)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (406, 'ФА-31М',  8)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (407, 'ФГ-31М',  8)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (408, 'ФЛ-31М',  8)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (409, 'ФО-31М',  8)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (410, 'ФТ-31М',  8)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (411, 'EN3-41',  9)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (412, 'ТЭ-41',  9)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (413, 'ЭнБ-41',  9)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (414, 'ЭН1-41',  9)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (415, 'ЭН1-42',  9)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (416, 'ЭН1-45',  9)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (417, 'ЭН2-41',  9)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (418, 'ЭН2-42',  9)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (419, 'ЭН2-44',  9)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (420, 'ЭН2-45',  9)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (421, 'ТЭ-31',  9)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (422, 'ЭнБ-31',  9)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (423, 'ЭН1-31',  9)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (424, 'ЭН1-32',  9)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (425, 'ЭН1-34',  9)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (426, 'ЭН1-35',  9)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (427, 'ЭН2-31',  9)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (428, 'ЭН2-32',  9)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (429, 'ЭН2-35',  9)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (430, 'ТЭ-21',  9)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (431, 'ЭнБ-21',  9)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (432, 'ЭН1-21',  9)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (433, 'ЭН1-22',  9)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (434, 'ЭН1-25',  9)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (435, 'ЭН2-21',  9)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (436, 'ЭН2-22',  9)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (437, 'ЭН2-25',  9)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (438, 'ТЭ-11',  9)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (439, 'ЭнБ-11',  9)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (440, 'ЭН1-11',  9)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (441, 'ЭН1-12',  9)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (442, 'ЭН1-13у',  9)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (443, 'ЭН1-15',  9)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (444, 'ЭН2-11',  9)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (445, 'ЭН2-15',  9)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (446, 'ТЭМ-41',  9)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (447, 'ЭнБМ-41',  9)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (448, 'ЭНМЭ-41',  9)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (449, 'ЭНМ1-41',  9)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (450, 'ЭНМ1-42',  9)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (451, 'ЭНМ1-44',  9)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (452, 'ЭНМ2-41',  9)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (453, 'ЭНМ2-43',  9)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (454, 'ТЭМ-31',  9)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (455, 'ЭнБМ-31',  9)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (456, 'ЭНМЭ-31',  9)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (457, 'ЭНМ1-31',  9)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (458, 'ЭНМ1-32',  9)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (459, 'ЭНМ1-34',  9)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (460, 'ЭНМ2-31',  9)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (461, 'ЭНМ2-33',  9)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (462, 'ФБИ-41',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (463, 'ФБИ-42',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (464, 'ФБИ-43',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (465, 'ФБИ-44',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (466, 'ФБМТ-41',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (467, 'ФБТХ-41',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (468, 'ФБТХ-42',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (469, 'ФБЭБС-41',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (470, 'ФБЭБС-42',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (471, 'ФБЭБС-43',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (472, 'ФБЭ-41',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (473, 'ФБЭ-42',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (474, 'ФБЭ-43',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (475, 'ФБЭ-44',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (476, 'ФБЭ-45',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (477, 'ФБ-41',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (478, 'ФБ-42',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (479, 'ФБ-43',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (480, 'ФБ-44',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (481, 'ФБ-45',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (482, 'ЭК-41',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (483, 'ЭК-42',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (484, 'ФБИ-31',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (485, 'ФБИ-32',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (486, 'ФБИ-33',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (487, 'ФБИ-34',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (488, 'ФБк-31',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (489, 'ФБМТ-31',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (490, 'ФБТХ-31',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (491, 'ФБТХ-32',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (492, 'ФБЭБС-31',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (493, 'ФБЭБС-32',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (494, 'ФБЭБС-33',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (495, 'ФБЭ-31',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (496, 'ФБЭ-32',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (497, 'ФБЭ-33',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (498, 'ФБЭ-34',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (499, 'ФБ-31',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (500, 'ФБ-32',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (501, 'ФБ-33',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (502, 'ФБ-34',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (503, 'ФБ-35',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (504, 'ЭК-31',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (505, 'ФБИ-21',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (506, 'ФБИ-22',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (507, 'ФБИ-23',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (508, 'ФБИ-24',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (509, 'ФБМТ-21',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (510, 'ФБТХ-21',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (511, 'ФБТХ-22',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (512, 'ФБЭБС-21',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (513, 'ФБЭБС-22',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (514, 'ФБЭБС-23',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (515, 'ФБЭ-21',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (516, 'ФБЭ-23',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (517, 'ФБЭ-24',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (518, 'ФБ-21',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (519, 'ФБ-22',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (520, 'ФБ-23',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (521, 'ФБ-24',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (522, 'ФБ-25',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (523, 'ФБ-26',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (524, 'ЭК-21',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (525, 'ФБИ-11',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (526, 'ФБИ-12',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (527, 'ФБИ-13',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (528, 'ФБИ-14',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (529, 'ФБМИП-11',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (530, 'ФБМТ-11',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (531, 'ФБТХ-11',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (532, 'ФБТХ-12',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (533, 'ФБЭБС-11',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (534, 'ФБЭБС-12',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (535, 'ФБЭБС-13',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (536, 'ФБЭ-11',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (537, 'ФБЭ-13',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (538, 'ФБЭ-14',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (539, 'ФБ-11',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (540, 'ФБ-12',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (541, 'ФБ-13',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (542, 'ФБ-14',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (543, 'ФБ-15',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (544, 'ФБ-16',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (545, 'ФБ-17',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (546, 'ЭК-11',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (547, 'ФБЭБС-01',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (548, 'ФБЭБС-02',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (549, 'дФБМ-44',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (550, 'дФБМ-45',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (551, 'дФБМ-46',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (552, 'дФБМ-47',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (553, 'ФБМ-41',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (554, 'ФБМ-42',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (555, 'ФБМ-43',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (556, 'ФБТХМ-41',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (557, 'ФБЭМ-45',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (558, 'ФБЭМ-46',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (559, 'дФБМ-34',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (560, 'дФБМ-35',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (561, 'дФБМ-36',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (562, 'ФБМ-31',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (563, 'ФБМ-32',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (564, 'ФБМ-33',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (565, 'ФБТХМ-31',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (566, 'ФБЭМ-35',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (567, 'ФБЭМ-36',  2)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (568, 'ИЯ-41',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (569, 'ИЯ-42',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (570, 'ИЯ-43',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (571, 'ИЯ-44',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (572, 'ИЯ-45',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (573, 'П-41',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (574, 'П-42',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (575, 'П-43',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (576, 'П-44',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (577, 'РГ-41',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (578, 'РГ-42',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (579, 'РГ-43',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (580, 'РГ-45',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (581, 'СЛ-41',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (582, 'СЛ-42',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (583, 'СЛ-43',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (584, 'Ф-41',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (585, 'Ф-42',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (586, 'Ф-43',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (587, 'Ф-44',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (588, 'ИЯ-31',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (589, 'ИЯ-32',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (590, 'ИЯ-33',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (591, 'ИЯ-34',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (592, 'ИЯ-35',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (593, 'П-31',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (594, 'П-32',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (595, 'П-33',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (596, 'П-35',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (597, 'РГ-31',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (598, 'РГ-32',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (599, 'РГ-33',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (600, 'РГ-35',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (601, 'СЛ-31',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (602, 'СЛ-32',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (603, 'СЛ-33',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (604, 'Ф-31',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (605, 'Ф-32',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (606, 'Ф-33',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (607, 'ИЯ-21',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (608, 'ИЯ-22',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (609, 'ИЯ-23',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (610, 'ИЯ-24',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (611, 'ИЯ-25',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (612, 'ИЯ-26',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (613, 'П-21',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (614, 'П-22',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (615, 'П-23',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (616, 'РГ-21',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (617, 'РГ-22',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (618, 'РГ-23',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (619, 'РГ-25',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (620, 'СЛ-21',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (621, 'СЛ-22',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (622, 'СЛ-23',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (623, 'Ф-21',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (624, 'Ф-23',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (625, 'ИЯ-11',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (626, 'ИЯ-12',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (627, 'ИЯ-13',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (628, 'ИЯ-15',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (629, 'ИЯ-16',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (630, 'П-11',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (631, 'П-12',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (632, 'П-13',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (633, 'РГ-11',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (634, 'РГ-13',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (635, 'РГ-15',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (636, 'СЛ-11',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (637, 'СЛ-12',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (638, 'СЛ-13',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (639, 'Ф-11',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (640, 'Ф-13',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (641, 'ПлМ-41',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (642, 'ПОм-41',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (643, 'ПОм-42',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (644, 'РГМ-41',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (645, 'СЛМ-41',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (646, 'ПлМ-31',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (647, 'ПЛМ-32',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (648, 'ПОм-31',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (649, 'ПОм-32',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (650, 'РГМ-31',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (651, 'СЛМ-31',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (652, 'Фм-31',  10)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (653, 'ДЭ-430',  13)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (654, 'ДЭ-460',  13)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (655, 'ЗФ-424',  13)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (656, 'ДЭ-330',  13)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (657, 'ДЭ-360',  13)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (658, 'ЗФ-324',  13)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (659, 'ДЭ-230',  13)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (660, 'ДЭ-260',  13)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (661, 'ЗФ-224',  13)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (662, 'ДГ-110',  13)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (663, 'ДЭ-130',  13)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (664, 'ДЭ-160',  13)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (665, 'ЗФ-124',  13)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (666, 'КН-41',  21)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (667, 'КН-42',  21)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (668, 'ПСФ-41',  21)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (669, 'ПСФ-42',  21)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (670, 'СР-41',  21)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (671, 'КН-31',  21)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (672, 'ПСФ-31',  21)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (673, 'ПСФ-32',  21)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (674, 'СР-31',  21)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (675, 'КН-21',  21)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (676, 'КН-22',  21)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (677, 'ПСФ-21',  21)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (678, 'ПСФ-22',  21)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (679, 'СР-21',  21)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (680, 'КН-11',  21)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (681, 'КН-12',  21)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (682, 'ПСФ-11',  21)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (683, 'ПСФ-12',  21)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (684, 'СР-11',  21)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (685, 'СРМ-41',  21)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (686, 'АФ-41',  21)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (687, 'Б-41',  21)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (688, 'Б-42',  21)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (689, 'Д-42',  21)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (690, 'Д-45',  21)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (691, 'ИП-41',  21)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (692, 'ИП-42',  21)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (693, 'ИП-43',  21)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (694, 'К-41',  21)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (695, 'П-41',  21)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (696, 'С-41',  21)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (697, 'АФ-31',  21)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (698, 'Б-31',  21)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (699, 'Б-32',  21)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (700, 'Д-32',  21)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (701, 'Д-35',  21)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (702, 'ИП-31',  21)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (703, 'ИП-32',  21)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (704, 'ИП-33',  21)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (705, 'ИП-34',  21)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (706, 'К-31',  21)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (707, 'П-31',  21)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (708, 'С-31',  21)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (709, 'АФ-21',  21)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (710, 'Б-21',  21)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (711, 'Б-22',  21)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (712, 'Д-25',  21)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (713, 'ИП-21',  21)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (714, 'ИП-22',  21)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (715, 'ИП-23',  21)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (716, 'ИС-22',  21)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (717, 'К-21',  21)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (718, 'П-21',  21)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (719, 'С-21',  21)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (720, 'АФ-11',  21)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (721, 'Д-12',  21)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (722, 'Д-15',  21)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (723, 'П-11',  21)
;
INSERT INTO groups (id, titule,  id_facultet) VALUES (724, 'С-11',  21)
;
SET IDENTITY_INSERT INTO groups OFF
;
ALTER TABLE INTO groups  WITH CHECK ADD  CONSTRAINT [FK_groups_faculties] FOREIGN KEY(id_facultet)
REFERENCES INTO.[faculties] (id)
;
ALTER TABLE INTO groups CHECK CONSTRAINT [FK_groups_faculties]
;
