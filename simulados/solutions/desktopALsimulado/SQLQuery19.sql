USE [LyonCompanyDB]
GO
/****** Object:  Table [dbo].[Alunos]    Script Date: 02/02/2024 15:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alunos](
	[ID] [int] NOT NULL,
	[Aluno] [nvarchar](255) NULL,
	[Matricula] [nvarchar](255) NULL,
	[Periodo] [int] NULL,
	[Turma] [nvarchar](255) NULL,
	[CPF] [nvarchar](255) NULL,
 CONSTRAINT [PK_Alunos] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cursos]    Script Date: 02/02/2024 15:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cursos](
	[ID] [int] NOT NULL,
	[Nome] [nvarchar](255) NULL,
 CONSTRAINT [PK_Cursos] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Disciplina]    Script Date: 02/02/2024 15:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Disciplina](
	[ID] [int] NOT NULL,
	[Nome] [nvarchar](255) NULL,
	[Curso] [nvarchar](255) NULL,
	[Periodo] [int] NULL,
 CONSTRAINT [PK_Disciplina] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Docentes]    Script Date: 02/02/2024 15:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Docentes](
	[ID] [int] NOT NULL,
	[Nome] [nvarchar](255) NULL,
	[CPF] [nvarchar](255) NULL,
	[Matricula] [nvarchar](255) NULL,
	[F5] [nvarchar](255) NULL,
	[F6] [nvarchar](255) NULL,
	[F7] [nvarchar](255) NULL,
	[F8] [nvarchar](255) NULL,
	[F9] [nvarchar](255) NULL,
 CONSTRAINT [PK_Docentes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Questões]    Script Date: 02/02/2024 15:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Questões](
	[ID] [int] NOT NULL,
	[Codigo] [nvarchar](255) NULL,
	[Enunciado] [nvarchar](max) NULL,
	[Alternativa 1] [nvarchar](255) NULL,
	[Alternativa 2] [nvarchar](255) NULL,
	[Alternativa 3] [nvarchar](255) NULL,
	[Alternativa 4] [nvarchar](255) NULL,
	[Gabarito] [int] NULL,
	[Curso] [nvarchar](255) NULL,
	[Disciplina] [nvarchar](255) NULL,
	[Docente] [nvarchar](255) NULL,
 CONSTRAINT [PK_Questões] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ranking]    Script Date: 02/02/2024 15:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ranking](
	[Posicao] [int] NOT NULL,
	[Aluno] [int] NULL,
	[Pontuacao] [int] NULL,
	[Vitorias] [int] NULL,
	[Derrotas] [int] NULL,
	[Descartes] [int] NULL,
	[Acertos] [int] NULL,
	[Erros] [int] NULL,
 CONSTRAINT [PK_Ranking] PRIMARY KEY CLUSTERED 
(
	[Posicao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Turmas]    Script Date: 02/02/2024 15:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Turmas](
	[ID] [int] NOT NULL,
	[Codigo Turma] [nvarchar](255) NULL,
	[Curso] [nvarchar](255) NULL,
	[Ano] [int] NULL,
	[Semestre] [int] NULL,
	[F6] [nvarchar](255) NULL,
	[F7] [nvarchar](255) NULL,
	[F8] [nvarchar](255) NULL,
	[F9] [nvarchar](255) NULL,
	[F10] [nvarchar](255) NULL,
 CONSTRAINT [PK_Turmas] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Alunos] ([ID], [Aluno], [Matricula], [Periodo], [Turma], [CPF]) VALUES (1, N'Domakh', N'akh34430', 2, N'BEB1970', N'50779018258')
GO
INSERT [dbo].[Alunos] ([ID], [Aluno], [Matricula], [Periodo], [Turma], [CPF]) VALUES (2, N'Cuekay', N'kay12785', 1, N'BEB1970', N'98628566148')
GO
INSERT [dbo].[Alunos] ([ID], [Aluno], [Matricula], [Periodo], [Turma], [CPF]) VALUES (3, N'Zunoru', N'oru11111', 2, N'BEB1970', N'86168178155')
GO
INSERT [dbo].[Alunos] ([ID], [Aluno], [Matricula], [Periodo], [Turma], [CPF]) VALUES (4, N'Ushri', N'hri94565', 8, N'BEB1970', N'21203942868')
GO
INSERT [dbo].[Alunos] ([ID], [Aluno], [Matricula], [Periodo], [Turma], [CPF]) VALUES (5, N'Isxoti', N'oti16741', 8, N'BEB1970', N'65304174923')
GO
INSERT [dbo].[Alunos] ([ID], [Aluno], [Matricula], [Periodo], [Turma], [CPF]) VALUES (6, N'Daoreapen', N'pen89050', 4, N'BEB1970', N'61479236384')
GO
INSERT [dbo].[Alunos] ([ID], [Aluno], [Matricula], [Periodo], [Turma], [CPF]) VALUES (7, N'Daefe', N'efe98430', 5, N'BEB1970', N'93285383824')
GO
INSERT [dbo].[Alunos] ([ID], [Aluno], [Matricula], [Periodo], [Turma], [CPF]) VALUES (8, N'Kios', N'ios47926', 2, N'BEB1970', N'98579850469')
GO
INSERT [dbo].[Alunos] ([ID], [Aluno], [Matricula], [Periodo], [Turma], [CPF]) VALUES (9, N'Ferim', N'rim32587', 2, N'BEB1970', N'15623503904')
GO
INSERT [dbo].[Alunos] ([ID], [Aluno], [Matricula], [Periodo], [Turma], [CPF]) VALUES (10, N'Amrod', N'rod79114', 6, N'BEB1970', N'52761673339')
GO
INSERT [dbo].[Alunos] ([ID], [Aluno], [Matricula], [Periodo], [Turma], [CPF]) VALUES (11, N'Aegve', N'gve49958', 5, N'HZF0457', N'47015426354')
GO
INSERT [dbo].[Alunos] ([ID], [Aluno], [Matricula], [Periodo], [Turma], [CPF]) VALUES (12, N'Ziub', N'iub56121', 4, N'HZF0457', N'34084218492')
GO
INSERT [dbo].[Alunos] ([ID], [Aluno], [Matricula], [Periodo], [Turma], [CPF]) VALUES (13, N'Dezsoi', N'soi74836', 1, N'HZF0457', N'29542964567')
GO
INSERT [dbo].[Alunos] ([ID], [Aluno], [Matricula], [Periodo], [Turma], [CPF]) VALUES (14, N'Thuresgio', N'gio93432', 8, N'HZF0457', N'24307934632')
GO
INSERT [dbo].[Alunos] ([ID], [Aluno], [Matricula], [Periodo], [Turma], [CPF]) VALUES (15, N'Liupen', N'pen69274', 6, N'HZF0457', N'28726559556')
GO
INSERT [dbo].[Alunos] ([ID], [Aluno], [Matricula], [Periodo], [Turma], [CPF]) VALUES (16, N'Isfos', N'fos26386', 1, N'HZF0457', N'96258828084')
GO
INSERT [dbo].[Alunos] ([ID], [Aluno], [Matricula], [Periodo], [Turma], [CPF]) VALUES (17, N'Kasoy', N'soy48908', 6, N'HZF0457', N'27105107701')
GO
INSERT [dbo].[Alunos] ([ID], [Aluno], [Matricula], [Periodo], [Turma], [CPF]) VALUES (18, N'Kubogen', N'gen83523', 6, N'HZF0457', N'35307949641')
GO
INSERT [dbo].[Alunos] ([ID], [Aluno], [Matricula], [Periodo], [Turma], [CPF]) VALUES (19, N'Brodnazuo', N'zuo51025', 6, N'HZF0457', N'88814727370')
GO
INSERT [dbo].[Alunos] ([ID], [Aluno], [Matricula], [Periodo], [Turma], [CPF]) VALUES (20, N'Pevi', N'evi77288', 6, N'HZF0457', N'12372390536')
GO
INSERT [dbo].[Alunos] ([ID], [Aluno], [Matricula], [Periodo], [Turma], [CPF]) VALUES (21, N'Doaul', N'aul89591', 1, N'JVK4352', N'58887149603')
GO
INSERT [dbo].[Alunos] ([ID], [Aluno], [Matricula], [Periodo], [Turma], [CPF]) VALUES (22, N'Thuos', N'uos90385', 4, N'JVK4352', N'69820016770')
GO
INSERT [dbo].[Alunos] ([ID], [Aluno], [Matricula], [Periodo], [Turma], [CPF]) VALUES (23, N'Kabuk', N'buk33853', 7, N'JVK4352', N'82741013490')
GO
INSERT [dbo].[Alunos] ([ID], [Aluno], [Matricula], [Periodo], [Turma], [CPF]) VALUES (24, N'Nialn', N'aln17865', 4, N'JVK4352', N'54810628540')
GO
INSERT [dbo].[Alunos] ([ID], [Aluno], [Matricula], [Periodo], [Turma], [CPF]) VALUES (25, N'Furion', N'ion84082', 1, N'JVK4352', N'74326094222')
GO
INSERT [dbo].[Alunos] ([ID], [Aluno], [Matricula], [Periodo], [Turma], [CPF]) VALUES (26, N'Wailas', N'las67449', 1, N'JVK4352', N'22012798164')
GO
INSERT [dbo].[Alunos] ([ID], [Aluno], [Matricula], [Periodo], [Turma], [CPF]) VALUES (27, N'Ciulg', N'ulg41249', 6, N'JVK4352', N'46747184443')
GO
INSERT [dbo].[Alunos] ([ID], [Aluno], [Matricula], [Periodo], [Turma], [CPF]) VALUES (28, N'Dauthir', N'hir56037', 6, N'JVK4352', N'31133977059')
GO
INSERT [dbo].[Alunos] ([ID], [Aluno], [Matricula], [Periodo], [Turma], [CPF]) VALUES (29, N'Gratmakh', N'akh64863', 1, N'JVK4352', N'42414159188')
GO
INSERT [dbo].[Alunos] ([ID], [Aluno], [Matricula], [Periodo], [Turma], [CPF]) VALUES (30, N'Durluaili', N'ili41351', 7, N'JVK4352', N'38144059058')
GO
INSERT [dbo].[Alunos] ([ID], [Aluno], [Matricula], [Periodo], [Turma], [CPF]) VALUES (31, N'Pielyora', N'ora37722', 3, N'JVO8046', N'71754234511')
GO
INSERT [dbo].[Alunos] ([ID], [Aluno], [Matricula], [Periodo], [Turma], [CPF]) VALUES (32, N'Soloa', N'loa13238', 3, N'JVO8046', N'19565161427')
GO
INSERT [dbo].[Alunos] ([ID], [Aluno], [Matricula], [Periodo], [Turma], [CPF]) VALUES (33, N'Ghamre', N'mre39420', 4, N'JVO8046', N'15112423346')
GO
INSERT [dbo].[Alunos] ([ID], [Aluno], [Matricula], [Periodo], [Turma], [CPF]) VALUES (34, N'Leingose', N'ose89330', 6, N'JVO8046', N'76827431817')
GO
INSERT [dbo].[Alunos] ([ID], [Aluno], [Matricula], [Periodo], [Turma], [CPF]) VALUES (35, N'Elrod', N'rod97441', 7, N'JVO8046', N'61374869504')
GO
INSERT [dbo].[Alunos] ([ID], [Aluno], [Matricula], [Periodo], [Turma], [CPF]) VALUES (36, N'Xiegiharzol', N'zol91974', 4, N'JVO8046', N'65972671640')
GO
INSERT [dbo].[Alunos] ([ID], [Aluno], [Matricula], [Periodo], [Turma], [CPF]) VALUES (37, N'Huifu', N'ifu16666', 4, N'JVO8046', N'76036333195')
GO
INSERT [dbo].[Alunos] ([ID], [Aluno], [Matricula], [Periodo], [Turma], [CPF]) VALUES (38, N'Xuwu', N'uwu41548', 8, N'JVO8046', N'59914836567')
GO
INSERT [dbo].[Alunos] ([ID], [Aluno], [Matricula], [Periodo], [Turma], [CPF]) VALUES (39, N'Linalxe', N'lxe87799', 8, N'JVO8046', N'39008403403')
GO
INSERT [dbo].[Alunos] ([ID], [Aluno], [Matricula], [Periodo], [Turma], [CPF]) VALUES (40, N'Xohu', N'ohu56064', 4, N'JVO8046', N'14831439979')
GO
INSERT [dbo].[Alunos] ([ID], [Aluno], [Matricula], [Periodo], [Turma], [CPF]) VALUES (41, N'Agbuixi', N'ixi11941', 3, N'KPZ2261', N'48688954913')
GO
INSERT [dbo].[Alunos] ([ID], [Aluno], [Matricula], [Periodo], [Turma], [CPF]) VALUES (42, N'Zuithal', N'hal17977', 4, N'KPZ2261', N'78895126267')
GO
INSERT [dbo].[Alunos] ([ID], [Aluno], [Matricula], [Periodo], [Turma], [CPF]) VALUES (43, N'Zoyzol', N'zol22680', 8, N'KPZ2261', N'79044586272')
GO
INSERT [dbo].[Alunos] ([ID], [Aluno], [Matricula], [Periodo], [Turma], [CPF]) VALUES (44, N'Labioili', N'ili48094', 3, N'KPZ2261', N'40639817429')
GO
INSERT [dbo].[Alunos] ([ID], [Aluno], [Matricula], [Periodo], [Turma], [CPF]) VALUES (45, N'Pyeruoco', N'oco66385', 3, N'KPZ2261', N'44932909406')
GO
INSERT [dbo].[Alunos] ([ID], [Aluno], [Matricula], [Periodo], [Turma], [CPF]) VALUES (46, N'Viat', N'iat38088', 6, N'KPZ2261', N'74960737377')
GO
INSERT [dbo].[Alunos] ([ID], [Aluno], [Matricula], [Periodo], [Turma], [CPF]) VALUES (47, N'Dahkipui', N'pui28536', 2, N'KPZ2261', N'11196881122')
GO
INSERT [dbo].[Alunos] ([ID], [Aluno], [Matricula], [Periodo], [Turma], [CPF]) VALUES (48, N'Unluloi', N'loi98136', 5, N'KPZ2261', N'42964898322')
GO
INSERT [dbo].[Alunos] ([ID], [Aluno], [Matricula], [Periodo], [Turma], [CPF]) VALUES (49, N'Irhnikh', N'ikh45568', 1, N'KPZ2261', N'22648772358')
GO
INSERT [dbo].[Alunos] ([ID], [Aluno], [Matricula], [Periodo], [Turma], [CPF]) VALUES (50, N'Gewiurti', N'rti59131', 7, N'KPZ2261', N'81965868660')
GO
INSERT [dbo].[Alunos] ([ID], [Aluno], [Matricula], [Periodo], [Turma], [CPF]) VALUES (51, N'Gehiuthalion', N'ion22436', 6, N'NCS7756', N'45968809825')
GO
INSERT [dbo].[Alunos] ([ID], [Aluno], [Matricula], [Periodo], [Turma], [CPF]) VALUES (52, N'Dwzye', N'zye78315', 4, N'NCS7756', N'68467800048')
GO
INSERT [dbo].[Alunos] ([ID], [Aluno], [Matricula], [Periodo], [Turma], [CPF]) VALUES (53, N'Gramce', N'mce47719', 7, N'NCS7756', N'35479428740')
GO
INSERT [dbo].[Alunos] ([ID], [Aluno], [Matricula], [Periodo], [Turma], [CPF]) VALUES (54, N'Xuriupio', N'pio12456', 3, N'NCS7756', N'98578869036')
GO
INSERT [dbo].[Alunos] ([ID], [Aluno], [Matricula], [Periodo], [Turma], [CPF]) VALUES (55, N'Pinkeuxya', N'xya13868', 8, N'NCS7756', N'90060267371')
GO
INSERT [dbo].[Alunos] ([ID], [Aluno], [Matricula], [Periodo], [Turma], [CPF]) VALUES (56, N'Kevus', N'vus52270', 7, N'NCS7756', N'18775854732')
GO
INSERT [dbo].[Alunos] ([ID], [Aluno], [Matricula], [Periodo], [Turma], [CPF]) VALUES (57, N'Xarion', N'ion31964', 3, N'NCS7756', N'60373072061')
GO
INSERT [dbo].[Alunos] ([ID], [Aluno], [Matricula], [Periodo], [Turma], [CPF]) VALUES (58, N'Hoabo', N'abo79772', 3, N'NCS7756', N'17768428383')
GO
INSERT [dbo].[Alunos] ([ID], [Aluno], [Matricula], [Periodo], [Turma], [CPF]) VALUES (59, N'Thrli', N'rli30597', 1, N'NCS7756', N'80106301046')
GO
INSERT [dbo].[Alunos] ([ID], [Aluno], [Matricula], [Periodo], [Turma], [CPF]) VALUES (60, N'Jotvafi', N'afi68062', 4, N'NCS7756', N'45940314962')
GO
INSERT [dbo].[Cursos] ([ID], [Nome]) VALUES (1, N'Administração')
GO
INSERT [dbo].[Cursos] ([ID], [Nome]) VALUES (2, N'Ciência da Computação')
GO
INSERT [dbo].[Cursos] ([ID], [Nome]) VALUES (3, N'Nutrição')
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (1, N'Programação 1', N'Ciência da Computação', 1)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (2, N'Lógica para Computação', N'Ciência da Computação', 1)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (3, N'Computação, Sociedade e Ética', N'Ciência da Computação', 1)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (4, N'Matemática Discreta', N'Ciência da Computação', 1)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (5, N'Cálculo Diferencial e Integral', N'Ciência da Computação', 1)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (6, N'Estrutura de Dados', N'Ciência da Computação', 2)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (7, N'Banco de Dados', N'Ciência da Computação', 2)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (8, N'Organização e Arquitetura de Computadores', N'Ciência da Computação', 2)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (9, N'Geometria Analítica', N'Ciência da Computação', 2)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (10, N'Eletiva I', N'Ciência da Computação', 2)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (11, N'Redes de Computadores', N'Ciência da Computação', 3)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (12, N'Teoria dos Grafos', N'Ciência da Computação', 3)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (13, N'Probabilidade e Estatística', N'Ciência da Computação', 3)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (14, N'Álgebra Linear', N'Ciência da Computação', 3)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (15, N'Eletiva II', N'Ciência da Computação', 3)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (16, N'Programação 2', N'Ciência da Computação', 4)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (17, N'Programação 3', N'Ciência da Computação', 4)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (18, N'Projeto e Análise de Algoritmos', N'Ciência da Computação', 4)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (19, N'Teoria da Computação', N'Ciência da Computação', 4)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (20, N'Eletiva III', N'Ciência da Computação', 4)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (21, N'Sistemas Operacionais', N'Ciência da Computação', 5)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (22, N'Compiladores', N'Ciência da Computação', 5)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (23, N'Inteligência Artificial', N'Ciência da Computação', 5)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (24, N'Computação Gráfica', N'Ciência da Computação', 5)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (25, N'Eletiva III', N'Ciência da Computação', 5)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (26, N'Projeto e Desenvolvimento de Sistemas', N'Ciência da Computação', 6)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (27, N'Eletiva IV', N'Ciência da Computação', 6)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (28, N'Metodologia de Pesquisa e Trabalho Individual', N'Ciência da Computação', 7)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (29, N'Noções de Direito', N'Ciência da Computação', 7)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (30, N'Eletiva V', N'Ciência da Computação', 7)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (31, N'Eletiva VI', N'Ciência da Computação', 7)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (32, N'Eletiva VII', N'Ciência da Computação', 7)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (33, N'Eletiva VIII', N'Ciência da Computação', 8)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (34, N'Eletiva IX', N'Ciência da Computação', 8)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (35, N'Eletiva X', N'Ciência da Computação', 8)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (36, N'Eletiva XI', N'Ciência da Computação', 8)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (37, N'Eletiva XII', N'Ciência da Computação', 8)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (38, N'Introdução à Economia I', N'Administração', 1)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (39, N'Teoria Geral da Administração I', N'Administração', 1)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (40, N'Contabilidade Básica I', N'Administração', 1)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (41, N'Instituições do Direito Público e Privado', N'Administração', 1)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (42, N'Português Instrumental', N'Administração', 1)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (43, N'Estatística I', N'Administração', 1)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (44, N'Matemática I', N'Administração', 1)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (45, N'Seminário Integrador I', N'Administração', 1)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (46, N'Introdução à Economia II', N'Administração', 2)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (47, N'Teoria Geral da Administração II', N'Administração', 2)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (48, N'Contabilidade Básica II', N'Administração', 2)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (49, N'Introdução as Ciências Sociais', N'Administração', 2)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (50, N'Metodologia Científica', N'Administração', 2)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (51, N'Estatística II', N'Administração', 2)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (52, N'Matemática II', N'Administração', 2)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (53, N'Seminário Integrador II', N'Administração', 2)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (54, N'Organização, Sistemas e Métodos', N'Administração', 3)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (55, N'Direito Comercial', N'Administração', 3)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (56, N'Análise das Demonstrações Contábeis I', N'Administração', 3)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (57, N'Antropologia das Organizações', N'Administração', 3)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (58, N'Filosofia, Ética e Cidadania', N'Administração', 3)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (59, N'Comportamento Organizacional', N'Administração', 3)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (60, N'Seminário Integrador III', N'Administração', 3)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (61, N'Análises das Demonstrações Contábeis II', N'Administração', 4)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (62, N'Gestão de Recursos Materiais e Patrimoniais', N'Administração', 4)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (63, N'Matemática Financeira', N'Administração', 4)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (64, N'Tecnologia da Informação', N'Administração', 4)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (65, N'Direito do Trabalho', N'Administração', 4)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (66, N'Eletiva I', N'Administração', 4)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (67, N'Seminário Integrador IV', N'Administração', 4)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (68, N'Gestão de Custos', N'Administração', 5)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (69, N'Gestão de Recursos Humanos I', N'Administração', 5)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (70, N'Gestão Financeira e Orçamentária I', N'Administração', 5)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (71, N'Gestão Mercadológica I', N'Administração', 5)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (72, N'Logística', N'Administração', 5)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (73, N'Eletiva II', N'Administração', 5)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (74, N'Seminário Integrador V', N'Administração', 5)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (75, N'Pesquisa Operacional', N'Administração', 6)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (76, N'Gestão dos Recursos Humanos II', N'Administração', 6)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (77, N'Gestão da Qualidade e da Produtividade', N'Administração', 6)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (78, N'Gestão Mercadológica II', N'Administração', 6)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (79, N'Gestão da Produção', N'Administração', 6)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (80, N'Gestão Financeira e Orçamentária II', N'Administração', 6)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (81, N'Seminário Integrador VI', N'Administração', 6)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (82, N'Pesquisa de Mercado', N'Administração', 7)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (83, N'Treino de Pesquisa em Administração', N'Administração', 7)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (84, N'Estratégia Organizacional', N'Administração', 7)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (85, N'Sistemas de Informação', N'Administração', 7)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (86, N'Gestão de Projetos', N'Administração', 7)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (87, N'Seminário Integrador VII', N'Administração', 7)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (88, N'Empreeendedorismo e Gestão de Pequenos Negócios', N'Administração', 8)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (89, N'Gestão de Serviços', N'Administração', 8)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (90, N'Eletiva III', N'Administração', 8)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (91, N'Eletiva IV', N'Administração', 8)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (92, N'Seminário Integrador VIII', N'Administração', 8)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (93, N'HISTOLOGIA 1', N'Nutrição', 1)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (94, N'ANATOMIA', N'Nutrição', 1)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (95, N'BIOQUÍMICA 1', N'Nutrição', 1)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (96, N'SAÚDE E SOCIEDADE', N'Nutrição', 1)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (97, N'FILOSOFIA E METODOLOGIA CIENTÍFICA', N'Nutrição', 1)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (98, N'BIOLOGIA CELULAR E MOLECULAR', N'Nutrição', 1)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (99, N'HISTOLOGIA 2', N'Nutrição', 2)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (100, N'FISIOLOGIA 1', N'Nutrição', 2)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (101, N'GENÉTICA', N'Nutrição', 2)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (102, N'EPIDEMIOLOGIA 1', N'Nutrição', 2)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (103, N'BROMATOLOGIA 1', N'Nutrição', 2)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (104, N'BIOQUÍMICA 2', N'Nutrição', 2)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (105, N'MICROBIOLOGIA', N'Nutrição', 3)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (106, N'PARASITOLOGIA', N'Nutrição', 3)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (107, N'FISIOLOGIA 2', N'Nutrição', 3)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (108, N'POLÍTICAS PÚBLICAS DE SAÚDE', N'Nutrição', 3)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (109, N'EPIDEMIOLOGIA 2', N'Nutrição', 3)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (110, N'BROMATOLOGIA 2', N'Nutrição', 3)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (111, N'BIOESTATÍSTICA', N'Nutrição', 3)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (112, N'PATOLOGIA', N'Nutrição', 4)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (113, N'IMUNOLOGIA', N'Nutrição', 4)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (114, N'HIGIENE E MICROBIOLOGIA DE ALIMENTOS', N'Nutrição', 4)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (115, N'TÉCNICA DIETÉTICA', N'Nutrição', 4)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (116, N'AVALIAÇÃO NUTRICIONAL', N'Nutrição', 4)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (117, N'PSICOLOGIA', N'Nutrição', 4)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (118, N'EDUCAÇÃO EM SAÚDE', N'Nutrição', 4)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (119, N'SEMIOLOGIA NUTRICIONAL', N'Nutrição', 5)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (120, N'NUTRIÇÃO MATERNO INFANTIL', N'Nutrição', 5)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (121, N'NUTRIÇÃO DO ADULTO E DO IDOSO', N'Nutrição', 5)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (122, N'ADMINISTRAÇÃO E PLANEJAMENTO EM SAÚDE', N'Nutrição', 5)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (123, N'NUTRIÇÃO NO ESPORTE', N'Nutrição', 5)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (124, N'NUTRIÇÃO CLÍNICA 1', N'Nutrição', 6)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (125, N'NUTRIÇÃO CLÍNICA MATERNO INFANTIL 1', N'Nutrição', 6)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (126, N'GESTÃO DA QUALIDADE NA PRODUÇÃO DE ALIMENTOS 1', N'Nutrição', 6)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (127, N'NUTRIÇÃO EM SAÚDE PÚBLICA 1', N'Nutrição', 6)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (128, N'ÉTICA E EXERCÍCIO PROFISSIONAL', N'Nutrição', 6)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (129, N'NUTRIÇÃO CLÍNICA 2', N'Nutrição', 7)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (130, N'NUTRIÇÃO CLÍNICA MATERNO INFANTIL 2', N'Nutrição', 7)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (131, N'GESTÃO DA QUALIDADE NA PRODUÇÃO DE ALIMENTOS 2', N'Nutrição', 7)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (132, N'NUTRIÇÃO EM SAÚDE PÚBLICA 2', N'Nutrição', 7)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (133, N'NUTRIÇÃO CLÍNICA 3', N'Nutrição', 8)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (134, N'GESTÃO DA QUALIDADE NA PRODUÇÃO DE ALIMENTOS 3', N'Nutrição', 8)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (135, N'NUTRIÇÃO EM SAÚDE PÚBLICA 3', N'Nutrição', 8)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (136, N'METODOLOGIA CIENTÍFICA APLICADA AO TCC', N'Nutrição', 8)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (137, N'ESTÁGIO SUPERVISIONADO EM NUTRIÇÃO CLÍNICA', N'Nutrição', 9)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (138, N'ESTÁGIO SUPERVISIONADO EM GESTÃO DA QUALIDADE NA PRODUÇÃO DE ALIMENTOS', N'Nutrição', 9)
GO
INSERT [dbo].[Disciplina] ([ID], [Nome], [Curso], [Periodo]) VALUES (139, N'ESTÁGIO SUPERVISIONADO EM NUTRIÇÃO EM SAÚDE PÚBLICA', N'Nutrição', 10)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (1, N'Drialossyo', N'94504983468', N'NBZ8943', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (2, N'Pobaytul', N'41215349952', N'MWV0644', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (3, N'Lianciwa', N'58766820693', N'KAN6115', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (4, N'Gaza', N'27689561820', N'AUK2645', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (5, N'Delvire', N'88041444495', N'JUA0949', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (6, N'Wayump', N'83524515161', N'JVI7625', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (7, N'Ruweaurt', N'80454062793', N'MRG3866', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (8, N'Halfimoy', N'61570296091', N'KAV9299', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (9, N'Baralas', N'20065974075', N'IEZ4479', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (10, N'Harar', N'97113643777', N'JVB3964', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (11, N'Lisun', N'47942929204', N'LWC6137', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (12, N'Vumkawa', N'94077861216', N'KEG8687', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (13, N'Floma', N'39307667096', N'MSD2280', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (14, N'Romovo', N'21644989488', N'GPK4812', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (15, N'Zenerga', N'17872640733', N'HQD3996', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (16, N'Mahktudub', N'29511176540', N'NEU6018', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (17, N'Revou', N'80990266611', N'KDD1657', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (18, N'Saurn', N'60021709167', N'urn4229', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (19, N'Felaxuy', N'13802598540', N'xuy8914', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (20, N'Fasieadan', N'68915600145', N'dan3745', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (21, N'Urtabo', N'37272766644', N'abo6170', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (22, N'Belurcoy', N'54444837031', N'coy6811', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (23, N'Bires', N'36093610473', N'res8428', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (24, N'Glanon', N'87269564273', N'non2130', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (25, N'Lonpu', N'47155387937', N'npu4991', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (26, N'Todu', N'98608925579', N'odu7088', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (27, N'Orpa', N'18644279452', N'rpa5198', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (28, N'Grianxaen', N'82438685037', N'aen2602', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (29, N'Noibathic', N'55245593093', N'hic9001', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (30, N'Kraswa', N'20065458468', N'swa1115', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (31, N'Pelfim', N'15713040061', N'fim3140', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (32, N'Baofa', N'83173111460', N'ofa6375', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (33, N'Labor', N'55722821226', N'bor4556', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (34, N'Cawian', N'36378081227', N'ian8344', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (35, N'Curuthir', N'85968953086', N'hir2145', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (36, N'Dagrion', N'67530991550', N'ion8860', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (37, N'Babaodir', N'70400875313', N'dir6582', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (38, N'Asbigrim', N'51558352578', N'rim3437', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (39, N'Reycuarz', N'25230324757', N'arz9069', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (40, N'Laissuy', N'65479013645', N'suy4544', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (41, N'Daeuma', N'44829678177', N'uma2216', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (42, N'Keinviece', N'12697879538', N'ece1197', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (43, N'Thurinpaega', N'52202921793', N'ega1908', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (44, N'Alror', N'54304030793', N'ror8417', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (45, N'Amas', N'75776305573', N'mas4503', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (46, N'Foazbeise', N'69861617248', N'ise6475', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (47, N'Wensiede', N'99395602520', N'ede1614', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (48, N'Lauzi', N'28195212198', N'uzi6489', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (49, N'Olfoimph', N'78980239600', N'mph1314', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (50, N'Riurn', N'97168080383', N'urn6041', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (51, N'Wicimeol', N'80409065906', N'eol4606', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (52, N'Dorgak', N'58281928632', N'gak4591', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (53, N'Fousur', N'96336143800', N'sur3574', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (54, N'Nehol', N'25091655611', N'hol9432', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (55, N'Lyepa', N'26407289160', N'epa5121', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (56, N'Reain', N'82003530823', N'ain4390', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (57, N'Dexu', N'21499487982', N'exu6961', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (58, N'Yashgurz', N'31639741556', N'urz4841', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (59, N'Biolor', N'76223237308', N'lor7563', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (60, N'Kivey', N'90569354631', N'vey2345', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (61, N'Clirid', N'71865916829', N'rid4479', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (62, N'Kashnar', N'52846691141', N'nar5004', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (63, N'Aranarbae', N'77320071142', N'bae7596', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (64, N'Waoralas', N'87901246722', N'las5763', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (65, N'Aegunbor', N'76172663736', N'bor6342', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (66, N'Bugafaedar', N'54208893731', N'dar1906', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (67, N'Runiguk', N'82263393156', N'guk8090', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (68, N'Gulahu', N'38317131759', N'ahu2230', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (69, N'Buobabuk', N'32081667607', N'buk8475', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (70, N'Farfoti', N'71630718043', N'oti2248', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (71, N'Nilan', N'78052417707', N'lan8778', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (72, N'Derao', N'24181400592', N'rao4735', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (73, N'Neanival', N'42879418210', N'val9012', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (74, N'Grole', N'79377532943', N'ole9267', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (75, N'Asgi', N'46956523085', N'sgi6619', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (76, N'Valkigal', N'16874367598', N'gal3576', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (77, N'Riuwizie', N'17426184521', N'zie8984', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (78, N'Veiol', N'25015569760', N'iol4470', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (79, N'Cikabie', N'38028811725', N'bie6773', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (80, N'Haronza', N'29456127992', N'nza2086', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (81, N'Xedul', N'92234148175', N'dul8098', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (82, N'Zorouhub', N'85599341165', N'hub5224', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (83, N'Ciellar', N'57122463066', N'lar7960', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (84, N'Maxuifia', N'82390733773', N'fia8204', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (85, N'Wergo', N'58019545171', N'rgo9694', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (86, N'Wateon', N'60772026789', N'eon5859', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (87, N'Gualdor', N'59704581486', N'dor3707', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (88, N'Ogrura', N'82462686477', N'ura8248', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (89, N'Yarghamph', N'18677834851', N'mph5384', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Docentes] ([ID], [Nome], [CPF], [Matricula], [F5], [F6], [F7], [F8], [F9]) VALUES (90, N'Argan', N'53623799102', N'gan1983', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (1, N'Ciêo 1', N'Determinada situação caracteriza-se pela necessidade de ação imediata, existindo risco iminente de morte do paciente, que deve ser avaliado quanto ao nível de consciência, aos parâmetros vitais e à permeabilidade das vias aéreas. É correto associar a descrição precedente ao', N'conceito de urgência.', N'estado de paciente que apresenta luxação ou torção em membros', N'quadro de paciente com crise de asma brônquica', N'conceito de emergência.', 4, N'Ciência da Computação', N'Programação 1', N'NBZ8943')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (2, N'Ciêção', N'Qual é a capital da Austrália? ', N' Sydney ', N' Melbourne ', N' Canberra ', N' Perth ', 3, N'Ciência da Computação', N'Lógica para Computação', N'MWV0644')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (3, N'Ciêica', N'Quem escreveu o livro "Dom Quixote"? ', N' William Shakespeare ', N' Miguel de Cervantes ', N' Franz Kafka ', N' Fyodor Dostoevsky ', 2, N'Ciência da Computação', N'Computação, Sociedade e Ética', N'KAN6115')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (4, N'Ciêeta', N'Qual é o maior oceano do mundo? ', N' Oceano Atlântico ', N' Oceano Pacífico ', N' Oceano Índico ', N' Oceano Ártico ', 2, N'Ciência da Computação', N'Matemática Discreta', N'AUK2645')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (5, N'Ciêral', N'Qual é o maior estado brasileiro em área territorial? ', N' Amazonas ', N' Minas Gerais ', N' São Paulo ', N' Bahia ', 1, N'Ciência da Computação', N'Cálculo Diferencial e Integral', N'JUA0949')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (6, N'Ciêdos', N'Quem pintou a obra "A Última Ceia"? ', N' Vincent van Gogh ', N' Pablo Picasso ', N' Leonardo da Vinci ', N' Michelangelo ', 3, N'Ciência da Computação', N'Estrutura de Dados', N'JVI7625')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (7, N'Ciêdos', N'Qual é a moeda oficial do Japão? ', N' Yen ', N' Euro ', N' Dólar ', N' Real ', 1, N'Ciência da Computação', N'Banco de Dados', N'MRG3866')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (8, N'Ciêres', N'Qual é o maior deserto do mundo? ', N' Deserto do Saara ', N' Deserto do Atacama ', N' Deserto da Arábia ', N' Deserto da Namíbia ', 1, N'Ciência da Computação', N'Organização e Arquitetura de Computadores', N'KAV9299')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (9, N'Ciêica', N'Qual é a montanha mais alta do mundo? ', N' Monte Everest ', N' Monte Kilimanjaro ', N' Monte Aconcágua ', N' Monte Fuji ', 1, N'Ciência da Computação', N'Geometria Analítica', N'IEZ4479')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (10, N'Ciêa I', N'Em qual país nasceu o famoso físico Albert Einstein? ', N' Alemanha ', N' Estados Unidos ', N' Áustria ', N' Suíça ', 1, N'Ciência da Computação', N'Eletiva I', N'JVB3964')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (11, N'Ciêres', N'Qual é o maior animal terrestre? ', N' Elefante africano ', N' Girafa ', N' Rinoceronte ', N' Hipopótamo ', 1, N'Ciência da Computação', N'Redes de Computadores', N'LWC6137')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (12, N'Ciêfos', N'Quem foi o primeiro presidente dos Estados Unidos? ', N' Abraham Lincoln ', N' George Washington ', N' Thomas Jefferson ', N' John F. Kennedy ', 2, N'Ciência da Computação', N'Teoria dos Grafos', N'KEG8687')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (13, N'Ciêica', N'Qual é a maior cordilheira do mundo? ', N' Montanhas Rochosas ', N' Cordilheira dos Andes ', N' Montanhas dos Himalaias ', N' Cordilheira dos Alpes ', 3, N'Ciência da Computação', N'Probabilidade e Estatística', N'MSD2280')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (14, N'Ciêear', N'Qual é o símbolo químico do elemento ouro? ', N' Au ', N' Ag ', N' Fe ', N' Pb ', 1, N'Ciência da Computação', N'Álgebra Linear', N'GPK4812')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (15, N'Ciê II', N'Quem foi o autor da obra "Romeu e Julieta"? ', N' William Shakespeare ', N' Charles Dickens ', N' Jane Austen ', N' Mark Twain ', 1, N'Ciência da Computação', N'Eletiva II', N'HQD3996')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (16, N'Ciêo 2', N'Qual é o maior animal marinho? ', N' Baleia azul ', N' Tubarão branco ', N' Golfinho ', N' Polvo gigante ', 1, N'Ciência da Computação', N'Programação 2', N'NEU6018')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (17, N'Ciêo 3', N'Qual é o maior produtor mundial de café? ', N' Brasil ', N' Colômbia ', N' Vietnã ', N' Estados Unidos ', 1, N'Ciência da Computação', N'Programação 3', N'KDD1657')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (18, N'Ciêmos', N'Qual é o instrumento musical conhecido como "rei dos instrumentos"? ', N' Violino ', N' Piano ', N' Guitarra ', N' Trompete ', 2, N'Ciência da Computação', N'Projeto e Análise de Algoritmos', N'urn4229')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (19, N'Ciêção', N'Quem foi o líder político sul-africano que lutou contra o apartheid? ', N' Nelson Mandela ', N' Desmond Tutu ', N' Thabo Mbeki ', N' F. W. de Klerk ', 1, N'Ciência da Computação', N'Teoria da Computação', N'xuy8914')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (20, N'CiêIII', N'Qual é a cor oposta ao vermelho no círculo cromático? ', N' Amarelo ', N' Azul ', N' Verde ', N' Roxo ', 2, N'Ciência da Computação', N'Eletiva III', N'dan3745')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (21, N'Ciêais', N'Qual é o nome do famoso quadro de Leonardo da Vinci que retrata uma mulher com um sorriso enigmático? ', N' A Última Ceia ', N' Mona Lisa ', N' A Criação de Adão ', N' O Nascimento de Vênus ', 2, N'Ciência da Computação', N'Sistemas Operacionais', N'abo6170')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (22, N'Ciêres', N'Quem é considerado o pai da psicanálise? ', N' Carl Jung ', N' Sigmund Freud ', N' Ivan Pavlov ', N' B. F. Skinner ', 2, N'Ciência da Computação', N'Compiladores', N'coy6811')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (23, N'Ciêial', N'Qual é o metal líquido à temperatura ambiente? ', N' Ouro ', N' Prata ', N' Chumbo ', N' Mercúrio ', 4, N'Ciência da Computação', N'Inteligência Artificial', N'res8428')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (24, N'Ciêica', N'Em que país nasceu o famoso pintor Pablo Picasso? ', N' Espanha ', N' França ', N' Itália ', N' Holanda ', 1, N'Ciência da Computação', N'Computação Gráfica', N'non2130')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (25, N'CiêIII', N'Qual é o maior país da América do Sul em área territorial? ', N' Brasil ', N' Argentina ', N' Colômbia ', N' Peru ', 1, N'Ciência da Computação', N'Eletiva III', N'npu4991')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (26, N'Ciêmas', N'Quem escreveu o livro "1984"? ', N' George Orwell ', N' Aldous Huxley ', N' Ray Bradbury ', N' J. R. R. Tolkien ', 1, N'Ciência da Computação', N'Projeto e Desenvolvimento de Sistemas', N'odu7088')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (27, N'Ciê IV', N'Qual é o maior órgão do corpo humano? ', N' Cérebro ', N' Fígado ', N' Coração ', N' Pele ', 4, N'Ciência da Computação', N'Eletiva IV', N'rpa5198')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (28, N'Ciêual', N'Qual é o nome da famosa escultura grega que representa a deusa Afrodite? ', N' Vênus de Milo ', N' David ', N' Pietà ', N' Discóbolo ', 1, N'Ciência da Computação', N'Metodologia de Pesquisa e Trabalho Individual', N'aen2602')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (29, N'Ciêito', N'Quem foi o primeiro homem a pisar na Lua? ', N' Buzz Aldrin ', N' Neil Armstrong ', N' Yuri Gagarin ', N' Alan Shepard ', 2, N'Ciência da Computação', N'Noções de Direito', N'hic9001')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (30, N'Ciêa V', N'Qual é o maior rio do mundo em volume de água? ', N' Nilo ', N' Amazonas ', N' Yangtzé ', N' Mississipi ', 2, N'Ciência da Computação', N'Eletiva V', N'swa1115')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (31, N'Ciê VI', N'O que significa a sigla HTML? ', N' HyperText Markup Language ', N' Home Tool Markup Language ', N' Hyperlink and Text Markup Language ', N' Hyper Transfer Markup Language ', 1, N'Ciência da Computação', N'Eletiva VI', N'fim3140')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (32, N'CiêVII', N'Qual é a linguagem de programação mais popular no desenvolvimento de aplicações móveis? ', N' Java ', N' C# ', N' Swift ', N' Python ', 3, N'Ciência da Computação', N'Eletiva VII', N'ofa6375')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (33, N'CiêIII', N'O que é um algoritmo? ', N' Uma sequência finita de instruções para resolver um problema ', N' Um tipo de dado utilizado para armazenar informações ', N' Um sistema operacional de código aberto ', N' Uma linguagem de programação popular ', 1, N'Ciência da Computação', N'Eletiva VIII', N'bor4556')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (34, N'Ciê IX', N'O que significa a sigla CPU? ', N' Central Processing Unit ', N' Computer Programming Unit ', N' Central Program Unit ', N' Computer Power Unit ', 1, N'Ciência da Computação', N'Eletiva IX', N'ian8344')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (35, N'Ciêa X', N'O que é um banco de dados relacional? ', N' Um conjunto de arquivos de texto que armazenam informações ', N' Um sistema que permite a conexão entre diferentes dispositivos ', N' Uma linguagem de programação específica para consultas ', N' Uma estrutura de dados que organiza informações em tabelas relacionadas ', 4, N'Ciência da Computação', N'Eletiva X', N'hir2145')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (36, N'Ciê XI', N'O que é um loop em programação? ', N' Um erro que faz o programa travar ', N' Uma instrução utilizada para interromper a execução de um programa ', N' Uma estrutura de controle que repete um bloco de código várias vezes ', N' Um tipo de dado utilizado para armazenar valores numéricos ', 3, N'Ciência da Computação', N'Eletiva XI', N'ion8860')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (37, N'CiêXII', N'O que significa a sigla CSS? ', N' Cascading Style Sheets ', N' Computer Style Sheets ', N' Creative Style Sheets ', N' Content Style Sheets ', 1, N'Ciência da Computação', N'Eletiva XII', N'dir6582')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (38, N'Adma I', N'Qual é a função do sistema operacional? ', N' Controlar e coordenar o hardware e o software de um computador ', N' Desenvolver aplicativos e programas ', N' Gerenciar a segurança da rede ', N' Fornecer energia ao computador ', 1, N'Administração', N'Introdução à Economia I', N'rim3437')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (39, N'Admo I', N'O que é um firewall? ', N' Um dispositivo utilizado para armazenar cópias de segurança de dados ', N' Um programa que protege um computador de ameaças externas ', N' Um tipo de conexão de rede sem fio ', N' Um software utilizado para criar e editar imagens ', 2, N'Administração', N'Teoria Geral da Administração I', N'arz9069')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (40, N'Adma I', N'O que é o protocolo HTTP? ', N' Hypertext Transfer Protocol ', N' Hypertext Transport Protocol ', N' Home Tool Transfer Protocol ', N' Hyperlink Text Protocol ', 1, N'Administração', N'Contabilidade Básica I', N'suy4544')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (41, N'Admado', N'O que significa a sigla IP? ', N' Internet Provider ', N' Internet Protocol ', N' Internal Port ', N' Internet Power ', 2, N'Administração', N'Instituições do Direito Público e Privado', N'uma2216')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (42, N'Admtal', N'Qual é a linguagem de programação mais utilizada para desenvolvimento web? ', N' Python ', N' JavaScript ', N' C++ ', N' Ruby ', 2, N'Administração', N'Português Instrumental', N'ece1197')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (43, N'Adma I', N'O que é um arquivo no contexto da computação? ', N' Um dispositivo utilizado para armazenar informações ', N' Um conjunto de instruções para um programa executar ', N' Uma pasta que organiza arquivos e documentos ', N' Uma sequência de bits armazenada em um meio de armazenamento ', 4, N'Administração', N'Estatística I', N'ega1908')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (44, N'Adma I', N'O que é um servidor web? ', N' Um dispositivo que fornece energia para outros dispositivos ', N' Um software que processa solicitações e entrega páginas web aos clientes ', N' Uma conexão de rede que permite compartilhamento de arquivos ', N' Um sistema operacional específico para servidores ', 2, N'Administração', N'Matemática I', N'ror8417')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (45, N'Admr I', N'O que é uma API? ', N' Application Programming Interface ', N' Application Program Interface ', N' Advanced Program Interface ', N' Automated Program Interface ', 1, N'Administração', N'Seminário Integrador I', N'mas4503')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (46, N'Adm II', N'O que é um framework? ', N' Uma biblioteca de funções utilizada no desenvolvimento de software ', N' Um tipo de processador utilizado em servidores ', N' Um dispositivo que armazena dados temporariamente ', N' Um sistema operacional de código aberto ', 1, N'Administração', N'Introdução à Economia II', N'ise6475')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (47, N'Adm II', N'O que é a memória RAM? ', N' Random Access Memory ', N' Read-Only Memory ', N' Random Arithmetic Memory ', N' Real Application Memory ', 1, N'Administração', N'Teoria Geral da Administração II', N'ede1614')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (48, N'Adm II', N'O que é a linguagem de programação Python conhecida por enfatizar? ', N' Legibilidade do código ', N' Performance de execução ', N' Criação de interfaces gráficas ', N' Programação orientada a objetos ', 1, N'Administração', N'Contabilidade Básica II', N'uzi6489')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (49, N'Admais', N'O que é a linguagem de programação C conhecida por enfatizar? ', N' Legibilidade do código ', N' Performance de execução ', N' Criação de interfaces gráficas ', N' Programação orientada a objetos ', 2, N'Administração', N'Introdução as Ciências Sociais', N'mph1314')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (50, N'Admica', N'O que é o conceito de "loop infinito" em programação? ', N' Um erro que ocorre durante a compilação de um programa ', N' Uma estrutura de controle que repete um bloco de código várias vezes ', N' Uma situação em que um programa fica preso em uma repetição infinita ', N' Um tipo de dado que não pode ser alterado após a sua criação ', 3, N'Administração', N'Metodologia Científica', N'urn6041')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (51, N'Adm II', N'O que é um servidor DNS? ', N' Domain Name System ', N' Dynamic Network Server ', N' Data Network Security ', N' Digital Network Service ', 1, N'Administração', N'Estatística II', N'eol4606')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (52, N'Adm II', N'O que é o protocolo FTP? ', N' File Transfer Protocol ', N' File Transport Protocol ', N' File Translation Protocol ', N' File Tracking Protocol ', 1, N'Administração', N'Matemática II', N'gak4591')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (53, N'Adm II', N'O que é um bug de software? ', N' Um recurso extra em um programa ', N' Um erro que ocorre durante a execução de um programa ', N' Uma parte do código-fonte que precisa ser otimizada ', N' Um problema relacionado à conexão de rede ', 2, N'Administração', N'Seminário Integrador II', N'sur3574')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (54, N'Admdos', N'O que é a programação orientada a objetos? ', N' Um método para otimizar o desempenho de um programa ', N' Um paradigma de programação que organiza o código em objetos ', N' Uma linguagem de programação específica para desenvolvimento web ', N' Um tipo de estrutura de dados utilizada para armazenar informações ', 2, N'Administração', N'Organização, Sistemas e Métodos', N'hol9432')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (55, N'Admial', N'Quem foi o autor do famoso livro "O Pequeno Príncipe"? ', N' Antoine de Saint-Exupéry ', N' Charles Dickens ', N' F. Scott Fitzgerald ', N' Jules Verne ', 1, N'Administração', N'Direito Comercial', N'epa5121')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (56, N'Adms I', N'Qual é o nome da pintura famosa que retrata uma mulher sorridente com um vestido de bolinhas? ', N' A Noite Estrelada ', N' O Grito ', N' Dama com Arminho ', N' Moça com Brinco de Pérola ', 4, N'Administração', N'Análise das Demonstrações Contábeis I', N'ain4390')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (57, N'Admões', N'Qual é o país com a maior população do mundo? ', N' Índia ', N' Estados Unidos ', N' China ', N' Brasil ', 3, N'Administração', N'Antropologia das Organizações', N'exu6961')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (58, N'Admnia', N'Qual é o nome da maior cadeia montanhosa da América do Norte? ', N' Montanhas Rochosas ', N' Montanhas dos Apalaches ', N' Montanhas dos Andes ', N' Montanhas dos Apalaches ', 1, N'Administração', N'Filosofia, Ética e Cidadania', N'urz4841')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (59, N'Admnal', N'Qual é o maior animal terrestre? ', N' Elefante africano ', N' Girafa ', N' Rinoceronte ', N' Hipopótamo ', 1, N'Administração', N'Comportamento Organizacional', N'lor7563')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (60, N'AdmIII', N'Quem pintou a obra "A Persistência da Memória", que retrata relógios derretendo? ', N' Salvador Dalí ', N' Pablo Picasso ', N' Frida Kahlo ', N' Claude Monet ', 1, N'Administração', N'Seminário Integrador III', N'vey2345')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (61, N'Adm II', N'Qual é o nome da pintura famosa que retrata a deusa grega Afrodite emergindo do mar em uma concha? ', N' Vênus de Milo ', N' Moça com Brinco de Pérola ', N' A Criação de Adão ', N' O Nascimento de Vênus ', 4, N'Administração', N'Análises das Demonstrações Contábeis II', N'rid4479')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (62, N'Admais', N'Qual é o maior deserto do mundo? ', N' Deserto do Saara ', N' Deserto do Atacama ', N' Deserto da Arábia ', N' Deserto da Namíbia ', 1, N'Administração', N'Gestão de Recursos Materiais e Patrimoniais', N'nar5004')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (63, N'Admira', N'Quem foi o primeiro presidente dos Estados Unidos? ', N' Abraham Lincoln ', N' George Washington ', N' Thomas Jefferson ', N' John F. Kennedy ', 2, N'Administração', N'Matemática Financeira', N'bae7596')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (64, N'Admção', N'Qual é o maior planeta do Sistema Solar? ', N' Terra ', N' Júpiter ', N' Saturno ', N' Marte ', 2, N'Administração', N'Tecnologia da Informação', N'las5763')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (65, N'Admlho', N'Qual é a capital da França? ', N' Paris ', N' Roma ', N' Berlim ', N' Londres ', 1, N'Administração', N'Direito do Trabalho', N'bor6342')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (66, N'Adma I', N'Qual é o maior animal marinho? ', N' Baleia azul ', N' Tubarão branco ', N' Golfinho ', N' Polvo gigante ', 1, N'Administração', N'Eletiva I', N'dar1906')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (67, N'Adm IV', N'Quem foi o autor da obra "1984"? ', N' George Orwell ', N' Aldous Huxley ', N' Ray Bradbury ', N' J. R. R. Tolkien ', 1, N'Administração', N'Seminário Integrador IV', N'guk8090')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (68, N'Admtos', N'Qual é o maior produtor mundial de café? ', N' Brasil ', N' Colômbia ', N' Vietnã ', N' Estados Unidos ', 1, N'Administração', N'Gestão de Custos', N'ahu2230')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (69, N'Adms I', N'Qual é o metal líquido à temperatura ambiente? ', N' Ouro ', N' Prata ', N' Chumbo ', N' Mercúrio ', 4, N'Administração', N'Gestão de Recursos Humanos I', N'buk8475')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (70, N'Adma I', N'Em que país nasceu o famoso pintor Pablo Picasso? ', N' Espanha ', N' França ', N' Itália ', N' Holanda ', 1, N'Administração', N'Gestão Financeira e Orçamentária I', N'oti2248')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (71, N'Adma I', N'Quem foi o líder político sul-africano que lutou contra o apartheid? ', N' Nelson Mandela ', N' Desmond Tutu ', N' Thabo Mbeki ', N' F. W. de Klerk ', 1, N'Administração', N'Gestão Mercadológica I', N'lan8778')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (72, N'Admica', N'Qual é a cor oposta ao vermelho no círculo cromático? ', N' Amarelo ', N' Azul ', N' Verde ', N' Roxo ', 2, N'Administração', N'Logística', N'rao4735')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (73, N'Adm II', N'Qual é o nome da famosa escultura grega que representa a deusa Afrodite? ', N' Vênus de Milo ', N' David ', N' Pietà ', N' Discóbolo ', 1, N'Administração', N'Eletiva II', N'val9012')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (74, N'Admr V', N'Quem foi o primeiro homem a pisar na Lua? ', N' Buzz Aldrin ', N' Neil Armstrong ', N' Yuri Gagarin ', N' Alan Shepard ', 2, N'Administração', N'Seminário Integrador V', N'ole9267')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (75, N'Admnal', N'O que é a pirâmide alimentar? ', N' Um modelo gráfico que representa os diferentes grupos de alimentos e suas proporções recomendadas na alimentação saudável ', N' Uma técnica de preparo de alimentos utilizada em dietas específicas ', N' Uma tabela nutricional que lista o valor calórico dos alimentos ', N' Um método de contar calorias para controle de peso ', 1, N'Administração', N'Pesquisa Operacional', N'sgi6619')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (76, N'Adm II', N'O que são nutrientes essenciais? ', N' Nutrientes encontrados apenas em alimentos orgânicos ', N' Nutrientes necessários para o bom funcionamento do organismo, mas que não são produzidos pelo corpo ', N' Nutrientes encontrados exclusivamente em alimentos de origem animal ', N' Nutrientes que devem ser consumidos em grandes quantidades para uma alimentação equilibrada ', 2, N'Administração', N'Gestão dos Recursos Humanos II', N'gal3576')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (77, N'Admade', N'Quais são as principais funções dos carboidratos no organismo? ', N' Fornecer energia para as células e tecidos ', N' Construir músculos e ossos ', N' Regular o funcionamento do sistema nervoso ', N' Auxiliar na absorção de vitaminas ', 1, N'Administração', N'Gestão da Qualidade e da Produtividade', N'zie8984')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (78, N'Adm II', N'O que são alimentos fontes de proteínas? ', N' Alimentos que contêm exclusivamente proteínas em sua composição ', N' Alimentos que fornecem todos os nutrientes necessários para o corpo ', N' Alimentos que são ricos em proteínas, como carnes, peixes, ovos e leguminosas ', N' Alimentos que não contêm gorduras em sua composição ', 3, N'Administração', N'Gestão Mercadológica II', N'iol4470')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (79, N'Admção', N'O que é a gordura saturada? ', N' Um tipo de gordura saudável encontrada em alimentos como abacates e nozes ', N' Um tipo de gordura líquida encontrada em óleos vegetais ', N' Um tipo de gordura sólida encontrada em carnes gordurosas e laticínios ', N' Um tipo de gordura trans encontrada em alimentos processados e frituras ', 3, N'Administração', N'Gestão da Produção', N'bie6773')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (80, N'Adm II', N'O que são vitaminas e quais são suas principais funções no organismo? ', N' Nutrientes que fornecem energia para o corpo ', N' Nutrientes que ajudam na formação dos músculos ', N' Substâncias que auxiliam na digestão dos alimentos ', N' Substâncias que são necessárias em pequenas quantidades para o funcionamento adequado do organismo ', 4, N'Administração', N'Gestão Financeira e Orçamentária II', N'nza2086')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (81, N'Adm VI', N'O que são minerais e quais são suas principais funções no organismo? ', N' Nutrientes que fornecem energia para o corpo ', N' Nutrientes que ajudam na formação dos músculos ', N' Substâncias que auxiliam na digestão dos alimentos ', N' Substâncias que são necessárias em pequenas quantidades para o funcionamento adequado do organismo ', 4, N'Administração', N'Seminário Integrador VI', N'dul8098')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (82, N'Admado', N'O que é a fibra alimentar e qual é sua importância na alimentação? ', N' Um nutriente essencial para a formação dos músculos ', N' Um tipo de carboidrato que não é digerido pelo organismo, contribuindo para o bom funcionamento do intestino ', N' Um tipo de gordura saudável encontrada em peixes e nozes ', N' Um tipo de vitamina que auxilia na absorção de outros nutrientes ', 2, N'Administração', N'Pesquisa de Mercado', N'hub5224')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (83, N'Admção', N'O que é a água e qual é sua importância para o organismo? ', N' Um nutriente essencial para a formação dos músculos ', N' Uma substância que fornece energia para o corpo ', N' Um componente fundamental das células e dos tecidos do corpo humano ', N' Uma substância que auxilia na digestão dos alimentos ', 3, N'Administração', N'Treino de Pesquisa em Administração', N'lar7960')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (84, N'Admnal', N'O que são alimentos integrais e quais são seus benefícios para a saúde? ', N' Alimentos que não contêm aditivos ou conservantes ', N' Alimentos que são produzidos organicamente ', N' Alimentos que não passaram por processamento industrial e que mantêm todos os seus componentes originais ', N' Alimentos que são fontes de nutrientes essenciais para o corpo ', 3, N'Administração', N'Estratégia Organizacional', N'fia8204')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (85, N'Admção', N'O que é a dieta vegetariana? ', N' Uma dieta que exclui o consumo de carne vermelha ', N' Uma dieta que exclui o consumo de qualquer alimento de origem animal ', N' Uma dieta que inclui apenas alimentos de origem vegetal ', N' Uma dieta que exclui o consumo de alimentos processados ', 3, N'Administração', N'Sistemas de Informação', N'rgo9694')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (86, N'Admtos', N'O que é a dieta vegana? ', N' Uma dieta que exclui o consumo de carne vermelha ', N' Uma dieta que exclui o consumo de qualquer alimento de origem animal ', N' Uma dieta que inclui apenas alimentos de origem vegetal ', N' Uma dieta que exclui o consumo de alimentos processados ', 2, N'Administração', N'Gestão de Projetos', N'eon5859')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (87, N'AdmVII', N'O que é a anemia e quais são suas principais causas? ', N' Uma doença causada pela falta de ferro, que resulta na redução da produção de glóbulos vermelhos no sangue ', N' Uma doença causada pela falta de vitamina C, que resulta na fragilidade dos ossos ', N' Uma doença causada pela falta de vitamina D, que resulta na perda de massa muscular ', N' Uma doença causada pela falta de cálcio, que resulta no enfraquecimento dos dentes ', 1, N'Administração', N'Seminário Integrador VII', N'dor3707')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (88, N'Admios', N'Quais são as principais fontes de ferro na alimentação? ', N' Carnes vermelhas e laticínios ', N' Frutas e vegetais ', N' Peixe e frutos do mar ', N' Leguminosas, como feijões e lentilhas ', 4, N'Administração', N'Empreeendedorismo e Gestão de Pequenos Negócios', N'ura8248')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (89, N'Admços', N'O que é o colesterol e como ele pode afetar a saúde? ', N' Uma substância encontrada apenas em alimentos de origem animal ', N' Uma substância que auxilia na absorção de nutrientes ', N' Uma substância que é produzida pelo fígado e que desempenha funções importantes no organismo ', N' Uma substância que, em excesso, pode se acumular nas artérias e aumentar o risco de doenças cardíacas ', 4, N'Administração', N'Gestão de Serviços', N'mph5384')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (90, N'AdmIII', N'O que são antioxidantes e qual é o seu papel na saúde? ', N' Substâncias que auxiliam na absorção de gorduras ', N' Substâncias que protegem as células contra danos causados pelos radicais livres ', N' Substâncias que são necessárias para a formação dos ossos ', N' Substâncias que promovem o ganho de massa muscular ', 2, N'Administração', N'Eletiva III', N'gan1983')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (91, N'Adm IV', N'O que é a obesidade e quais são seus riscos para a saúde? ', N' O acúmulo excessivo de gordura corporal, que aumenta o risco de doenças como diabetes, hipertensão e doenças cardíacas ', N' A falta de gordura corporal, que aumenta o risco de desnutrição e problemas de saúde relacionados ', N' A falta de nutrientes essenciais na alimentação, que resulta em baixo peso e problemas de saúde ', N' A presença de músculos pouco desenvolvidos, que resulta em baixo peso e problemas de saúde ', 1, N'Administração', N'Eletiva IV', N'NBZ8943')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (92, N'AdmIII', N'O que são alimentos funcionais e quais são seus benefícios? ', N' Alimentos que não contêm aditivos ou conservantes ', N' Alimentos que são produzidos organicamente ', N' Alimentos que além de nutrição básica, fornecem benefícios adicionais para a saúde ', N' Alimentos que são fontes de nutrientes essenciais para o corpo ', 3, N'Administração', N'Seminário Integrador VIII', N'MWV0644')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (93, N'NutA 1', N'O que é o índice glicêmico de um alimento? ', N' A quantidade de gordura presente em um alimento ', N' A quantidade de carboidratos presentes em um alimento ', N' A velocidade com que um alimento eleva os níveis de açúcar no sangue ', N' A quantidade de proteínas presentes em um alimento ', 3, N'Nutrição', N'HISTOLOGIA 1', N'KAN6115')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (94, N'NutMIA', N'O que são probióticos e qual é a sua importância para a saúde intestinal? ', N' Bactérias benéficas que auxiliam na digestão dos alimentos e no equilíbrio da flora intestinal ', N' Vitaminas que auxiliam na absorção de nutrientes ', N' Minerais que são essenciais para a formação dos ossos ', N' Substâncias que promovem o ganho de massa muscular ', 1, N'Nutrição', N'ANATOMIA', N'AUK2645')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (95, N'NutA 1', N'Quais são os benefícios do consumo de frutas e vegetais para a saúde? ', N' Fornecem vitaminas e minerais essenciais para o corpo ', N' Reduzem o risco de doenças crônicas, como doenças cardíacas e câncer ', N' Auxiliam na manutenção de um peso saudável ', N' Todas as opções anteriores estão corretas ', 4, N'Nutrição', N'BIOQUÍMICA 1', N'JUA0949')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (96, N'NutADE', N'O que são alimentos transgênicos e quais são suas características? ', N' Alimentos que passaram por modificação genética para melhorar seu valor nutricional ', N' Alimentos que são produzidos sem o uso de agrotóxicos ', N' Alimentos que são cultivados utilizando métodos tradicionais de agricultura ', N' Alimentos que são cultivados sem a utilização de fertilizantes químicos ', 1, N'Nutrição', N'SAÚDE E SOCIEDADE', N'JVI7625')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (97, N'NutICA', N'O que são alimentos orgânicos e quais são suas características? ', N' Alimentos que passaram por modificação genética para melhorar seu valor nutricional ', N' Alimentos que são produzidos sem o uso de agrotóxicos ', N' Alimentos que são cultivados utilizando métodos tradicionais de agricultura ', N' Alimentos que são cultivados sem a utilização de fertilizantes químicos ', 2, N'Nutrição', N'FILOSOFIA E METODOLOGIA CIENTÍFICA', N'MRG3866')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (98, N'NutLAR', N'O que é a intolerância à lactose e quais são seus sintomas? ', N' Uma alergia ao glúten, que causa danos ao intestino delgado ', N' Uma alergia às proteínas do leite, que causa inflamação na pele ', N' Uma dificuldade de digerir a lactose, o açúcar presente no leite, que causa desconforto gastrointestinal ', N' Uma alergia ao açúcar refinado, que causa alterações no humor ', 3, N'Nutrição', N'BIOLOGIA CELULAR E MOLECULAR', N'KAV9299')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (99, N'NutA 2', N'O que são dietas da moda e quais são os seus riscos para a saúde? ', N' Dietas que são baseadas em alimentos específicos e que prometem resultados rápidos de perda de peso ', N' Dietas que são baseadas em alimentos frescos e naturais ', N' Dietas que são baseadas em alimentos de baixa caloria ', N' Dietas que são baseadas em alimentos processados ', 1, N'Nutrição', N'HISTOLOGIA 2', N'IEZ4479')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (100, N'NutA 1', N'O que é administração de empresas? ', N' O processo de gerenciar recursos e atividades de uma organização para atingir seus objetivos ', N' A aplicação de técnicas de vendas para maximizar os lucros de uma empresa ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de estratégias de marketing para promover uma empresa ', 1, N'Nutrição', N'FISIOLOGIA 1', N'JVB3964')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (101, N'NutICA', N'Quais são as principais funções de um administrador? ', N' Planejamento, organização, liderança e controle ', N' Produção, marketing, finanças e recursos humanos ', N' Vendas, distribuição, pesquisa e desenvolvimento ', N' Comunicação, negociação, tomada de decisão e resolução de conflitos ', 1, N'Nutrição', N'GENÉTICA', N'LWC6137')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (102, N'NutA 1', N'O que é planejamento estratégico? ', N' O processo de definir os objetivos de longo prazo de uma organização e determinar as melhores maneiras de alcançá-los ', N' A atividade de criar estratégias de marketing para promover os produtos de uma empresa ', N' O processo de identificar e corrigir problemas operacionais em uma organização ', N' A atividade de definir metas de curto prazo para os funcionários de uma empresa ', 1, N'Nutrição', N'EPIDEMIOLOGIA 1', N'KEG8687')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (103, N'NutA 1', N'O que é organização no contexto da administração? ', N' O processo de estabelecer a estrutura de uma empresa e designar tarefas e responsabilidades aos funcionários ', N' A atividade de vender produtos e serviços para os clientes ', N' O processo de motivar e liderar os funcionários para atingir os objetivos da empresa ', N' A atividade de avaliar o desempenho dos funcionários e fornecer feedback construtivo ', 1, N'Nutrição', N'BROMATOLOGIA 1', N'MSD2280')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (104, N'NutA 2', N'O que é liderança? ', N' A capacidade de influenciar e motivar os outros para alcançar os objetivos da organização ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de estratégias de marketing para promover uma empresa ', N' A atividade de definir metas de curto prazo para os funcionários de uma empresa ', 1, N'Nutrição', N'BIOQUÍMICA 2', N'GPK4812')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (105, N'NutGIA', N'O que é controle no contexto da administração? ', N' O processo de monitorar e avaliar o desempenho da organização e tomar medidas corretivas quando necessário ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de técnicas de vendas para maximizar os lucros de uma empresa ', N' A atividade de avaliar o desempenho dos funcionários e fornecer feedback construtivo ', 1, N'Nutrição', N'MICROBIOLOGIA', N'HQD3996')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (106, N'NutGIA', N'O que é marketing? ', N' O processo de identificar, satisfazer e manter clientes por meio da criação, entrega e comunicação de valor ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de técnicas de vendas para maximizar os lucros de uma empresa ', N' A atividade de definir metas de curto prazo para os funcionários de uma empresa ', 1, N'Nutrição', N'PARASITOLOGIA', N'NEU6018')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (107, N'NutA 2', N'O que é gestão de recursos humanos? ', N' O processo de recrutar, selecionar, treinar, motivar e reter os colaboradores de uma organização ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de estratégias de marketing para promover uma empresa ', N' A atividade de avaliar o desempenho dos funcionários e fornecer feedback construtivo ', 1, N'Nutrição', N'FISIOLOGIA 2', N'KDD1657')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (108, N'NutÚDE', N'O que são indicadores de desempenho? ', N' Medidas quantitativas que ajudam a avaliar o progresso de uma organização em relação a seus objetivos ', N' Ferramentas de marketing utilizadas para promover uma empresa ', N' Documentos que descrevem as atividades e tarefas de um projeto ', N' Métodos de comunicação interna utilizados pelos funcionários de uma organização ', 1, N'Nutrição', N'POLÍTICAS PÚBLICAS DE SAÚDE', N'urn4229')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (109, N'NutA 2', N'O que é gestão da qualidade? ', N' O processo de garantir que os produtos e serviços de uma organização atendam ou excedam as expectativas dos clientes ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de técnicas de vendas para maximizar os lucros de uma empresa ', N' A atividade de avaliar o desempenho dos funcionários e fornecer feedback construtivo ', 1, N'Nutrição', N'EPIDEMIOLOGIA 2', N'xuy8914')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (110, N'NutA 2', N'O que é empreendedorismo? ', N' A capacidade de identificar oportunidades de negócio e desenvolver novas iniciativas ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de técnicas de vendas para maximizar os lucros de uma empresa ', N' A atividade de definir metas de curto prazo para os funcionários de uma empresa ', 1, N'Nutrição', N'BROMATOLOGIA 2', N'dan3745')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (111, N'NutICA', N'O que é inovação? ', N' A introdução de novas ideias, produtos, processos ou serviços em uma organização ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de técnicas de vendas para maximizar os lucros de uma empresa ', N' A atividade de definir metas de curto prazo para os funcionários de uma empresa ', 1, N'Nutrição', N'BIOESTATÍSTICA', N'abo6170')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (112, N'NutGIA', N'O que são estratégias competitivas? ', N' Planos de ação utilizados por uma organização para se destacar e ganhar vantagem em relação aos concorrentes ', N' Técnicas de vendas utilizadas para maximizar os lucros de uma empresa ', N' Métodos de comunicação interna utilizados pelos funcionários de uma organização ', N' Documentos que descrevem as atividades e tarefas de um projeto ', 1, N'Nutrição', N'PATOLOGIA', N'coy6811')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (113, N'NutGIA', N'O que é gestão financeira? ', N' O processo de planejamento, controle e análise das atividades financeiras de uma organização ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de estratégias de marketing para promover uma empresa ', N' A atividade de avaliar o desempenho dos funcionários e fornecer feedback construtivo ', 1, N'Nutrição', N'IMUNOLOGIA', N'res8428')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (114, N'NutTOS', N'O que é análise de mercado? ', N' A avaliação das condições e tendências do mercado em que uma organização opera ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de técnicas de vendas para maximizar os lucros de uma empresa ', N' A atividade de definir metas de curto prazo para os funcionários de uma empresa ', 1, N'Nutrição', N'HIGIENE E MICROBIOLOGIA DE ALIMENTOS', N'non2130')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (115, N'NutICA', N'O que é gestão de projetos? ', N' O processo de planejamento, execução e controle de um projeto para alcançar seus objetivos dentro de prazos e recursos específicos ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de estratégias de marketing para promover uma empresa ', N' A atividade de avaliar o desempenho dos funcionários e fornecer feedback construtivo ', 1, N'Nutrição', N'TÉCNICA DIETÉTICA', N'npu4991')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (116, N'NutNAL', N'O que é ética empresarial? ', N' Princípios e valores que orientam o comportamento ético em uma organização ', N' Técnicas de vendas utilizadas para maximizar os lucros de uma empresa ', N' Métodos de comunicação interna utilizados pelos funcionários de uma organização ', N' Documentos que descrevem as atividades e tarefas de um projeto ', 1, N'Nutrição', N'AVALIAÇÃO NUTRICIONAL', N'odu7088')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (117, N'NutGIA', N'O que é responsabilidade social corporativa? ', N' O compromisso de uma organização em contribuir para o desenvolvimento sustentável e o bem-estar da sociedade ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de técnicas de vendas para maximizar os lucros de uma empresa ', N' A atividade de definir metas de curto prazo para os funcionários de uma empresa ', 1, N'Nutrição', N'PSICOLOGIA', N'rpa5198')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (118, N'NutÚDE', N'O que é gestão da cadeia de suprimentos? ', N' O processo de planejamento, implementação e controle do fluxo de materiais, informações e serviços desde o fornecedor até o cliente final ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de estratégias de marketing para promover uma empresa ', N' A atividade de avaliar o desempenho dos funcionários e fornecer feedback construtivo ', 1, N'Nutrição', N'EDUCAÇÃO EM SAÚDE', N'aen2602')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (119, N'NutNAL', N'O que é gestão de mudanças? ', N' O processo de planejamento e implementação de mudanças organizacionais de forma eficaz e suave ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de técnicas de vendas para maximizar os lucros de uma empresa ', N' A atividade de definir metas de curto prazo para os funcionários de uma empresa ', 1, N'Nutrição', N'SEMIOLOGIA NUTRICIONAL', N'hic9001')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (120, N'NutTIL', N'O que é gestão do conhecimento? ', N' O processo de capturar, armazenar, compartilhar e utilizar o conhecimento dentro de uma organização ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de estratégias de marketing para promover uma empresa ', N' A atividade de avaliar o desempenho dos funcionários e fornecer feedback construtivo ', 1, N'Nutrição', N'NUTRIÇÃO MATERNO INFANTIL', N'swa1115')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (121, N'NutOSO', N'Determinada situação caracteriza-se pela necessidade de ação imediata, existindo risco iminente de morte do paciente, que deve ser avaliado quanto ao nível de consciência, aos parâmetros vitais e à permeabilidade das vias aéreas. É correto associar a descrição precedente ao', N'conceito de urgência.', N'estado de paciente que apresenta luxação ou torção em membros', N'quadro de paciente com crise de asma brônquica', N'conceito de emergência.', 4, N'Nutrição', N'NUTRIÇÃO DO ADULTO E DO IDOSO', N'fim3140')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (122, N'NutÚDE', N'Qual é a capital da Austrália? ', N' Sydney ', N' Melbourne ', N' Canberra ', N' Perth ', 3, N'Nutrição', N'ADMINISTRAÇÃO E PLANEJAMENTO EM SAÚDE', N'ofa6375')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (123, N'NutRTE', N'Quem escreveu o livro "Dom Quixote"? ', N' William Shakespeare ', N' Miguel de Cervantes ', N' Franz Kafka ', N' Fyodor Dostoevsky ', 2, N'Nutrição', N'NUTRIÇÃO NO ESPORTE', N'bor4556')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (124, N'NutA 1', N'Qual é o maior oceano do mundo? ', N' Oceano Atlântico ', N' Oceano Pacífico ', N' Oceano Índico ', N' Oceano Ártico ', 2, N'Nutrição', N'NUTRIÇÃO CLÍNICA 1', N'ian8344')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (125, N'NutL 1', N'Qual é o maior estado brasileiro em área territorial? ', N' Amazonas ', N' Minas Gerais ', N' São Paulo ', N' Bahia ', 1, N'Nutrição', N'NUTRIÇÃO CLÍNICA MATERNO INFANTIL 1', N'hir2145')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (126, N'NutS 1', N'Quem pintou a obra "A Última Ceia"? ', N' Vincent van Gogh ', N' Pablo Picasso ', N' Leonardo da Vinci ', N' Michelangelo ', 3, N'Nutrição', N'GESTÃO DA QUALIDADE NA PRODUÇÃO DE ALIMENTOS 1', N'ion8860')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (127, N'NutA 1', N'Qual é a moeda oficial do Japão? ', N' Yen ', N' Euro ', N' Dólar ', N' Real ', 1, N'Nutrição', N'NUTRIÇÃO EM SAÚDE PÚBLICA 1', N'dir6582')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (128, N'NutNAL', N'Qual é o maior deserto do mundo? ', N' Deserto do Saara ', N' Deserto do Atacama ', N' Deserto da Arábia ', N' Deserto da Namíbia ', 1, N'Nutrição', N'ÉTICA E EXERCÍCIO PROFISSIONAL', N'rim3437')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (129, N'NutA 2', N'Qual é a montanha mais alta do mundo? ', N' Monte Everest ', N' Monte Kilimanjaro ', N' Monte Aconcágua ', N' Monte Fuji ', 1, N'Nutrição', N'NUTRIÇÃO CLÍNICA 2', N'arz9069')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (130, N'NutL 2', N'Em qual país nasceu o famoso físico Albert Einstein? ', N' Alemanha ', N' Estados Unidos ', N' Áustria ', N' Suíça ', 1, N'Nutrição', N'NUTRIÇÃO CLÍNICA MATERNO INFANTIL 2', N'suy4544')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (131, N'NutS 2', N'Qual é o maior animal terrestre? ', N' Elefante africano ', N' Girafa ', N' Rinoceronte ', N' Hipopótamo ', 1, N'Nutrição', N'GESTÃO DA QUALIDADE NA PRODUÇÃO DE ALIMENTOS 2', N'uma2216')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (132, N'NutA 2', N'Quem foi o primeiro presidente dos Estados Unidos? ', N' Abraham Lincoln ', N' George Washington ', N' Thomas Jefferson ', N' John F. Kennedy ', 2, N'Nutrição', N'NUTRIÇÃO EM SAÚDE PÚBLICA 2', N'ece1197')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (133, N'NutA 3', N'Qual é a maior cordilheira do mundo? ', N' Montanhas Rochosas ', N' Cordilheira dos Andes ', N' Montanhas dos Himalaias ', N' Cordilheira dos Alpes ', 3, N'Nutrição', N'NUTRIÇÃO CLÍNICA 3', N'ega1908')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (134, N'NutS 3', N'Qual é o símbolo químico do elemento ouro? ', N' Au ', N' Ag ', N' Fe ', N' Pb ', 1, N'Nutrição', N'GESTÃO DA QUALIDADE NA PRODUÇÃO DE ALIMENTOS 3', N'ror8417')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (135, N'NutA 3', N'Quem foi o autor da obra "Romeu e Julieta"? ', N' William Shakespeare ', N' Charles Dickens ', N' Jane Austen ', N' Mark Twain ', 1, N'Nutrição', N'NUTRIÇÃO EM SAÚDE PÚBLICA 3', N'mas4503')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (136, N'NutTCC', N'Qual é o maior animal marinho? ', N' Baleia azul ', N' Tubarão branco ', N' Golfinho ', N' Polvo gigante ', 1, N'Nutrição', N'METODOLOGIA CIENTÍFICA APLICADA AO TCC', N'ise6475')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (137, N'NutICA', N'Qual é o maior produtor mundial de café? ', N' Brasil ', N' Colômbia ', N' Vietnã ', N' Estados Unidos ', 1, N'Nutrição', N'ESTÁGIO SUPERVISIONADO EM NUTRIÇÃO CLÍNICA', N'ede1614')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (138, N'NutTOS', N'Qual é o instrumento musical conhecido como "rei dos instrumentos"? ', N' Violino ', N' Piano ', N' Guitarra ', N' Trompete ', 2, N'Nutrição', N'ESTÁGIO SUPERVISIONADO EM GESTÃO DA QUALIDADE NA PRODUÇÃO DE ALIMENTOS', N'uzi6489')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (139, N'NutICA', N'Quem foi o líder político sul-africano que lutou contra o apartheid? ', N' Nelson Mandela ', N' Desmond Tutu ', N' Thabo Mbeki ', N' F. W. de Klerk ', 1, N'Nutrição', N'ESTÁGIO SUPERVISIONADO EM NUTRIÇÃO EM SAÚDE PÚBLICA', N'mph1314')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (140, N'Ciêo 1', N'Qual é a cor oposta ao vermelho no círculo cromático? ', N' Amarelo ', N' Azul ', N' Verde ', N' Roxo ', 2, N'Ciência da Computação', N'Programação 1', N'urn6041')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (141, N'Ciêção', N'Qual é o nome do famoso quadro de Leonardo da Vinci que retrata uma mulher com um sorriso enigmático? ', N' A Última Ceia ', N' Mona Lisa ', N' A Criação de Adão ', N' O Nascimento de Vênus ', 2, N'Ciência da Computação', N'Lógica para Computação', N'eol4606')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (142, N'Ciêica', N'Quem é considerado o pai da psicanálise? ', N' Carl Jung ', N' Sigmund Freud ', N' Ivan Pavlov ', N' B. F. Skinner ', 2, N'Ciência da Computação', N'Computação, Sociedade e Ética', N'gak4591')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (143, N'Ciêeta', N'Qual é o metal líquido à temperatura ambiente? ', N' Ouro ', N' Prata ', N' Chumbo ', N' Mercúrio ', 4, N'Ciência da Computação', N'Matemática Discreta', N'sur3574')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (144, N'Ciêral', N'Em que país nasceu o famoso pintor Pablo Picasso? ', N' Espanha ', N' França ', N' Itália ', N' Holanda ', 1, N'Ciência da Computação', N'Cálculo Diferencial e Integral', N'hol9432')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (145, N'Ciêdos', N'Qual é o maior país da América do Sul em área territorial? ', N' Brasil ', N' Argentina ', N' Colômbia ', N' Peru ', 1, N'Ciência da Computação', N'Estrutura de Dados', N'epa5121')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (146, N'Ciêdos', N'Quem escreveu o livro "1984"? ', N' George Orwell ', N' Aldous Huxley ', N' Ray Bradbury ', N' J. R. R. Tolkien ', 1, N'Ciência da Computação', N'Banco de Dados', N'ain4390')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (147, N'Ciêres', N'Qual é o maior órgão do corpo humano? ', N' Cérebro ', N' Fígado ', N' Coração ', N' Pele ', 4, N'Ciência da Computação', N'Organização e Arquitetura de Computadores', N'exu6961')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (148, N'Ciêica', N'Qual é o nome da famosa escultura grega que representa a deusa Afrodite? ', N' Vênus de Milo ', N' David ', N' Pietà ', N' Discóbolo ', 1, N'Ciência da Computação', N'Geometria Analítica', N'urz4841')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (149, N'Ciêa I', N'Quem foi o primeiro homem a pisar na Lua? ', N' Buzz Aldrin ', N' Neil Armstrong ', N' Yuri Gagarin ', N' Alan Shepard ', 2, N'Ciência da Computação', N'Eletiva I', N'lor7563')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (150, N'Ciêres', N'Qual é o maior rio do mundo em volume de água? ', N' Nilo ', N' Amazonas ', N' Yangtzé ', N' Mississipi ', 2, N'Ciência da Computação', N'Redes de Computadores', N'vey2345')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (151, N'Ciêfos', N'O que significa a sigla HTML? ', N' HyperText Markup Language ', N' Home Tool Markup Language ', N' Hyperlink and Text Markup Language ', N' Hyper Transfer Markup Language ', 1, N'Ciência da Computação', N'Teoria dos Grafos', N'rid4479')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (152, N'Ciêica', N'Qual é a linguagem de programação mais popular no desenvolvimento de aplicações móveis? ', N' Java ', N' C# ', N' Swift ', N' Python ', 3, N'Ciência da Computação', N'Probabilidade e Estatística', N'nar5004')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (153, N'Ciêear', N'O que é um algoritmo? ', N' Uma sequência finita de instruções para resolver um problema ', N' Um tipo de dado utilizado para armazenar informações ', N' Um sistema operacional de código aberto ', N' Uma linguagem de programação popular ', 1, N'Ciência da Computação', N'Álgebra Linear', N'bae7596')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (154, N'Ciê II', N'O que significa a sigla CPU? ', N' Central Processing Unit ', N' Computer Programming Unit ', N' Central Program Unit ', N' Computer Power Unit ', 1, N'Ciência da Computação', N'Eletiva II', N'las5763')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (155, N'Ciêo 2', N'O que é um banco de dados relacional? ', N' Um conjunto de arquivos de texto que armazenam informações ', N' Um sistema que permite a conexão entre diferentes dispositivos ', N' Uma linguagem de programação específica para consultas ', N' Uma estrutura de dados que organiza informações em tabelas relacionadas ', 4, N'Ciência da Computação', N'Programação 2', N'bor6342')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (156, N'Ciêo 3', N'O que é um loop em programação? ', N' Um erro que faz o programa travar ', N' Uma instrução utilizada para interromper a execução de um programa ', N' Uma estrutura de controle que repete um bloco de código várias vezes ', N' Um tipo de dado utilizado para armazenar valores numéricos ', 3, N'Ciência da Computação', N'Programação 3', N'dar1906')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (157, N'Ciêmos', N'O que significa a sigla CSS? ', N' Cascading Style Sheets ', N' Computer Style Sheets ', N' Creative Style Sheets ', N' Content Style Sheets ', 1, N'Ciência da Computação', N'Projeto e Análise de Algoritmos', N'guk8090')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (158, N'Ciêção', N'Qual é a função do sistema operacional? ', N' Controlar e coordenar o hardware e o software de um computador ', N' Desenvolver aplicativos e programas ', N' Gerenciar a segurança da rede ', N' Fornecer energia ao computador ', 1, N'Ciência da Computação', N'Teoria da Computação', N'ahu2230')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (159, N'CiêIII', N'O que é um firewall? ', N' Um dispositivo utilizado para armazenar cópias de segurança de dados ', N' Um programa que protege um computador de ameaças externas ', N' Um tipo de conexão de rede sem fio ', N' Um software utilizado para criar e editar imagens ', 2, N'Ciência da Computação', N'Eletiva III', N'buk8475')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (160, N'Ciêais', N'O que é o protocolo HTTP? ', N' Hypertext Transfer Protocol ', N' Hypertext Transport Protocol ', N' Home Tool Transfer Protocol ', N' Hyperlink Text Protocol ', 1, N'Ciência da Computação', N'Sistemas Operacionais', N'oti2248')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (161, N'Ciêres', N'O que significa a sigla IP? ', N' Internet Provider ', N' Internet Protocol ', N' Internal Port ', N' Internet Power ', 2, N'Ciência da Computação', N'Compiladores', N'lan8778')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (162, N'Ciêial', N'Qual é a linguagem de programação mais utilizada para desenvolvimento web? ', N' Python ', N' JavaScript ', N' C++ ', N' Ruby ', 2, N'Ciência da Computação', N'Inteligência Artificial', N'rao4735')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (163, N'Ciêica', N'O que é um arquivo no contexto da computação? ', N' Um dispositivo utilizado para armazenar informações ', N' Um conjunto de instruções para um programa executar ', N' Uma pasta que organiza arquivos e documentos ', N' Uma sequência de bits armazenada em um meio de armazenamento ', 4, N'Ciência da Computação', N'Computação Gráfica', N'val9012')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (164, N'CiêIII', N'O que é um servidor web? ', N' Um dispositivo que fornece energia para outros dispositivos ', N' Um software que processa solicitações e entrega páginas web aos clientes ', N' Uma conexão de rede que permite compartilhamento de arquivos ', N' Um sistema operacional específico para servidores ', 2, N'Ciência da Computação', N'Eletiva III', N'ole9267')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (165, N'Ciêmas', N'O que é uma API? ', N' Application Programming Interface ', N' Application Program Interface ', N' Advanced Program Interface ', N' Automated Program Interface ', 1, N'Ciência da Computação', N'Projeto e Desenvolvimento de Sistemas', N'sgi6619')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (166, N'Ciê IV', N'O que é um framework? ', N' Uma biblioteca de funções utilizada no desenvolvimento de software ', N' Um tipo de processador utilizado em servidores ', N' Um dispositivo que armazena dados temporariamente ', N' Um sistema operacional de código aberto ', 1, N'Ciência da Computação', N'Eletiva IV', N'gal3576')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (167, N'Ciêual', N'O que é a memória RAM? ', N' Random Access Memory ', N' Read-Only Memory ', N' Random Arithmetic Memory ', N' Real Application Memory ', 1, N'Ciência da Computação', N'Metodologia de Pesquisa e Trabalho Individual', N'zie8984')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (168, N'Ciêito', N'O que é a linguagem de programação Python conhecida por enfatizar? ', N' Legibilidade do código ', N' Performance de execução ', N' Criação de interfaces gráficas ', N' Programação orientada a objetos ', 1, N'Ciência da Computação', N'Noções de Direito', N'iol4470')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (169, N'Ciêa V', N'O que é a linguagem de programação C conhecida por enfatizar? ', N' Legibilidade do código ', N' Performance de execução ', N' Criação de interfaces gráficas ', N' Programação orientada a objetos ', 2, N'Ciência da Computação', N'Eletiva V', N'bie6773')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (170, N'Ciê VI', N'O que é o conceito de "loop infinito" em programação? ', N' Um erro que ocorre durante a compilação de um programa ', N' Uma estrutura de controle que repete um bloco de código várias vezes ', N' Uma situação em que um programa fica preso em uma repetição infinita ', N' Um tipo de dado que não pode ser alterado após a sua criação ', 3, N'Ciência da Computação', N'Eletiva VI', N'nza2086')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (171, N'CiêVII', N'O que é um servidor DNS? ', N' Domain Name System ', N' Dynamic Network Server ', N' Data Network Security ', N' Digital Network Service ', 1, N'Ciência da Computação', N'Eletiva VII', N'dul8098')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (172, N'CiêIII', N'O que é o protocolo FTP? ', N' File Transfer Protocol ', N' File Transport Protocol ', N' File Translation Protocol ', N' File Tracking Protocol ', 1, N'Ciência da Computação', N'Eletiva VIII', N'hub5224')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (173, N'Ciê IX', N'O que é um bug de software? ', N' Um recurso extra em um programa ', N' Um erro que ocorre durante a execução de um programa ', N' Uma parte do código-fonte que precisa ser otimizada ', N' Um problema relacionado à conexão de rede ', 2, N'Ciência da Computação', N'Eletiva IX', N'lar7960')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (174, N'Ciêa X', N'O que é a programação orientada a objetos? ', N' Um método para otimizar o desempenho de um programa ', N' Um paradigma de programação que organiza o código em objetos ', N' Uma linguagem de programação específica para desenvolvimento web ', N' Um tipo de estrutura de dados utilizada para armazenar informações ', 2, N'Ciência da Computação', N'Eletiva X', N'fia8204')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (175, N'Ciê XI', N'Quem foi o autor do famoso livro "O Pequeno Príncipe"? ', N' Antoine de Saint-Exupéry ', N' Charles Dickens ', N' F. Scott Fitzgerald ', N' Jules Verne ', 1, N'Ciência da Computação', N'Eletiva XI', N'rgo9694')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (176, N'CiêXII', N'Qual é o nome da pintura famosa que retrata uma mulher sorridente com um vestido de bolinhas? ', N' A Noite Estrelada ', N' O Grito ', N' Dama com Arminho ', N' Moça com Brinco de Pérola ', 4, N'Ciência da Computação', N'Eletiva XII', N'eon5859')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (177, N'Adma I', N'Qual é o país com a maior população do mundo? ', N' Índia ', N' Estados Unidos ', N' China ', N' Brasil ', 3, N'Administração', N'Introdução à Economia I', N'dor3707')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (178, N'Admo I', N'Qual é o nome da maior cadeia montanhosa da América do Norte? ', N' Montanhas Rochosas ', N' Montanhas dos Apalaches ', N' Montanhas dos Andes ', N' Montanhas dos Apalaches ', 1, N'Administração', N'Teoria Geral da Administração I', N'ura8248')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (179, N'Adma I', N'Qual é o maior animal terrestre? ', N' Elefante africano ', N' Girafa ', N' Rinoceronte ', N' Hipopótamo ', 1, N'Administração', N'Contabilidade Básica I', N'mph5384')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (180, N'Admado', N'Quem pintou a obra "A Persistência da Memória", que retrata relógios derretendo? ', N' Salvador Dalí ', N' Pablo Picasso ', N' Frida Kahlo ', N' Claude Monet ', 1, N'Administração', N'Instituições do Direito Público e Privado', N'gan1983')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (181, N'Admtal', N'Qual é o nome da pintura famosa que retrata a deusa grega Afrodite emergindo do mar em uma concha? ', N' Vênus de Milo ', N' Moça com Brinco de Pérola ', N' A Criação de Adão ', N' O Nascimento de Vênus ', 4, N'Administração', N'Português Instrumental', N'NBZ8943')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (182, N'Adma I', N'Qual é o maior deserto do mundo? ', N' Deserto do Saara ', N' Deserto do Atacama ', N' Deserto da Arábia ', N' Deserto da Namíbia ', 1, N'Administração', N'Estatística I', N'MWV0644')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (183, N'Adma I', N'Quem foi o primeiro presidente dos Estados Unidos? ', N' Abraham Lincoln ', N' George Washington ', N' Thomas Jefferson ', N' John F. Kennedy ', 2, N'Administração', N'Matemática I', N'KAN6115')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (184, N'Admr I', N'Qual é o maior planeta do Sistema Solar? ', N' Terra ', N' Júpiter ', N' Saturno ', N' Marte ', 2, N'Administração', N'Seminário Integrador I', N'AUK2645')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (185, N'Adm II', N'Qual é a capital da França? ', N' Paris ', N' Roma ', N' Berlim ', N' Londres ', 1, N'Administração', N'Introdução à Economia II', N'JUA0949')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (186, N'Adm II', N'Qual é o maior animal marinho? ', N' Baleia azul ', N' Tubarão branco ', N' Golfinho ', N' Polvo gigante ', 1, N'Administração', N'Teoria Geral da Administração II', N'JVI7625')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (187, N'Adm II', N'Quem foi o autor da obra "1984"? ', N' George Orwell ', N' Aldous Huxley ', N' Ray Bradbury ', N' J. R. R. Tolkien ', 1, N'Administração', N'Contabilidade Básica II', N'MRG3866')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (188, N'Admais', N'Qual é o maior produtor mundial de café? ', N' Brasil ', N' Colômbia ', N' Vietnã ', N' Estados Unidos ', 1, N'Administração', N'Introdução as Ciências Sociais', N'KAV9299')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (189, N'Admica', N'Qual é o metal líquido à temperatura ambiente? ', N' Ouro ', N' Prata ', N' Chumbo ', N' Mercúrio ', 4, N'Administração', N'Metodologia Científica', N'IEZ4479')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (190, N'Adm II', N'Em que país nasceu o famoso pintor Pablo Picasso? ', N' Espanha ', N' França ', N' Itália ', N' Holanda ', 1, N'Administração', N'Estatística II', N'JVB3964')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (191, N'Adm II', N'Quem foi o líder político sul-africano que lutou contra o apartheid? ', N' Nelson Mandela ', N' Desmond Tutu ', N' Thabo Mbeki ', N' F. W. de Klerk ', 1, N'Administração', N'Matemática II', N'LWC6137')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (192, N'Adm II', N'Qual é a cor oposta ao vermelho no círculo cromático? ', N' Amarelo ', N' Azul ', N' Verde ', N' Roxo ', 2, N'Administração', N'Seminário Integrador II', N'KEG8687')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (193, N'Admdos', N'Qual é o nome da famosa escultura grega que representa a deusa Afrodite? ', N' Vênus de Milo ', N' David ', N' Pietà ', N' Discóbolo ', 1, N'Administração', N'Organização, Sistemas e Métodos', N'MSD2280')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (194, N'Admial', N'Quem foi o primeiro homem a pisar na Lua? ', N' Buzz Aldrin ', N' Neil Armstrong ', N' Yuri Gagarin ', N' Alan Shepard ', 2, N'Administração', N'Direito Comercial', N'GPK4812')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (195, N'Adms I', N'O que é a pirâmide alimentar? ', N' Um modelo gráfico que representa os diferentes grupos de alimentos e suas proporções recomendadas na alimentação saudável ', N' Uma técnica de preparo de alimentos utilizada em dietas específicas ', N' Uma tabela nutricional que lista o valor calórico dos alimentos ', N' Um método de contar calorias para controle de peso ', 1, N'Administração', N'Análise das Demonstrações Contábeis I', N'HQD3996')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (196, N'Admões', N'O que são nutrientes essenciais? ', N' Nutrientes encontrados apenas em alimentos orgânicos ', N' Nutrientes necessários para o bom funcionamento do organismo, mas que não são produzidos pelo corpo ', N' Nutrientes encontrados exclusivamente em alimentos de origem animal ', N' Nutrientes que devem ser consumidos em grandes quantidades para uma alimentação equilibrada ', 2, N'Administração', N'Antropologia das Organizações', N'NEU6018')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (197, N'Admnia', N'Quais são as principais funções dos carboidratos no organismo? ', N' Fornecer energia para as células e tecidos ', N' Construir músculos e ossos ', N' Regular o funcionamento do sistema nervoso ', N' Auxiliar na absorção de vitaminas ', 1, N'Administração', N'Filosofia, Ética e Cidadania', N'KDD1657')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (198, N'Admnal', N'O que são alimentos fontes de proteínas? ', N' Alimentos que contêm exclusivamente proteínas em sua composição ', N' Alimentos que fornecem todos os nutrientes necessários para o corpo ', N' Alimentos que são ricos em proteínas, como carnes, peixes, ovos e leguminosas ', N' Alimentos que não contêm gorduras em sua composição ', 3, N'Administração', N'Comportamento Organizacional', N'urn4229')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (199, N'AdmIII', N'O que é a gordura saturada? ', N' Um tipo de gordura saudável encontrada em alimentos como abacates e nozes ', N' Um tipo de gordura líquida encontrada em óleos vegetais ', N' Um tipo de gordura sólida encontrada em carnes gordurosas e laticínios ', N' Um tipo de gordura trans encontrada em alimentos processados e frituras ', 3, N'Administração', N'Seminário Integrador III', N'xuy8914')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (200, N'Adm II', N'O que são vitaminas e quais são suas principais funções no organismo? ', N' Nutrientes que fornecem energia para o corpo ', N' Nutrientes que ajudam na formação dos músculos ', N' Substâncias que auxiliam na digestão dos alimentos ', N' Substâncias que são necessárias em pequenas quantidades para o funcionamento adequado do organismo ', 4, N'Administração', N'Análises das Demonstrações Contábeis II', N'dan3745')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (201, N'Admais', N'O que são minerais e quais são suas principais funções no organismo? ', N' Nutrientes que fornecem energia para o corpo ', N' Nutrientes que ajudam na formação dos músculos ', N' Substâncias que auxiliam na digestão dos alimentos ', N' Substâncias que são necessárias em pequenas quantidades para o funcionamento adequado do organismo ', 4, N'Administração', N'Gestão de Recursos Materiais e Patrimoniais', N'abo6170')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (202, N'Admira', N'O que é a fibra alimentar e qual é sua importância na alimentação? ', N' Um nutriente essencial para a formação dos músculos ', N' Um tipo de carboidrato que não é digerido pelo organismo, contribuindo para o bom funcionamento do intestino ', N' Um tipo de gordura saudável encontrada em peixes e nozes ', N' Um tipo de vitamina que auxilia na absorção de outros nutrientes ', 2, N'Administração', N'Matemática Financeira', N'coy6811')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (203, N'Admção', N'O que é a água e qual é sua importância para o organismo? ', N' Um nutriente essencial para a formação dos músculos ', N' Uma substância que fornece energia para o corpo ', N' Um componente fundamental das células e dos tecidos do corpo humano ', N' Uma substância que auxilia na digestão dos alimentos ', 3, N'Administração', N'Tecnologia da Informação', N'res8428')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (204, N'Admlho', N'O que são alimentos integrais e quais são seus benefícios para a saúde? ', N' Alimentos que não contêm aditivos ou conservantes ', N' Alimentos que são produzidos organicamente ', N' Alimentos que não passaram por processamento industrial e que mantêm todos os seus componentes originais ', N' Alimentos que são fontes de nutrientes essenciais para o corpo ', 3, N'Administração', N'Direito do Trabalho', N'non2130')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (205, N'Adma I', N'O que é a dieta vegetariana? ', N' Uma dieta que exclui o consumo de carne vermelha ', N' Uma dieta que exclui o consumo de qualquer alimento de origem animal ', N' Uma dieta que inclui apenas alimentos de origem vegetal ', N' Uma dieta que exclui o consumo de alimentos processados ', 3, N'Administração', N'Eletiva I', N'npu4991')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (206, N'Adm IV', N'O que é a dieta vegana? ', N' Uma dieta que exclui o consumo de carne vermelha ', N' Uma dieta que exclui o consumo de qualquer alimento de origem animal ', N' Uma dieta que inclui apenas alimentos de origem vegetal ', N' Uma dieta que exclui o consumo de alimentos processados ', 2, N'Administração', N'Seminário Integrador IV', N'odu7088')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (207, N'Admtos', N'O que é a anemia e quais são suas principais causas? ', N' Uma doença causada pela falta de ferro, que resulta na redução da produção de glóbulos vermelhos no sangue ', N' Uma doença causada pela falta de vitamina C, que resulta na fragilidade dos ossos ', N' Uma doença causada pela falta de vitamina D, que resulta na perda de massa muscular ', N' Uma doença causada pela falta de cálcio, que resulta no enfraquecimento dos dentes ', 1, N'Administração', N'Gestão de Custos', N'rpa5198')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (208, N'Adms I', N'Quais são as principais fontes de ferro na alimentação? ', N' Carnes vermelhas e laticínios ', N' Frutas e vegetais ', N' Peixe e frutos do mar ', N' Leguminosas, como feijões e lentilhas ', 4, N'Administração', N'Gestão de Recursos Humanos I', N'aen2602')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (209, N'Adma I', N'O que é o colesterol e como ele pode afetar a saúde? ', N' Uma substância encontrada apenas em alimentos de origem animal ', N' Uma substância que auxilia na absorção de nutrientes ', N' Uma substância que é produzida pelo fígado e que desempenha funções importantes no organismo ', N' Uma substância que, em excesso, pode se acumular nas artérias e aumentar o risco de doenças cardíacas ', 4, N'Administração', N'Gestão Financeira e Orçamentária I', N'hic9001')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (210, N'Adma I', N'O que são antioxidantes e qual é o seu papel na saúde? ', N' Substâncias que auxiliam na absorção de gorduras ', N' Substâncias que protegem as células contra danos causados pelos radicais livres ', N' Substâncias que são necessárias para a formação dos ossos ', N' Substâncias que promovem o ganho de massa muscular ', 2, N'Administração', N'Gestão Mercadológica I', N'swa1115')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (211, N'Admica', N'O que é a obesidade e quais são seus riscos para a saúde? ', N' O acúmulo excessivo de gordura corporal, que aumenta o risco de doenças como diabetes, hipertensão e doenças cardíacas ', N' A falta de gordura corporal, que aumenta o risco de desnutrição e problemas de saúde relacionados ', N' A falta de nutrientes essenciais na alimentação, que resulta em baixo peso e problemas de saúde ', N' A presença de músculos pouco desenvolvidos, que resulta em baixo peso e problemas de saúde ', 1, N'Administração', N'Logística', N'fim3140')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (212, N'Adm II', N'O que são alimentos funcionais e quais são seus benefícios? ', N' Alimentos que não contêm aditivos ou conservantes ', N' Alimentos que são produzidos organicamente ', N' Alimentos que além de nutrição básica, fornecem benefícios adicionais para a saúde ', N' Alimentos que são fontes de nutrientes essenciais para o corpo ', 3, N'Administração', N'Eletiva II', N'ofa6375')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (213, N'Admr V', N'O que é o índice glicêmico de um alimento? ', N' A quantidade de gordura presente em um alimento ', N' A quantidade de carboidratos presentes em um alimento ', N' A velocidade com que um alimento eleva os níveis de açúcar no sangue ', N' A quantidade de proteínas presentes em um alimento ', 3, N'Administração', N'Seminário Integrador V', N'bor4556')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (214, N'Admnal', N'O que são probióticos e qual é a sua importância para a saúde intestinal? ', N' Bactérias benéficas que auxiliam na digestão dos alimentos e no equilíbrio da flora intestinal ', N' Vitaminas que auxiliam na absorção de nutrientes ', N' Minerais que são essenciais para a formação dos ossos ', N' Substâncias que promovem o ganho de massa muscular ', 1, N'Administração', N'Pesquisa Operacional', N'ian8344')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (215, N'Adm II', N'Quais são os benefícios do consumo de frutas e vegetais para a saúde? ', N' Fornecem vitaminas e minerais essenciais para o corpo ', N' Reduzem o risco de doenças crônicas, como doenças cardíacas e câncer ', N' Auxiliam na manutenção de um peso saudável ', N' Todas as opções anteriores estão corretas ', 4, N'Administração', N'Gestão dos Recursos Humanos II', N'hir2145')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (216, N'Admade', N'O que são alimentos transgênicos e quais são suas características? ', N' Alimentos que passaram por modificação genética para melhorar seu valor nutricional ', N' Alimentos que são produzidos sem o uso de agrotóxicos ', N' Alimentos que são cultivados utilizando métodos tradicionais de agricultura ', N' Alimentos que são cultivados sem a utilização de fertilizantes químicos ', 1, N'Administração', N'Gestão da Qualidade e da Produtividade', N'ion8860')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (217, N'Adm II', N'O que são alimentos orgânicos e quais são suas características? ', N' Alimentos que passaram por modificação genética para melhorar seu valor nutricional ', N' Alimentos que são produzidos sem o uso de agrotóxicos ', N' Alimentos que são cultivados utilizando métodos tradicionais de agricultura ', N' Alimentos que são cultivados sem a utilização de fertilizantes químicos ', 2, N'Administração', N'Gestão Mercadológica II', N'dir6582')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (218, N'Admção', N'O que é a intolerância à lactose e quais são seus sintomas? ', N' Uma alergia ao glúten, que causa danos ao intestino delgado ', N' Uma alergia às proteínas do leite, que causa inflamação na pele ', N' Uma dificuldade de digerir a lactose, o açúcar presente no leite, que causa desconforto gastrointestinal ', N' Uma alergia ao açúcar refinado, que causa alterações no humor ', 3, N'Administração', N'Gestão da Produção', N'rim3437')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (219, N'Adm II', N'O que são dietas da moda e quais são os seus riscos para a saúde? ', N' Dietas que são baseadas em alimentos específicos e que prometem resultados rápidos de perda de peso ', N' Dietas que são baseadas em alimentos frescos e naturais ', N' Dietas que são baseadas em alimentos de baixa caloria ', N' Dietas que são baseadas em alimentos processados ', 1, N'Administração', N'Gestão Financeira e Orçamentária II', N'arz9069')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (220, N'Adm VI', N'O que é administração de empresas? ', N' O processo de gerenciar recursos e atividades de uma organização para atingir seus objetivos ', N' A aplicação de técnicas de vendas para maximizar os lucros de uma empresa ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de estratégias de marketing para promover uma empresa ', 1, N'Administração', N'Seminário Integrador VI', N'suy4544')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (221, N'Admado', N'Quais são as principais funções de um administrador? ', N' Planejamento, organização, liderança e controle ', N' Produção, marketing, finanças e recursos humanos ', N' Vendas, distribuição, pesquisa e desenvolvimento ', N' Comunicação, negociação, tomada de decisão e resolução de conflitos ', 1, N'Administração', N'Pesquisa de Mercado', N'uma2216')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (222, N'Admção', N'O que é planejamento estratégico? ', N' O processo de definir os objetivos de longo prazo de uma organização e determinar as melhores maneiras de alcançá-los ', N' A atividade de criar estratégias de marketing para promover os produtos de uma empresa ', N' O processo de identificar e corrigir problemas operacionais em uma organização ', N' A atividade de definir metas de curto prazo para os funcionários de uma empresa ', 1, N'Administração', N'Treino de Pesquisa em Administração', N'ece1197')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (223, N'Admnal', N'O que é organização no contexto da administração? ', N' O processo de estabelecer a estrutura de uma empresa e designar tarefas e responsabilidades aos funcionários ', N' A atividade de vender produtos e serviços para os clientes ', N' O processo de motivar e liderar os funcionários para atingir os objetivos da empresa ', N' A atividade de avaliar o desempenho dos funcionários e fornecer feedback construtivo ', 1, N'Administração', N'Estratégia Organizacional', N'ega1908')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (224, N'Admção', N'O que é liderança? ', N' A capacidade de influenciar e motivar os outros para alcançar os objetivos da organização ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de estratégias de marketing para promover uma empresa ', N' A atividade de definir metas de curto prazo para os funcionários de uma empresa ', 1, N'Administração', N'Sistemas de Informação', N'ror8417')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (225, N'Admtos', N'O que é controle no contexto da administração? ', N' O processo de monitorar e avaliar o desempenho da organização e tomar medidas corretivas quando necessário ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de técnicas de vendas para maximizar os lucros de uma empresa ', N' A atividade de avaliar o desempenho dos funcionários e fornecer feedback construtivo ', 1, N'Administração', N'Gestão de Projetos', N'mas4503')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (226, N'AdmVII', N'O que é marketing? ', N' O processo de identificar, satisfazer e manter clientes por meio da criação, entrega e comunicação de valor ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de técnicas de vendas para maximizar os lucros de uma empresa ', N' A atividade de definir metas de curto prazo para os funcionários de uma empresa ', 1, N'Administração', N'Seminário Integrador VII', N'ise6475')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (227, N'Admios', N'O que é gestão de recursos humanos? ', N' O processo de recrutar, selecionar, treinar, motivar e reter os colaboradores de uma organização ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de estratégias de marketing para promover uma empresa ', N' A atividade de avaliar o desempenho dos funcionários e fornecer feedback construtivo ', 1, N'Administração', N'Empreeendedorismo e Gestão de Pequenos Negócios', N'ede1614')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (228, N'Admços', N'O que são indicadores de desempenho? ', N' Medidas quantitativas que ajudam a avaliar o progresso de uma organização em relação a seus objetivos ', N' Ferramentas de marketing utilizadas para promover uma empresa ', N' Documentos que descrevem as atividades e tarefas de um projeto ', N' Métodos de comunicação interna utilizados pelos funcionários de uma organização ', 1, N'Administração', N'Gestão de Serviços', N'uzi6489')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (229, N'AdmIII', N'O que é gestão da qualidade? ', N' O processo de garantir que os produtos e serviços de uma organização atendam ou excedam as expectativas dos clientes ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de técnicas de vendas para maximizar os lucros de uma empresa ', N' A atividade de avaliar o desempenho dos funcionários e fornecer feedback construtivo ', 1, N'Administração', N'Eletiva III', N'mph1314')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (230, N'Adm IV', N'O que é empreendedorismo? ', N' A capacidade de identificar oportunidades de negócio e desenvolver novas iniciativas ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de técnicas de vendas para maximizar os lucros de uma empresa ', N' A atividade de definir metas de curto prazo para os funcionários de uma empresa ', 1, N'Administração', N'Eletiva IV', N'urn6041')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (231, N'AdmIII', N'O que é inovação? ', N' A introdução de novas ideias, produtos, processos ou serviços em uma organização ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de técnicas de vendas para maximizar os lucros de uma empresa ', N' A atividade de definir metas de curto prazo para os funcionários de uma empresa ', 1, N'Administração', N'Seminário Integrador VIII', N'eol4606')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (232, N'NutA 1', N'O que são estratégias competitivas? ', N' Planos de ação utilizados por uma organização para se destacar e ganhar vantagem em relação aos concorrentes ', N' Técnicas de vendas utilizadas para maximizar os lucros de uma empresa ', N' Métodos de comunicação interna utilizados pelos funcionários de uma organização ', N' Documentos que descrevem as atividades e tarefas de um projeto ', 1, N'Nutrição', N'HISTOLOGIA 1', N'gak4591')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (233, N'NutMIA', N'O que é gestão financeira? ', N' O processo de planejamento, controle e análise das atividades financeiras de uma organização ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de estratégias de marketing para promover uma empresa ', N' A atividade de avaliar o desempenho dos funcionários e fornecer feedback construtivo ', 1, N'Nutrição', N'ANATOMIA', N'sur3574')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (234, N'NutA 1', N'O que é análise de mercado? ', N' A avaliação das condições e tendências do mercado em que uma organização opera ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de técnicas de vendas para maximizar os lucros de uma empresa ', N' A atividade de definir metas de curto prazo para os funcionários de uma empresa ', 1, N'Nutrição', N'BIOQUÍMICA 1', N'hol9432')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (235, N'NutADE', N'O que é gestão de projetos? ', N' O processo de planejamento, execução e controle de um projeto para alcançar seus objetivos dentro de prazos e recursos específicos ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de estratégias de marketing para promover uma empresa ', N' A atividade de avaliar o desempenho dos funcionários e fornecer feedback construtivo ', 1, N'Nutrição', N'SAÚDE E SOCIEDADE', N'epa5121')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (236, N'NutICA', N'O que é ética empresarial? ', N' Princípios e valores que orientam o comportamento ético em uma organização ', N' Técnicas de vendas utilizadas para maximizar os lucros de uma empresa ', N' Métodos de comunicação interna utilizados pelos funcionários de uma organização ', N' Documentos que descrevem as atividades e tarefas de um projeto ', 1, N'Nutrição', N'FILOSOFIA E METODOLOGIA CIENTÍFICA', N'ain4390')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (237, N'NutLAR', N'O que é responsabilidade social corporativa? ', N' O compromisso de uma organização em contribuir para o desenvolvimento sustentável e o bem-estar da sociedade ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de técnicas de vendas para maximizar os lucros de uma empresa ', N' A atividade de definir metas de curto prazo para os funcionários de uma empresa ', 1, N'Nutrição', N'BIOLOGIA CELULAR E MOLECULAR', N'exu6961')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (238, N'NutA 2', N'O que é gestão da cadeia de suprimentos? ', N' O processo de planejamento, implementação e controle do fluxo de materiais, informações e serviços desde o fornecedor até o cliente final ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de estratégias de marketing para promover uma empresa ', N' A atividade de avaliar o desempenho dos funcionários e fornecer feedback construtivo ', 1, N'Nutrição', N'HISTOLOGIA 2', N'urz4841')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (239, N'NutA 1', N'O que é gestão de mudanças? ', N' O processo de planejamento e implementação de mudanças organizacionais de forma eficaz e suave ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de técnicas de vendas para maximizar os lucros de uma empresa ', N' A atividade de definir metas de curto prazo para os funcionários de uma empresa ', 1, N'Nutrição', N'FISIOLOGIA 1', N'lor7563')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (240, N'NutICA', N'O que é gestão do conhecimento? ', N' O processo de capturar, armazenar, compartilhar e utilizar o conhecimento dentro de uma organização ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de estratégias de marketing para promover uma empresa ', N' A atividade de avaliar o desempenho dos funcionários e fornecer feedback construtivo ', 1, N'Nutrição', N'GENÉTICA', N'vey2345')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (241, N'NutA 1', N'Determinada situação caracteriza-se pela necessidade de ação imediata, existindo risco iminente de morte do paciente, que deve ser avaliado quanto ao nível de consciência, aos parâmetros vitais e à permeabilidade das vias aéreas. É correto associar a descrição precedente ao', N'conceito de urgência.', N'estado de paciente que apresenta luxação ou torção em membros', N'quadro de paciente com crise de asma brônquica', N'conceito de emergência.', 4, N'Nutrição', N'EPIDEMIOLOGIA 1', N'rid4479')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (242, N'NutA 1', N'Qual é a capital da Austrália? ', N' Sydney ', N' Melbourne ', N' Canberra ', N' Perth ', 3, N'Nutrição', N'BROMATOLOGIA 1', N'nar5004')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (243, N'NutA 2', N'Quem escreveu o livro "Dom Quixote"? ', N' William Shakespeare ', N' Miguel de Cervantes ', N' Franz Kafka ', N' Fyodor Dostoevsky ', 2, N'Nutrição', N'BIOQUÍMICA 2', N'bae7596')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (244, N'NutGIA', N'Qual é o maior oceano do mundo? ', N' Oceano Atlântico ', N' Oceano Pacífico ', N' Oceano Índico ', N' Oceano Ártico ', 2, N'Nutrição', N'MICROBIOLOGIA', N'las5763')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (245, N'NutGIA', N'Qual é o maior estado brasileiro em área territorial? ', N' Amazonas ', N' Minas Gerais ', N' São Paulo ', N' Bahia ', 1, N'Nutrição', N'PARASITOLOGIA', N'bor6342')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (246, N'NutA 2', N'Quem pintou a obra "A Última Ceia"? ', N' Vincent van Gogh ', N' Pablo Picasso ', N' Leonardo da Vinci ', N' Michelangelo ', 3, N'Nutrição', N'FISIOLOGIA 2', N'dar1906')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (247, N'NutÚDE', N'Qual é a moeda oficial do Japão? ', N' Yen ', N' Euro ', N' Dólar ', N' Real ', 1, N'Nutrição', N'POLÍTICAS PÚBLICAS DE SAÚDE', N'guk8090')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (248, N'NutA 2', N'Qual é o maior deserto do mundo? ', N' Deserto do Saara ', N' Deserto do Atacama ', N' Deserto da Arábia ', N' Deserto da Namíbia ', 1, N'Nutrição', N'EPIDEMIOLOGIA 2', N'ahu2230')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (249, N'NutA 2', N'Qual é a montanha mais alta do mundo? ', N' Monte Everest ', N' Monte Kilimanjaro ', N' Monte Aconcágua ', N' Monte Fuji ', 1, N'Nutrição', N'BROMATOLOGIA 2', N'buk8475')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (250, N'NutICA', N'Em qual país nasceu o famoso físico Albert Einstein? ', N' Alemanha ', N' Estados Unidos ', N' Áustria ', N' Suíça ', 1, N'Nutrição', N'BIOESTATÍSTICA', N'oti2248')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (251, N'NutGIA', N'Qual é o maior animal terrestre? ', N' Elefante africano ', N' Girafa ', N' Rinoceronte ', N' Hipopótamo ', 1, N'Nutrição', N'PATOLOGIA', N'lan8778')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (252, N'NutGIA', N'Quem foi o primeiro presidente dos Estados Unidos? ', N' Abraham Lincoln ', N' George Washington ', N' Thomas Jefferson ', N' John F. Kennedy ', 2, N'Nutrição', N'IMUNOLOGIA', N'rao4735')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (253, N'NutTOS', N'Qual é a maior cordilheira do mundo? ', N' Montanhas Rochosas ', N' Cordilheira dos Andes ', N' Montanhas dos Himalaias ', N' Cordilheira dos Alpes ', 3, N'Nutrição', N'HIGIENE E MICROBIOLOGIA DE ALIMENTOS', N'val9012')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (254, N'NutICA', N'Qual é o símbolo químico do elemento ouro? ', N' Au ', N' Ag ', N' Fe ', N' Pb ', 1, N'Nutrição', N'TÉCNICA DIETÉTICA', N'ole9267')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (255, N'NutNAL', N'Quem foi o autor da obra "Romeu e Julieta"? ', N' William Shakespeare ', N' Charles Dickens ', N' Jane Austen ', N' Mark Twain ', 1, N'Nutrição', N'AVALIAÇÃO NUTRICIONAL', N'sgi6619')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (256, N'NutGIA', N'Qual é o maior animal marinho? ', N' Baleia azul ', N' Tubarão branco ', N' Golfinho ', N' Polvo gigante ', 1, N'Nutrição', N'PSICOLOGIA', N'gal3576')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (257, N'NutÚDE', N'Qual é o maior produtor mundial de café? ', N' Brasil ', N' Colômbia ', N' Vietnã ', N' Estados Unidos ', 1, N'Nutrição', N'EDUCAÇÃO EM SAÚDE', N'zie8984')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (258, N'NutNAL', N'Qual é o instrumento musical conhecido como "rei dos instrumentos"? ', N' Violino ', N' Piano ', N' Guitarra ', N' Trompete ', 2, N'Nutrição', N'SEMIOLOGIA NUTRICIONAL', N'iol4470')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (259, N'NutTIL', N'Quem foi o líder político sul-africano que lutou contra o apartheid? ', N' Nelson Mandela ', N' Desmond Tutu ', N' Thabo Mbeki ', N' F. W. de Klerk ', 1, N'Nutrição', N'NUTRIÇÃO MATERNO INFANTIL', N'bie6773')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (260, N'NutOSO', N'Qual é a cor oposta ao vermelho no círculo cromático? ', N' Amarelo ', N' Azul ', N' Verde ', N' Roxo ', 2, N'Nutrição', N'NUTRIÇÃO DO ADULTO E DO IDOSO', N'nza2086')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (261, N'NutÚDE', N'Qual é o nome do famoso quadro de Leonardo da Vinci que retrata uma mulher com um sorriso enigmático? ', N' A Última Ceia ', N' Mona Lisa ', N' A Criação de Adão ', N' O Nascimento de Vênus ', 2, N'Nutrição', N'ADMINISTRAÇÃO E PLANEJAMENTO EM SAÚDE', N'dul8098')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (262, N'NutRTE', N'Quem é considerado o pai da psicanálise? ', N' Carl Jung ', N' Sigmund Freud ', N' Ivan Pavlov ', N' B. F. Skinner ', 2, N'Nutrição', N'NUTRIÇÃO NO ESPORTE', N'hub5224')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (263, N'NutA 1', N'Qual é o metal líquido à temperatura ambiente? ', N' Ouro ', N' Prata ', N' Chumbo ', N' Mercúrio ', 4, N'Nutrição', N'NUTRIÇÃO CLÍNICA 1', N'lar7960')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (264, N'NutL 1', N'Em que país nasceu o famoso pintor Pablo Picasso? ', N' Espanha ', N' França ', N' Itália ', N' Holanda ', 1, N'Nutrição', N'NUTRIÇÃO CLÍNICA MATERNO INFANTIL 1', N'fia8204')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (265, N'NutS 1', N'Qual é o maior país da América do Sul em área territorial? ', N' Brasil ', N' Argentina ', N' Colômbia ', N' Peru ', 1, N'Nutrição', N'GESTÃO DA QUALIDADE NA PRODUÇÃO DE ALIMENTOS 1', N'rgo9694')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (266, N'NutA 1', N'Quem escreveu o livro "1984"? ', N' George Orwell ', N' Aldous Huxley ', N' Ray Bradbury ', N' J. R. R. Tolkien ', 1, N'Nutrição', N'NUTRIÇÃO EM SAÚDE PÚBLICA 1', N'eon5859')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (267, N'NutNAL', N'Qual é o maior órgão do corpo humano? ', N' Cérebro ', N' Fígado ', N' Coração ', N' Pele ', 4, N'Nutrição', N'ÉTICA E EXERCÍCIO PROFISSIONAL', N'dor3707')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (268, N'NutA 2', N'Qual é o nome da famosa escultura grega que representa a deusa Afrodite? ', N' Vênus de Milo ', N' David ', N' Pietà ', N' Discóbolo ', 1, N'Nutrição', N'NUTRIÇÃO CLÍNICA 2', N'ura8248')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (269, N'NutL 2', N'Quem foi o primeiro homem a pisar na Lua? ', N' Buzz Aldrin ', N' Neil Armstrong ', N' Yuri Gagarin ', N' Alan Shepard ', 2, N'Nutrição', N'NUTRIÇÃO CLÍNICA MATERNO INFANTIL 2', N'mph5384')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (270, N'NutS 2', N'Qual é o maior rio do mundo em volume de água? ', N' Nilo ', N' Amazonas ', N' Yangtzé ', N' Mississipi ', 2, N'Nutrição', N'GESTÃO DA QUALIDADE NA PRODUÇÃO DE ALIMENTOS 2', N'gan1983')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (271, N'NutA 2', N'O que significa a sigla HTML? ', N' HyperText Markup Language ', N' Home Tool Markup Language ', N' Hyperlink and Text Markup Language ', N' Hyper Transfer Markup Language ', 1, N'Nutrição', N'NUTRIÇÃO EM SAÚDE PÚBLICA 2', N'NBZ8943')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (272, N'NutA 3', N'Qual é a linguagem de programação mais popular no desenvolvimento de aplicações móveis? ', N' Java ', N' C# ', N' Swift ', N' Python ', 3, N'Nutrição', N'NUTRIÇÃO CLÍNICA 3', N'MWV0644')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (273, N'NutS 3', N'O que é um algoritmo? ', N' Uma sequência finita de instruções para resolver um problema ', N' Um tipo de dado utilizado para armazenar informações ', N' Um sistema operacional de código aberto ', N' Uma linguagem de programação popular ', 1, N'Nutrição', N'GESTÃO DA QUALIDADE NA PRODUÇÃO DE ALIMENTOS 3', N'KAN6115')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (274, N'NutA 3', N'O que significa a sigla CPU? ', N' Central Processing Unit ', N' Computer Programming Unit ', N' Central Program Unit ', N' Computer Power Unit ', 1, N'Nutrição', N'NUTRIÇÃO EM SAÚDE PÚBLICA 3', N'AUK2645')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (275, N'NutTCC', N'O que é um banco de dados relacional? ', N' Um conjunto de arquivos de texto que armazenam informações ', N' Um sistema que permite a conexão entre diferentes dispositivos ', N' Uma linguagem de programação específica para consultas ', N' Uma estrutura de dados que organiza informações em tabelas relacionadas ', 4, N'Nutrição', N'METODOLOGIA CIENTÍFICA APLICADA AO TCC', N'JUA0949')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (276, N'NutICA', N'O que é um loop em programação? ', N' Um erro que faz o programa travar ', N' Uma instrução utilizada para interromper a execução de um programa ', N' Uma estrutura de controle que repete um bloco de código várias vezes ', N' Um tipo de dado utilizado para armazenar valores numéricos ', 3, N'Nutrição', N'ESTÁGIO SUPERVISIONADO EM NUTRIÇÃO CLÍNICA', N'JVI7625')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (277, N'NutTOS', N'O que significa a sigla CSS? ', N' Cascading Style Sheets ', N' Computer Style Sheets ', N' Creative Style Sheets ', N' Content Style Sheets ', 1, N'Nutrição', N'ESTÁGIO SUPERVISIONADO EM GESTÃO DA QUALIDADE NA PRODUÇÃO DE ALIMENTOS', N'MRG3866')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (278, N'NutICA', N'Qual é a função do sistema operacional? ', N' Controlar e coordenar o hardware e o software de um computador ', N' Desenvolver aplicativos e programas ', N' Gerenciar a segurança da rede ', N' Fornecer energia ao computador ', 1, N'Nutrição', N'ESTÁGIO SUPERVISIONADO EM NUTRIÇÃO EM SAÚDE PÚBLICA', N'KAV9299')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (279, N'Ciêo 1', N'O que é um firewall? ', N' Um dispositivo utilizado para armazenar cópias de segurança de dados ', N' Um programa que protege um computador de ameaças externas ', N' Um tipo de conexão de rede sem fio ', N' Um software utilizado para criar e editar imagens ', 2, N'Ciência da Computação', N'Programação 1', N'IEZ4479')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (280, N'Ciêção', N'O que é o protocolo HTTP? ', N' Hypertext Transfer Protocol ', N' Hypertext Transport Protocol ', N' Home Tool Transfer Protocol ', N' Hyperlink Text Protocol ', 1, N'Ciência da Computação', N'Lógica para Computação', N'JVB3964')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (281, N'Ciêica', N'O que significa a sigla IP? ', N' Internet Provider ', N' Internet Protocol ', N' Internal Port ', N' Internet Power ', 2, N'Ciência da Computação', N'Computação, Sociedade e Ética', N'LWC6137')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (282, N'Ciêeta', N'Qual é a linguagem de programação mais utilizada para desenvolvimento web? ', N' Python ', N' JavaScript ', N' C++ ', N' Ruby ', 2, N'Ciência da Computação', N'Matemática Discreta', N'KEG8687')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (283, N'Ciêral', N'O que é um arquivo no contexto da computação? ', N' Um dispositivo utilizado para armazenar informações ', N' Um conjunto de instruções para um programa executar ', N' Uma pasta que organiza arquivos e documentos ', N' Uma sequência de bits armazenada em um meio de armazenamento ', 4, N'Ciência da Computação', N'Cálculo Diferencial e Integral', N'MSD2280')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (284, N'Ciêo 1', N'O que é um servidor web? ', N' Um dispositivo que fornece energia para outros dispositivos ', N' Um software que processa solicitações e entrega páginas web aos clientes ', N' Uma conexão de rede que permite compartilhamento de arquivos ', N' Um sistema operacional específico para servidores ', 2, N'Ciência da Computação', N'Programação 1', N'GPK4812')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (285, N'Ciêção', N'O que é uma API? ', N' Application Programming Interface ', N' Application Program Interface ', N' Advanced Program Interface ', N' Automated Program Interface ', 1, N'Ciência da Computação', N'Lógica para Computação', N'HQD3996')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (286, N'Ciêica', N'O que é um framework? ', N' Uma biblioteca de funções utilizada no desenvolvimento de software ', N' Um tipo de processador utilizado em servidores ', N' Um dispositivo que armazena dados temporariamente ', N' Um sistema operacional de código aberto ', 1, N'Ciência da Computação', N'Computação, Sociedade e Ética', N'NEU6018')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (287, N'Ciêeta', N'O que é a memória RAM? ', N' Random Access Memory ', N' Read-Only Memory ', N' Random Arithmetic Memory ', N' Real Application Memory ', 1, N'Ciência da Computação', N'Matemática Discreta', N'KDD1657')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (288, N'Ciêral', N'O que é a linguagem de programação Python conhecida por enfatizar? ', N' Legibilidade do código ', N' Performance de execução ', N' Criação de interfaces gráficas ', N' Programação orientada a objetos ', 1, N'Ciência da Computação', N'Cálculo Diferencial e Integral', N'urn4229')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (289, N'Ciêo 1', N'O que é a linguagem de programação C conhecida por enfatizar? ', N' Legibilidade do código ', N' Performance de execução ', N' Criação de interfaces gráficas ', N' Programação orientada a objetos ', 2, N'Ciência da Computação', N'Programação 1', N'xuy8914')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (290, N'Ciêção', N'O que é o conceito de "loop infinito" em programação? ', N' Um erro que ocorre durante a compilação de um programa ', N' Uma estrutura de controle que repete um bloco de código várias vezes ', N' Uma situação em que um programa fica preso em uma repetição infinita ', N' Um tipo de dado que não pode ser alterado após a sua criação ', 3, N'Ciência da Computação', N'Lógica para Computação', N'dan3745')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (291, N'Ciêica', N'O que é um servidor DNS? ', N' Domain Name System ', N' Dynamic Network Server ', N' Data Network Security ', N' Digital Network Service ', 1, N'Ciência da Computação', N'Computação, Sociedade e Ética', N'abo6170')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (292, N'Ciêeta', N'O que é o protocolo FTP? ', N' File Transfer Protocol ', N' File Transport Protocol ', N' File Translation Protocol ', N' File Tracking Protocol ', 1, N'Ciência da Computação', N'Matemática Discreta', N'coy6811')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (293, N'Ciêral', N'O que é um bug de software? ', N' Um recurso extra em um programa ', N' Um erro que ocorre durante a execução de um programa ', N' Uma parte do código-fonte que precisa ser otimizada ', N' Um problema relacionado à conexão de rede ', 2, N'Ciência da Computação', N'Cálculo Diferencial e Integral', N'res8428')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (294, N'Ciêo 1', N'O que é a programação orientada a objetos? ', N' Um método para otimizar o desempenho de um programa ', N' Um paradigma de programação que organiza o código em objetos ', N' Uma linguagem de programação específica para desenvolvimento web ', N' Um tipo de estrutura de dados utilizada para armazenar informações ', 2, N'Ciência da Computação', N'Programação 1', N'non2130')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (295, N'Ciêção', N'Quem foi o autor do famoso livro "O Pequeno Príncipe"? ', N' Antoine de Saint-Exupéry ', N' Charles Dickens ', N' F. Scott Fitzgerald ', N' Jules Verne ', 1, N'Ciência da Computação', N'Lógica para Computação', N'npu4991')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (296, N'Ciêica', N'Qual é o nome da pintura famosa que retrata uma mulher sorridente com um vestido de bolinhas? ', N' A Noite Estrelada ', N' O Grito ', N' Dama com Arminho ', N' Moça com Brinco de Pérola ', 4, N'Ciência da Computação', N'Computação, Sociedade e Ética', N'odu7088')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (297, N'Ciêeta', N'Qual é o país com a maior população do mundo? ', N' Índia ', N' Estados Unidos ', N' China ', N' Brasil ', 3, N'Ciência da Computação', N'Matemática Discreta', N'rpa5198')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (298, N'Ciêral', N'Qual é o nome da maior cadeia montanhosa da América do Norte? ', N' Montanhas Rochosas ', N' Montanhas dos Apalaches ', N' Montanhas dos Andes ', N' Montanhas dos Apalaches ', 1, N'Ciência da Computação', N'Cálculo Diferencial e Integral', N'aen2602')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (299, N'Ciêo 1', N'Qual é o maior animal terrestre? ', N' Elefante africano ', N' Girafa ', N' Rinoceronte ', N' Hipopótamo ', 1, N'Ciência da Computação', N'Programação 1', N'hic9001')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (300, N'Ciêção', N'Quem pintou a obra "A Persistência da Memória", que retrata relógios derretendo? ', N' Salvador Dalí ', N' Pablo Picasso ', N' Frida Kahlo ', N' Claude Monet ', 1, N'Ciência da Computação', N'Lógica para Computação', N'swa1115')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (301, N'Ciêica', N'Qual é o nome da pintura famosa que retrata a deusa grega Afrodite emergindo do mar em uma concha? ', N' Vênus de Milo ', N' Moça com Brinco de Pérola ', N' A Criação de Adão ', N' O Nascimento de Vênus ', 4, N'Ciência da Computação', N'Computação, Sociedade e Ética', N'fim3140')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (302, N'Ciêeta', N'Qual é o maior deserto do mundo? ', N' Deserto do Saara ', N' Deserto do Atacama ', N' Deserto da Arábia ', N' Deserto da Namíbia ', 1, N'Ciência da Computação', N'Matemática Discreta', N'ofa6375')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (303, N'Ciêral', N'Quem foi o primeiro presidente dos Estados Unidos? ', N' Abraham Lincoln ', N' George Washington ', N' Thomas Jefferson ', N' John F. Kennedy ', 2, N'Ciência da Computação', N'Cálculo Diferencial e Integral', N'bor4556')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (304, N'Ciêo 1', N'Qual é o maior planeta do Sistema Solar? ', N' Terra ', N' Júpiter ', N' Saturno ', N' Marte ', 2, N'Ciência da Computação', N'Programação 1', N'ian8344')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (305, N'Ciêção', N'Qual é a capital da França? ', N' Paris ', N' Roma ', N' Berlim ', N' Londres ', 1, N'Ciência da Computação', N'Lógica para Computação', N'hir2145')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (306, N'Ciêica', N'Qual é o maior animal marinho? ', N' Baleia azul ', N' Tubarão branco ', N' Golfinho ', N' Polvo gigante ', 1, N'Ciência da Computação', N'Computação, Sociedade e Ética', N'ion8860')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (307, N'Ciêeta', N'Quem foi o autor da obra "1984"? ', N' George Orwell ', N' Aldous Huxley ', N' Ray Bradbury ', N' J. R. R. Tolkien ', 1, N'Ciência da Computação', N'Matemática Discreta', N'dir6582')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (308, N'Ciêral', N'Qual é o maior produtor mundial de café? ', N' Brasil ', N' Colômbia ', N' Vietnã ', N' Estados Unidos ', 1, N'Ciência da Computação', N'Cálculo Diferencial e Integral', N'rim3437')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (309, N'Ciêo 1', N'Qual é o metal líquido à temperatura ambiente? ', N' Ouro ', N' Prata ', N' Chumbo ', N' Mercúrio ', 4, N'Ciência da Computação', N'Programação 1', N'arz9069')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (310, N'Ciêção', N'Em que país nasceu o famoso pintor Pablo Picasso? ', N' Espanha ', N' França ', N' Itália ', N' Holanda ', 1, N'Ciência da Computação', N'Lógica para Computação', N'suy4544')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (311, N'Ciêica', N'Quem foi o líder político sul-africano que lutou contra o apartheid? ', N' Nelson Mandela ', N' Desmond Tutu ', N' Thabo Mbeki ', N' F. W. de Klerk ', 1, N'Ciência da Computação', N'Computação, Sociedade e Ética', N'uma2216')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (312, N'Ciêeta', N'Qual é a cor oposta ao vermelho no círculo cromático? ', N' Amarelo ', N' Azul ', N' Verde ', N' Roxo ', 2, N'Ciência da Computação', N'Matemática Discreta', N'ece1197')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (313, N'Ciêral', N'Qual é o nome da famosa escultura grega que representa a deusa Afrodite? ', N' Vênus de Milo ', N' David ', N' Pietà ', N' Discóbolo ', 1, N'Ciência da Computação', N'Cálculo Diferencial e Integral', N'ega1908')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (314, N'Ciêo 1', N'Quem foi o primeiro homem a pisar na Lua? ', N' Buzz Aldrin ', N' Neil Armstrong ', N' Yuri Gagarin ', N' Alan Shepard ', 2, N'Ciência da Computação', N'Programação 1', N'ror8417')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (315, N'Ciêção', N'O que é a pirâmide alimentar? ', N' Um modelo gráfico que representa os diferentes grupos de alimentos e suas proporções recomendadas na alimentação saudável ', N' Uma técnica de preparo de alimentos utilizada em dietas específicas ', N' Uma tabela nutricional que lista o valor calórico dos alimentos ', N' Um método de contar calorias para controle de peso ', 1, N'Ciência da Computação', N'Lógica para Computação', N'mas4503')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (316, N'Ciêica', N'O que são nutrientes essenciais? ', N' Nutrientes encontrados apenas em alimentos orgânicos ', N' Nutrientes necessários para o bom funcionamento do organismo, mas que não são produzidos pelo corpo ', N' Nutrientes encontrados exclusivamente em alimentos de origem animal ', N' Nutrientes que devem ser consumidos em grandes quantidades para uma alimentação equilibrada ', 2, N'Ciência da Computação', N'Computação, Sociedade e Ética', N'ise6475')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (317, N'Ciêeta', N'Quais são as principais funções dos carboidratos no organismo? ', N' Fornecer energia para as células e tecidos ', N' Construir músculos e ossos ', N' Regular o funcionamento do sistema nervoso ', N' Auxiliar na absorção de vitaminas ', 1, N'Ciência da Computação', N'Matemática Discreta', N'ede1614')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (318, N'Ciêral', N'O que são alimentos fontes de proteínas? ', N' Alimentos que contêm exclusivamente proteínas em sua composição ', N' Alimentos que fornecem todos os nutrientes necessários para o corpo ', N' Alimentos que são ricos em proteínas, como carnes, peixes, ovos e leguminosas ', N' Alimentos que não contêm gorduras em sua composição ', 3, N'Ciência da Computação', N'Cálculo Diferencial e Integral', N'uzi6489')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (319, N'Ciêo 1', N'O que é a gordura saturada? ', N' Um tipo de gordura saudável encontrada em alimentos como abacates e nozes ', N' Um tipo de gordura líquida encontrada em óleos vegetais ', N' Um tipo de gordura sólida encontrada em carnes gordurosas e laticínios ', N' Um tipo de gordura trans encontrada em alimentos processados e frituras ', 3, N'Ciência da Computação', N'Programação 1', N'mph1314')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (320, N'Ciêção', N'O que são vitaminas e quais são suas principais funções no organismo? ', N' Nutrientes que fornecem energia para o corpo ', N' Nutrientes que ajudam na formação dos músculos ', N' Substâncias que auxiliam na digestão dos alimentos ', N' Substâncias que são necessárias em pequenas quantidades para o funcionamento adequado do organismo ', 4, N'Ciência da Computação', N'Lógica para Computação', N'urn6041')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (321, N'Ciêica', N'O que são minerais e quais são suas principais funções no organismo? ', N' Nutrientes que fornecem energia para o corpo ', N' Nutrientes que ajudam na formação dos músculos ', N' Substâncias que auxiliam na digestão dos alimentos ', N' Substâncias que são necessárias em pequenas quantidades para o funcionamento adequado do organismo ', 4, N'Ciência da Computação', N'Computação, Sociedade e Ética', N'eol4606')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (322, N'Ciêeta', N'O que é a fibra alimentar e qual é sua importância na alimentação? ', N' Um nutriente essencial para a formação dos músculos ', N' Um tipo de carboidrato que não é digerido pelo organismo, contribuindo para o bom funcionamento do intestino ', N' Um tipo de gordura saudável encontrada em peixes e nozes ', N' Um tipo de vitamina que auxilia na absorção de outros nutrientes ', 2, N'Ciência da Computação', N'Matemática Discreta', N'gak4591')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (323, N'Ciêral', N'O que é a água e qual é sua importância para o organismo? ', N' Um nutriente essencial para a formação dos músculos ', N' Uma substância que fornece energia para o corpo ', N' Um componente fundamental das células e dos tecidos do corpo humano ', N' Uma substância que auxilia na digestão dos alimentos ', 3, N'Ciência da Computação', N'Cálculo Diferencial e Integral', N'sur3574')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (324, N'Ciêo 1', N'O que são alimentos integrais e quais são seus benefícios para a saúde? ', N' Alimentos que não contêm aditivos ou conservantes ', N' Alimentos que são produzidos organicamente ', N' Alimentos que não passaram por processamento industrial e que mantêm todos os seus componentes originais ', N' Alimentos que são fontes de nutrientes essenciais para o corpo ', 3, N'Ciência da Computação', N'Programação 1', N'hol9432')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (325, N'Ciêção', N'O que é a dieta vegetariana? ', N' Uma dieta que exclui o consumo de carne vermelha ', N' Uma dieta que exclui o consumo de qualquer alimento de origem animal ', N' Uma dieta que inclui apenas alimentos de origem vegetal ', N' Uma dieta que exclui o consumo de alimentos processados ', 3, N'Ciência da Computação', N'Lógica para Computação', N'epa5121')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (326, N'Ciêica', N'O que é a dieta vegana? ', N' Uma dieta que exclui o consumo de carne vermelha ', N' Uma dieta que exclui o consumo de qualquer alimento de origem animal ', N' Uma dieta que inclui apenas alimentos de origem vegetal ', N' Uma dieta que exclui o consumo de alimentos processados ', 2, N'Ciência da Computação', N'Computação, Sociedade e Ética', N'ain4390')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (327, N'Ciêeta', N'O que é a anemia e quais são suas principais causas? ', N' Uma doença causada pela falta de ferro, que resulta na redução da produção de glóbulos vermelhos no sangue ', N' Uma doença causada pela falta de vitamina C, que resulta na fragilidade dos ossos ', N' Uma doença causada pela falta de vitamina D, que resulta na perda de massa muscular ', N' Uma doença causada pela falta de cálcio, que resulta no enfraquecimento dos dentes ', 1, N'Ciência da Computação', N'Matemática Discreta', N'exu6961')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (328, N'Ciêral', N'Quais são as principais fontes de ferro na alimentação? ', N' Carnes vermelhas e laticínios ', N' Frutas e vegetais ', N' Peixe e frutos do mar ', N' Leguminosas, como feijões e lentilhas ', 4, N'Ciência da Computação', N'Cálculo Diferencial e Integral', N'urz4841')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (329, N'Ciêo 1', N'O que é o colesterol e como ele pode afetar a saúde? ', N' Uma substância encontrada apenas em alimentos de origem animal ', N' Uma substância que auxilia na absorção de nutrientes ', N' Uma substância que é produzida pelo fígado e que desempenha funções importantes no organismo ', N' Uma substância que, em excesso, pode se acumular nas artérias e aumentar o risco de doenças cardíacas ', 4, N'Ciência da Computação', N'Programação 1', N'lor7563')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (330, N'Ciêção', N'O que são antioxidantes e qual é o seu papel na saúde? ', N' Substâncias que auxiliam na absorção de gorduras ', N' Substâncias que protegem as células contra danos causados pelos radicais livres ', N' Substâncias que são necessárias para a formação dos ossos ', N' Substâncias que promovem o ganho de massa muscular ', 2, N'Ciência da Computação', N'Lógica para Computação', N'vey2345')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (331, N'Ciêica', N'O que é a obesidade e quais são seus riscos para a saúde? ', N' O acúmulo excessivo de gordura corporal, que aumenta o risco de doenças como diabetes, hipertensão e doenças cardíacas ', N' A falta de gordura corporal, que aumenta o risco de desnutrição e problemas de saúde relacionados ', N' A falta de nutrientes essenciais na alimentação, que resulta em baixo peso e problemas de saúde ', N' A presença de músculos pouco desenvolvidos, que resulta em baixo peso e problemas de saúde ', 1, N'Ciência da Computação', N'Computação, Sociedade e Ética', N'rid4479')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (332, N'Ciêeta', N'O que são alimentos funcionais e quais são seus benefícios? ', N' Alimentos que não contêm aditivos ou conservantes ', N' Alimentos que são produzidos organicamente ', N' Alimentos que além de nutrição básica, fornecem benefícios adicionais para a saúde ', N' Alimentos que são fontes de nutrientes essenciais para o corpo ', 3, N'Ciência da Computação', N'Matemática Discreta', N'nar5004')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (333, N'Ciêral', N'O que é o índice glicêmico de um alimento? ', N' A quantidade de gordura presente em um alimento ', N' A quantidade de carboidratos presentes em um alimento ', N' A velocidade com que um alimento eleva os níveis de açúcar no sangue ', N' A quantidade de proteínas presentes em um alimento ', 3, N'Ciência da Computação', N'Cálculo Diferencial e Integral', N'bae7596')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (334, N'Adma I', N'O que são probióticos e qual é a sua importância para a saúde intestinal? ', N' Bactérias benéficas que auxiliam na digestão dos alimentos e no equilíbrio da flora intestinal ', N' Vitaminas que auxiliam na absorção de nutrientes ', N' Minerais que são essenciais para a formação dos ossos ', N' Substâncias que promovem o ganho de massa muscular ', 1, N'Administração', N'Introdução à Economia I', N'las5763')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (335, N'Admo I', N'Quais são os benefícios do consumo de frutas e vegetais para a saúde? ', N' Fornecem vitaminas e minerais essenciais para o corpo ', N' Reduzem o risco de doenças crônicas, como doenças cardíacas e câncer ', N' Auxiliam na manutenção de um peso saudável ', N' Todas as opções anteriores estão corretas ', 4, N'Administração', N'Teoria Geral da Administração I', N'bor6342')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (336, N'Adma I', N'O que são alimentos transgênicos e quais são suas características? ', N' Alimentos que passaram por modificação genética para melhorar seu valor nutricional ', N' Alimentos que são produzidos sem o uso de agrotóxicos ', N' Alimentos que são cultivados utilizando métodos tradicionais de agricultura ', N' Alimentos que são cultivados sem a utilização de fertilizantes químicos ', 1, N'Administração', N'Contabilidade Básica I', N'dar1906')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (337, N'Admado', N'O que são alimentos orgânicos e quais são suas características? ', N' Alimentos que passaram por modificação genética para melhorar seu valor nutricional ', N' Alimentos que são produzidos sem o uso de agrotóxicos ', N' Alimentos que são cultivados utilizando métodos tradicionais de agricultura ', N' Alimentos que são cultivados sem a utilização de fertilizantes químicos ', 2, N'Administração', N'Instituições do Direito Público e Privado', N'guk8090')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (338, N'Admtal', N'O que é a intolerância à lactose e quais são seus sintomas? ', N' Uma alergia ao glúten, que causa danos ao intestino delgado ', N' Uma alergia às proteínas do leite, que causa inflamação na pele ', N' Uma dificuldade de digerir a lactose, o açúcar presente no leite, que causa desconforto gastrointestinal ', N' Uma alergia ao açúcar refinado, que causa alterações no humor ', 3, N'Administração', N'Português Instrumental', N'ahu2230')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (339, N'Adma I', N'O que são dietas da moda e quais são os seus riscos para a saúde? ', N' Dietas que são baseadas em alimentos específicos e que prometem resultados rápidos de perda de peso ', N' Dietas que são baseadas em alimentos frescos e naturais ', N' Dietas que são baseadas em alimentos de baixa caloria ', N' Dietas que são baseadas em alimentos processados ', 1, N'Administração', N'Estatística I', N'buk8475')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (340, N'Adma I', N'O que é administração de empresas? ', N' O processo de gerenciar recursos e atividades de uma organização para atingir seus objetivos ', N' A aplicação de técnicas de vendas para maximizar os lucros de uma empresa ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de estratégias de marketing para promover uma empresa ', 1, N'Administração', N'Matemática I', N'oti2248')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (341, N'Admr I', N'Quais são as principais funções de um administrador? ', N' Planejamento, organização, liderança e controle ', N' Produção, marketing, finanças e recursos humanos ', N' Vendas, distribuição, pesquisa e desenvolvimento ', N' Comunicação, negociação, tomada de decisão e resolução de conflitos ', 1, N'Administração', N'Seminário Integrador I', N'lan8778')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (342, N'Adma I', N'O que é planejamento estratégico? ', N' O processo de definir os objetivos de longo prazo de uma organização e determinar as melhores maneiras de alcançá-los ', N' A atividade de criar estratégias de marketing para promover os produtos de uma empresa ', N' O processo de identificar e corrigir problemas operacionais em uma organização ', N' A atividade de definir metas de curto prazo para os funcionários de uma empresa ', 1, N'Administração', N'Introdução à Economia I', N'rao4735')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (343, N'Admo I', N'O que é organização no contexto da administração? ', N' O processo de estabelecer a estrutura de uma empresa e designar tarefas e responsabilidades aos funcionários ', N' A atividade de vender produtos e serviços para os clientes ', N' O processo de motivar e liderar os funcionários para atingir os objetivos da empresa ', N' A atividade de avaliar o desempenho dos funcionários e fornecer feedback construtivo ', 1, N'Administração', N'Teoria Geral da Administração I', N'val9012')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (344, N'Adma I', N'O que é liderança? ', N' A capacidade de influenciar e motivar os outros para alcançar os objetivos da organização ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de estratégias de marketing para promover uma empresa ', N' A atividade de definir metas de curto prazo para os funcionários de uma empresa ', 1, N'Administração', N'Contabilidade Básica I', N'ole9267')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (345, N'Admado', N'O que é controle no contexto da administração? ', N' O processo de monitorar e avaliar o desempenho da organização e tomar medidas corretivas quando necessário ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de técnicas de vendas para maximizar os lucros de uma empresa ', N' A atividade de avaliar o desempenho dos funcionários e fornecer feedback construtivo ', 1, N'Administração', N'Instituições do Direito Público e Privado', N'sgi6619')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (346, N'Admtal', N'O que é marketing? ', N' O processo de identificar, satisfazer e manter clientes por meio da criação, entrega e comunicação de valor ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de técnicas de vendas para maximizar os lucros de uma empresa ', N' A atividade de definir metas de curto prazo para os funcionários de uma empresa ', 1, N'Administração', N'Português Instrumental', N'gal3576')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (347, N'Adma I', N'O que é gestão de recursos humanos? ', N' O processo de recrutar, selecionar, treinar, motivar e reter os colaboradores de uma organização ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de estratégias de marketing para promover uma empresa ', N' A atividade de avaliar o desempenho dos funcionários e fornecer feedback construtivo ', 1, N'Administração', N'Estatística I', N'zie8984')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (348, N'Adma I', N'O que são indicadores de desempenho? ', N' Medidas quantitativas que ajudam a avaliar o progresso de uma organização em relação a seus objetivos ', N' Ferramentas de marketing utilizadas para promover uma empresa ', N' Documentos que descrevem as atividades e tarefas de um projeto ', N' Métodos de comunicação interna utilizados pelos funcionários de uma organização ', 1, N'Administração', N'Matemática I', N'iol4470')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (349, N'Admr I', N'O que é gestão da qualidade? ', N' O processo de garantir que os produtos e serviços de uma organização atendam ou excedam as expectativas dos clientes ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de técnicas de vendas para maximizar os lucros de uma empresa ', N' A atividade de avaliar o desempenho dos funcionários e fornecer feedback construtivo ', 1, N'Administração', N'Seminário Integrador I', N'bie6773')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (350, N'Adma I', N'O que é empreendedorismo? ', N' A capacidade de identificar oportunidades de negócio e desenvolver novas iniciativas ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de técnicas de vendas para maximizar os lucros de uma empresa ', N' A atividade de definir metas de curto prazo para os funcionários de uma empresa ', 1, N'Administração', N'Introdução à Economia I', N'nza2086')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (351, N'Admo I', N'O que é inovação? ', N' A introdução de novas ideias, produtos, processos ou serviços em uma organização ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de técnicas de vendas para maximizar os lucros de uma empresa ', N' A atividade de definir metas de curto prazo para os funcionários de uma empresa ', 1, N'Administração', N'Teoria Geral da Administração I', N'dul8098')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (352, N'Adma I', N'O que são estratégias competitivas? ', N' Planos de ação utilizados por uma organização para se destacar e ganhar vantagem em relação aos concorrentes ', N' Técnicas de vendas utilizadas para maximizar os lucros de uma empresa ', N' Métodos de comunicação interna utilizados pelos funcionários de uma organização ', N' Documentos que descrevem as atividades e tarefas de um projeto ', 1, N'Administração', N'Contabilidade Básica I', N'hub5224')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (353, N'Admado', N'O que é gestão financeira? ', N' O processo de planejamento, controle e análise das atividades financeiras de uma organização ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de estratégias de marketing para promover uma empresa ', N' A atividade de avaliar o desempenho dos funcionários e fornecer feedback construtivo ', 1, N'Administração', N'Instituições do Direito Público e Privado', N'lar7960')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (354, N'Admtal', N'O que é análise de mercado? ', N' A avaliação das condições e tendências do mercado em que uma organização opera ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de técnicas de vendas para maximizar os lucros de uma empresa ', N' A atividade de definir metas de curto prazo para os funcionários de uma empresa ', 1, N'Administração', N'Português Instrumental', N'fia8204')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (355, N'Adma I', N'O que é gestão de projetos? ', N' O processo de planejamento, execução e controle de um projeto para alcançar seus objetivos dentro de prazos e recursos específicos ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de estratégias de marketing para promover uma empresa ', N' A atividade de avaliar o desempenho dos funcionários e fornecer feedback construtivo ', 1, N'Administração', N'Estatística I', N'rgo9694')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (356, N'Adma I', N'O que é ética empresarial? ', N' Princípios e valores que orientam o comportamento ético em uma organização ', N' Técnicas de vendas utilizadas para maximizar os lucros de uma empresa ', N' Métodos de comunicação interna utilizados pelos funcionários de uma organização ', N' Documentos que descrevem as atividades e tarefas de um projeto ', 1, N'Administração', N'Matemática I', N'eon5859')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (357, N'Admr I', N'O que é responsabilidade social corporativa? ', N' O compromisso de uma organização em contribuir para o desenvolvimento sustentável e o bem-estar da sociedade ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de técnicas de vendas para maximizar os lucros de uma empresa ', N' A atividade de definir metas de curto prazo para os funcionários de uma empresa ', 1, N'Administração', N'Seminário Integrador I', N'dor3707')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (358, N'Adma I', N'O que é gestão da cadeia de suprimentos? ', N' O processo de planejamento, implementação e controle do fluxo de materiais, informações e serviços desde o fornecedor até o cliente final ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de estratégias de marketing para promover uma empresa ', N' A atividade de avaliar o desempenho dos funcionários e fornecer feedback construtivo ', 1, N'Administração', N'Introdução à Economia I', N'ura8248')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (359, N'Admo I', N'O que é gestão de mudanças? ', N' O processo de planejamento e implementação de mudanças organizacionais de forma eficaz e suave ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de técnicas de vendas para maximizar os lucros de uma empresa ', N' A atividade de definir metas de curto prazo para os funcionários de uma empresa ', 1, N'Administração', N'Teoria Geral da Administração I', N'mph5384')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (360, N'Adma I', N'O que é gestão do conhecimento? ', N' O processo de capturar, armazenar, compartilhar e utilizar o conhecimento dentro de uma organização ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de estratégias de marketing para promover uma empresa ', N' A atividade de avaliar o desempenho dos funcionários e fornecer feedback construtivo ', 1, N'Administração', N'Contabilidade Básica I', N'gan1983')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (361, N'Admado', N'Determinada situação caracteriza-se pela necessidade de ação imediata, existindo risco iminente de morte do paciente, que deve ser avaliado quanto ao nível de consciência, aos parâmetros vitais e à permeabilidade das vias aéreas. É correto associar a descrição precedente ao', N'conceito de urgência.', N'estado de paciente que apresenta luxação ou torção em membros', N'quadro de paciente com crise de asma brônquica', N'conceito de emergência.', 4, N'Administração', N'Instituições do Direito Público e Privado', N'NBZ8943')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (362, N'Admtal', N'Qual é a capital da Austrália? ', N' Sydney ', N' Melbourne ', N' Canberra ', N' Perth ', 3, N'Administração', N'Português Instrumental', N'MWV0644')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (363, N'Adma I', N'Quem escreveu o livro "Dom Quixote"? ', N' William Shakespeare ', N' Miguel de Cervantes ', N' Franz Kafka ', N' Fyodor Dostoevsky ', 2, N'Administração', N'Estatística I', N'KAN6115')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (364, N'Adma I', N'Qual é o maior oceano do mundo? ', N' Oceano Atlântico ', N' Oceano Pacífico ', N' Oceano Índico ', N' Oceano Ártico ', 2, N'Administração', N'Matemática I', N'AUK2645')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (365, N'Admr I', N'Qual é o maior estado brasileiro em área territorial? ', N' Amazonas ', N' Minas Gerais ', N' São Paulo ', N' Bahia ', 1, N'Administração', N'Seminário Integrador I', N'JUA0949')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (366, N'Adma I', N'Quem pintou a obra "A Última Ceia"? ', N' Vincent van Gogh ', N' Pablo Picasso ', N' Leonardo da Vinci ', N' Michelangelo ', 3, N'Administração', N'Introdução à Economia I', N'JVI7625')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (367, N'Admo I', N'Qual é a moeda oficial do Japão? ', N' Yen ', N' Euro ', N' Dólar ', N' Real ', 1, N'Administração', N'Teoria Geral da Administração I', N'MRG3866')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (368, N'Adma I', N'Qual é o maior deserto do mundo? ', N' Deserto do Saara ', N' Deserto do Atacama ', N' Deserto da Arábia ', N' Deserto da Namíbia ', 1, N'Administração', N'Contabilidade Básica I', N'KAV9299')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (369, N'Admado', N'Qual é a montanha mais alta do mundo? ', N' Monte Everest ', N' Monte Kilimanjaro ', N' Monte Aconcágua ', N' Monte Fuji ', 1, N'Administração', N'Instituições do Direito Público e Privado', N'IEZ4479')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (370, N'Admtal', N'Em qual país nasceu o famoso físico Albert Einstein? ', N' Alemanha ', N' Estados Unidos ', N' Áustria ', N' Suíça ', 1, N'Administração', N'Português Instrumental', N'JVB3964')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (371, N'Adma I', N'Qual é o maior animal terrestre? ', N' Elefante africano ', N' Girafa ', N' Rinoceronte ', N' Hipopótamo ', 1, N'Administração', N'Estatística I', N'LWC6137')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (372, N'Adma I', N'Quem foi o primeiro presidente dos Estados Unidos? ', N' Abraham Lincoln ', N' George Washington ', N' Thomas Jefferson ', N' John F. Kennedy ', 2, N'Administração', N'Matemática I', N'KEG8687')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (373, N'Admr I', N'Qual é a maior cordilheira do mundo? ', N' Montanhas Rochosas ', N' Cordilheira dos Andes ', N' Montanhas dos Himalaias ', N' Cordilheira dos Alpes ', 3, N'Administração', N'Seminário Integrador I', N'MSD2280')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (374, N'Adma I', N'Qual é o símbolo químico do elemento ouro? ', N' Au ', N' Ag ', N' Fe ', N' Pb ', 1, N'Administração', N'Introdução à Economia I', N'GPK4812')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (375, N'Admo I', N'Quem foi o autor da obra "Romeu e Julieta"? ', N' William Shakespeare ', N' Charles Dickens ', N' Jane Austen ', N' Mark Twain ', 1, N'Administração', N'Teoria Geral da Administração I', N'HQD3996')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (376, N'Adma I', N'Qual é o maior animal marinho? ', N' Baleia azul ', N' Tubarão branco ', N' Golfinho ', N' Polvo gigante ', 1, N'Administração', N'Contabilidade Básica I', N'NEU6018')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (377, N'Admado', N'Qual é o maior produtor mundial de café? ', N' Brasil ', N' Colômbia ', N' Vietnã ', N' Estados Unidos ', 1, N'Administração', N'Instituições do Direito Público e Privado', N'KDD1657')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (378, N'Admtal', N'Qual é o instrumento musical conhecido como "rei dos instrumentos"? ', N' Violino ', N' Piano ', N' Guitarra ', N' Trompete ', 2, N'Administração', N'Português Instrumental', N'urn4229')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (379, N'Adma I', N'Quem foi o líder político sul-africano que lutou contra o apartheid? ', N' Nelson Mandela ', N' Desmond Tutu ', N' Thabo Mbeki ', N' F. W. de Klerk ', 1, N'Administração', N'Estatística I', N'xuy8914')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (380, N'Adma I', N'Qual é a cor oposta ao vermelho no círculo cromático? ', N' Amarelo ', N' Azul ', N' Verde ', N' Roxo ', 2, N'Administração', N'Matemática I', N'dan3745')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (381, N'Admr I', N'Qual é o nome do famoso quadro de Leonardo da Vinci que retrata uma mulher com um sorriso enigmático? ', N' A Última Ceia ', N' Mona Lisa ', N' A Criação de Adão ', N' O Nascimento de Vênus ', 2, N'Administração', N'Seminário Integrador I', N'abo6170')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (382, N'Adma I', N'Quem é considerado o pai da psicanálise? ', N' Carl Jung ', N' Sigmund Freud ', N' Ivan Pavlov ', N' B. F. Skinner ', 2, N'Administração', N'Introdução à Economia I', N'coy6811')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (383, N'Admo I', N'Qual é o metal líquido à temperatura ambiente? ', N' Ouro ', N' Prata ', N' Chumbo ', N' Mercúrio ', 4, N'Administração', N'Teoria Geral da Administração I', N'res8428')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (384, N'Adma I', N'Em que país nasceu o famoso pintor Pablo Picasso? ', N' Espanha ', N' França ', N' Itália ', N' Holanda ', 1, N'Administração', N'Contabilidade Básica I', N'non2130')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (385, N'Admado', N'Qual é o maior país da América do Sul em área territorial? ', N' Brasil ', N' Argentina ', N' Colômbia ', N' Peru ', 1, N'Administração', N'Instituições do Direito Público e Privado', N'npu4991')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (386, N'Admtal', N'Quem escreveu o livro "1984"? ', N' George Orwell ', N' Aldous Huxley ', N' Ray Bradbury ', N' J. R. R. Tolkien ', 1, N'Administração', N'Português Instrumental', N'odu7088')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (387, N'Adma I', N'Qual é o maior órgão do corpo humano? ', N' Cérebro ', N' Fígado ', N' Coração ', N' Pele ', 4, N'Administração', N'Estatística I', N'rpa5198')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (388, N'Adma I', N'Qual é o nome da famosa escultura grega que representa a deusa Afrodite? ', N' Vênus de Milo ', N' David ', N' Pietà ', N' Discóbolo ', 1, N'Administração', N'Matemática I', N'aen2602')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (389, N'Admr I', N'Quem foi o primeiro homem a pisar na Lua? ', N' Buzz Aldrin ', N' Neil Armstrong ', N' Yuri Gagarin ', N' Alan Shepard ', 2, N'Administração', N'Seminário Integrador I', N'hic9001')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (390, N'Adma I', N'Qual é o maior rio do mundo em volume de água? ', N' Nilo ', N' Amazonas ', N' Yangtzé ', N' Mississipi ', 2, N'Administração', N'Introdução à Economia I', N'swa1115')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (391, N'Admo I', N'O que significa a sigla HTML? ', N' HyperText Markup Language ', N' Home Tool Markup Language ', N' Hyperlink and Text Markup Language ', N' Hyper Transfer Markup Language ', 1, N'Administração', N'Teoria Geral da Administração I', N'fim3140')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (392, N'Adma I', N'Qual é a linguagem de programação mais popular no desenvolvimento de aplicações móveis? ', N' Java ', N' C# ', N' Swift ', N' Python ', 3, N'Administração', N'Contabilidade Básica I', N'ofa6375')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (393, N'Admado', N'O que é um algoritmo? ', N' Uma sequência finita de instruções para resolver um problema ', N' Um tipo de dado utilizado para armazenar informações ', N' Um sistema operacional de código aberto ', N' Uma linguagem de programação popular ', 1, N'Administração', N'Instituições do Direito Público e Privado', N'bor4556')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (394, N'Admtal', N'O que significa a sigla CPU? ', N' Central Processing Unit ', N' Computer Programming Unit ', N' Central Program Unit ', N' Computer Power Unit ', 1, N'Administração', N'Português Instrumental', N'ian8344')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (395, N'Adma I', N'O que é um banco de dados relacional? ', N' Um conjunto de arquivos de texto que armazenam informações ', N' Um sistema que permite a conexão entre diferentes dispositivos ', N' Uma linguagem de programação específica para consultas ', N' Uma estrutura de dados que organiza informações em tabelas relacionadas ', 4, N'Administração', N'Estatística I', N'hir2145')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (396, N'Adma I', N'O que é um loop em programação? ', N' Um erro que faz o programa travar ', N' Uma instrução utilizada para interromper a execução de um programa ', N' Uma estrutura de controle que repete um bloco de código várias vezes ', N' Um tipo de dado utilizado para armazenar valores numéricos ', 3, N'Administração', N'Matemática I', N'ion8860')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (397, N'Admr I', N'O que significa a sigla CSS? ', N' Cascading Style Sheets ', N' Computer Style Sheets ', N' Creative Style Sheets ', N' Content Style Sheets ', 1, N'Administração', N'Seminário Integrador I', N'dir6582')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (398, N'Adma I', N'Qual é a função do sistema operacional? ', N' Controlar e coordenar o hardware e o software de um computador ', N' Desenvolver aplicativos e programas ', N' Gerenciar a segurança da rede ', N' Fornecer energia ao computador ', 1, N'Administração', N'Introdução à Economia I', N'rim3437')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (399, N'Admo I', N'O que é um firewall? ', N' Um dispositivo utilizado para armazenar cópias de segurança de dados ', N' Um programa que protege um computador de ameaças externas ', N' Um tipo de conexão de rede sem fio ', N' Um software utilizado para criar e editar imagens ', 2, N'Administração', N'Teoria Geral da Administração I', N'arz9069')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (400, N'Adma I', N'O que é o protocolo HTTP? ', N' Hypertext Transfer Protocol ', N' Hypertext Transport Protocol ', N' Home Tool Transfer Protocol ', N' Hyperlink Text Protocol ', 1, N'Administração', N'Contabilidade Básica I', N'suy4544')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (401, N'Admado', N'O que significa a sigla IP? ', N' Internet Provider ', N' Internet Protocol ', N' Internal Port ', N' Internet Power ', 2, N'Administração', N'Instituições do Direito Público e Privado', N'uma2216')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (402, N'Admtal', N'Qual é a linguagem de programação mais utilizada para desenvolvimento web? ', N' Python ', N' JavaScript ', N' C++ ', N' Ruby ', 2, N'Administração', N'Português Instrumental', N'ece1197')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (403, N'Adma I', N'O que é um arquivo no contexto da computação? ', N' Um dispositivo utilizado para armazenar informações ', N' Um conjunto de instruções para um programa executar ', N' Uma pasta que organiza arquivos e documentos ', N' Uma sequência de bits armazenada em um meio de armazenamento ', 4, N'Administração', N'Estatística I', N'ega1908')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (404, N'Adma I', N'O que é um servidor web? ', N' Um dispositivo que fornece energia para outros dispositivos ', N' Um software que processa solicitações e entrega páginas web aos clientes ', N' Uma conexão de rede que permite compartilhamento de arquivos ', N' Um sistema operacional específico para servidores ', 2, N'Administração', N'Matemática I', N'ror8417')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (405, N'Admr I', N'O que é uma API? ', N' Application Programming Interface ', N' Application Program Interface ', N' Advanced Program Interface ', N' Automated Program Interface ', 1, N'Administração', N'Seminário Integrador I', N'mas4503')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (406, N'Adma I', N'O que é um framework? ', N' Uma biblioteca de funções utilizada no desenvolvimento de software ', N' Um tipo de processador utilizado em servidores ', N' Um dispositivo que armazena dados temporariamente ', N' Um sistema operacional de código aberto ', 1, N'Administração', N'Introdução à Economia I', N'ise6475')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (407, N'Admo I', N'O que é a memória RAM? ', N' Random Access Memory ', N' Read-Only Memory ', N' Random Arithmetic Memory ', N' Real Application Memory ', 1, N'Administração', N'Teoria Geral da Administração I', N'ede1614')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (408, N'Adma I', N'O que é a linguagem de programação Python conhecida por enfatizar? ', N' Legibilidade do código ', N' Performance de execução ', N' Criação de interfaces gráficas ', N' Programação orientada a objetos ', 1, N'Administração', N'Contabilidade Básica I', N'uzi6489')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (409, N'Admado', N'O que é a linguagem de programação C conhecida por enfatizar? ', N' Legibilidade do código ', N' Performance de execução ', N' Criação de interfaces gráficas ', N' Programação orientada a objetos ', 2, N'Administração', N'Instituições do Direito Público e Privado', N'mph1314')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (410, N'Admtal', N'O que é o conceito de "loop infinito" em programação? ', N' Um erro que ocorre durante a compilação de um programa ', N' Uma estrutura de controle que repete um bloco de código várias vezes ', N' Uma situação em que um programa fica preso em uma repetição infinita ', N' Um tipo de dado que não pode ser alterado após a sua criação ', 3, N'Administração', N'Português Instrumental', N'urn6041')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (411, N'Adma I', N'O que é um servidor DNS? ', N' Domain Name System ', N' Dynamic Network Server ', N' Data Network Security ', N' Digital Network Service ', 1, N'Administração', N'Estatística I', N'eol4606')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (412, N'Adma I', N'O que é o protocolo FTP? ', N' File Transfer Protocol ', N' File Transport Protocol ', N' File Translation Protocol ', N' File Tracking Protocol ', 1, N'Administração', N'Matemática I', N'gak4591')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (413, N'Admr I', N'O que é um bug de software? ', N' Um recurso extra em um programa ', N' Um erro que ocorre durante a execução de um programa ', N' Uma parte do código-fonte que precisa ser otimizada ', N' Um problema relacionado à conexão de rede ', 2, N'Administração', N'Seminário Integrador I', N'sur3574')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (414, N'Adma I', N'O que é a programação orientada a objetos? ', N' Um método para otimizar o desempenho de um programa ', N' Um paradigma de programação que organiza o código em objetos ', N' Uma linguagem de programação específica para desenvolvimento web ', N' Um tipo de estrutura de dados utilizada para armazenar informações ', 2, N'Administração', N'Introdução à Economia I', N'hol9432')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (415, N'Admo I', N'Quem foi o autor do famoso livro "O Pequeno Príncipe"? ', N' Antoine de Saint-Exupéry ', N' Charles Dickens ', N' F. Scott Fitzgerald ', N' Jules Verne ', 1, N'Administração', N'Teoria Geral da Administração I', N'epa5121')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (416, N'Adma I', N'Qual é o nome da pintura famosa que retrata uma mulher sorridente com um vestido de bolinhas? ', N' A Noite Estrelada ', N' O Grito ', N' Dama com Arminho ', N' Moça com Brinco de Pérola ', 4, N'Administração', N'Contabilidade Básica I', N'ain4390')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (417, N'Admado', N'Qual é o país com a maior população do mundo? ', N' Índia ', N' Estados Unidos ', N' China ', N' Brasil ', 3, N'Administração', N'Instituições do Direito Público e Privado', N'exu6961')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (418, N'Admtal', N'Qual é o nome da maior cadeia montanhosa da América do Norte? ', N' Montanhas Rochosas ', N' Montanhas dos Apalaches ', N' Montanhas dos Andes ', N' Montanhas dos Apalaches ', 1, N'Administração', N'Português Instrumental', N'urz4841')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (419, N'Adma I', N'Qual é o maior animal terrestre? ', N' Elefante africano ', N' Girafa ', N' Rinoceronte ', N' Hipopótamo ', 1, N'Administração', N'Estatística I', N'lor7563')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (420, N'Adma I', N'Quem pintou a obra "A Persistência da Memória", que retrata relógios derretendo? ', N' Salvador Dalí ', N' Pablo Picasso ', N' Frida Kahlo ', N' Claude Monet ', 1, N'Administração', N'Matemática I', N'vey2345')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (421, N'Admr I', N'Qual é o nome da pintura famosa que retrata a deusa grega Afrodite emergindo do mar em uma concha? ', N' Vênus de Milo ', N' Moça com Brinco de Pérola ', N' A Criação de Adão ', N' O Nascimento de Vênus ', 4, N'Administração', N'Seminário Integrador I', N'rid4479')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (422, N'NutA 1', N'Qual é o maior deserto do mundo? ', N' Deserto do Saara ', N' Deserto do Atacama ', N' Deserto da Arábia ', N' Deserto da Namíbia ', 1, N'Nutrição', N'HISTOLOGIA 1', N'nar5004')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (423, N'NutMIA', N'Quem foi o primeiro presidente dos Estados Unidos? ', N' Abraham Lincoln ', N' George Washington ', N' Thomas Jefferson ', N' John F. Kennedy ', 2, N'Nutrição', N'ANATOMIA', N'bae7596')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (424, N'NutA 1', N'Qual é o maior planeta do Sistema Solar? ', N' Terra ', N' Júpiter ', N' Saturno ', N' Marte ', 2, N'Nutrição', N'BIOQUÍMICA 1', N'las5763')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (425, N'NutADE', N'Qual é a capital da França? ', N' Paris ', N' Roma ', N' Berlim ', N' Londres ', 1, N'Nutrição', N'SAÚDE E SOCIEDADE', N'bor6342')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (426, N'NutICA', N'Qual é o maior animal marinho? ', N' Baleia azul ', N' Tubarão branco ', N' Golfinho ', N' Polvo gigante ', 1, N'Nutrição', N'FILOSOFIA E METODOLOGIA CIENTÍFICA', N'dar1906')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (427, N'NutLAR', N'Quem foi o autor da obra "1984"? ', N' George Orwell ', N' Aldous Huxley ', N' Ray Bradbury ', N' J. R. R. Tolkien ', 1, N'Nutrição', N'BIOLOGIA CELULAR E MOLECULAR', N'guk8090')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (428, N'NutA 1', N'Qual é o maior produtor mundial de café? ', N' Brasil ', N' Colômbia ', N' Vietnã ', N' Estados Unidos ', 1, N'Nutrição', N'HISTOLOGIA 1', N'ahu2230')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (429, N'NutMIA', N'Qual é o metal líquido à temperatura ambiente? ', N' Ouro ', N' Prata ', N' Chumbo ', N' Mercúrio ', 4, N'Nutrição', N'ANATOMIA', N'buk8475')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (430, N'NutA 1', N'Em que país nasceu o famoso pintor Pablo Picasso? ', N' Espanha ', N' França ', N' Itália ', N' Holanda ', 1, N'Nutrição', N'BIOQUÍMICA 1', N'oti2248')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (431, N'NutADE', N'Quem foi o líder político sul-africano que lutou contra o apartheid? ', N' Nelson Mandela ', N' Desmond Tutu ', N' Thabo Mbeki ', N' F. W. de Klerk ', 1, N'Nutrição', N'SAÚDE E SOCIEDADE', N'lan8778')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (432, N'NutICA', N'Qual é a cor oposta ao vermelho no círculo cromático? ', N' Amarelo ', N' Azul ', N' Verde ', N' Roxo ', 2, N'Nutrição', N'FILOSOFIA E METODOLOGIA CIENTÍFICA', N'rao4735')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (433, N'NutLAR', N'Qual é o nome da famosa escultura grega que representa a deusa Afrodite? ', N' Vênus de Milo ', N' David ', N' Pietà ', N' Discóbolo ', 1, N'Nutrição', N'BIOLOGIA CELULAR E MOLECULAR', N'val9012')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (434, N'NutA 1', N'Quem foi o primeiro homem a pisar na Lua? ', N' Buzz Aldrin ', N' Neil Armstrong ', N' Yuri Gagarin ', N' Alan Shepard ', 2, N'Nutrição', N'HISTOLOGIA 1', N'ole9267')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (435, N'NutMIA', N'O que é a pirâmide alimentar? ', N' Um modelo gráfico que representa os diferentes grupos de alimentos e suas proporções recomendadas na alimentação saudável ', N' Uma técnica de preparo de alimentos utilizada em dietas específicas ', N' Uma tabela nutricional que lista o valor calórico dos alimentos ', N' Um método de contar calorias para controle de peso ', 1, N'Nutrição', N'ANATOMIA', N'sgi6619')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (436, N'NutA 1', N'O que são nutrientes essenciais? ', N' Nutrientes encontrados apenas em alimentos orgânicos ', N' Nutrientes necessários para o bom funcionamento do organismo, mas que não são produzidos pelo corpo ', N' Nutrientes encontrados exclusivamente em alimentos de origem animal ', N' Nutrientes que devem ser consumidos em grandes quantidades para uma alimentação equilibrada ', 2, N'Nutrição', N'BIOQUÍMICA 1', N'gal3576')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (437, N'NutADE', N'Quais são as principais funções dos carboidratos no organismo? ', N' Fornecer energia para as células e tecidos ', N' Construir músculos e ossos ', N' Regular o funcionamento do sistema nervoso ', N' Auxiliar na absorção de vitaminas ', 1, N'Nutrição', N'SAÚDE E SOCIEDADE', N'zie8984')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (438, N'NutICA', N'O que são alimentos fontes de proteínas? ', N' Alimentos que contêm exclusivamente proteínas em sua composição ', N' Alimentos que fornecem todos os nutrientes necessários para o corpo ', N' Alimentos que são ricos em proteínas, como carnes, peixes, ovos e leguminosas ', N' Alimentos que não contêm gorduras em sua composição ', 3, N'Nutrição', N'FILOSOFIA E METODOLOGIA CIENTÍFICA', N'iol4470')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (439, N'NutLAR', N'O que é a gordura saturada? ', N' Um tipo de gordura saudável encontrada em alimentos como abacates e nozes ', N' Um tipo de gordura líquida encontrada em óleos vegetais ', N' Um tipo de gordura sólida encontrada em carnes gordurosas e laticínios ', N' Um tipo de gordura trans encontrada em alimentos processados e frituras ', 3, N'Nutrição', N'BIOLOGIA CELULAR E MOLECULAR', N'bie6773')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (440, N'NutA 1', N'O que são vitaminas e quais são suas principais funções no organismo? ', N' Nutrientes que fornecem energia para o corpo ', N' Nutrientes que ajudam na formação dos músculos ', N' Substâncias que auxiliam na digestão dos alimentos ', N' Substâncias que são necessárias em pequenas quantidades para o funcionamento adequado do organismo ', 4, N'Nutrição', N'HISTOLOGIA 1', N'nza2086')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (441, N'NutMIA', N'O que são minerais e quais são suas principais funções no organismo? ', N' Nutrientes que fornecem energia para o corpo ', N' Nutrientes que ajudam na formação dos músculos ', N' Substâncias que auxiliam na digestão dos alimentos ', N' Substâncias que são necessárias em pequenas quantidades para o funcionamento adequado do organismo ', 4, N'Nutrição', N'ANATOMIA', N'dul8098')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (442, N'NutA 1', N'O que é a fibra alimentar e qual é sua importância na alimentação? ', N' Um nutriente essencial para a formação dos músculos ', N' Um tipo de carboidrato que não é digerido pelo organismo, contribuindo para o bom funcionamento do intestino ', N' Um tipo de gordura saudável encontrada em peixes e nozes ', N' Um tipo de vitamina que auxilia na absorção de outros nutrientes ', 2, N'Nutrição', N'BIOQUÍMICA 1', N'hub5224')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (443, N'NutADE', N'O que é a água e qual é sua importância para o organismo? ', N' Um nutriente essencial para a formação dos músculos ', N' Uma substância que fornece energia para o corpo ', N' Um componente fundamental das células e dos tecidos do corpo humano ', N' Uma substância que auxilia na digestão dos alimentos ', 3, N'Nutrição', N'SAÚDE E SOCIEDADE', N'lar7960')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (444, N'NutICA', N'O que são alimentos integrais e quais são seus benefícios para a saúde? ', N' Alimentos que não contêm aditivos ou conservantes ', N' Alimentos que são produzidos organicamente ', N' Alimentos que não passaram por processamento industrial e que mantêm todos os seus componentes originais ', N' Alimentos que são fontes de nutrientes essenciais para o corpo ', 3, N'Nutrição', N'FILOSOFIA E METODOLOGIA CIENTÍFICA', N'fia8204')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (445, N'NutLAR', N'O que é a dieta vegetariana? ', N' Uma dieta que exclui o consumo de carne vermelha ', N' Uma dieta que exclui o consumo de qualquer alimento de origem animal ', N' Uma dieta que inclui apenas alimentos de origem vegetal ', N' Uma dieta que exclui o consumo de alimentos processados ', 3, N'Nutrição', N'BIOLOGIA CELULAR E MOLECULAR', N'rgo9694')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (446, N'NutA 1', N'O que é a dieta vegana? ', N' Uma dieta que exclui o consumo de carne vermelha ', N' Uma dieta que exclui o consumo de qualquer alimento de origem animal ', N' Uma dieta que inclui apenas alimentos de origem vegetal ', N' Uma dieta que exclui o consumo de alimentos processados ', 2, N'Nutrição', N'HISTOLOGIA 1', N'eon5859')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (447, N'NutMIA', N'O que é a anemia e quais são suas principais causas? ', N' Uma doença causada pela falta de ferro, que resulta na redução da produção de glóbulos vermelhos no sangue ', N' Uma doença causada pela falta de vitamina C, que resulta na fragilidade dos ossos ', N' Uma doença causada pela falta de vitamina D, que resulta na perda de massa muscular ', N' Uma doença causada pela falta de cálcio, que resulta no enfraquecimento dos dentes ', 1, N'Nutrição', N'ANATOMIA', N'dor3707')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (448, N'NutA 1', N'Quais são as principais fontes de ferro na alimentação? ', N' Carnes vermelhas e laticínios ', N' Frutas e vegetais ', N' Peixe e frutos do mar ', N' Leguminosas, como feijões e lentilhas ', 4, N'Nutrição', N'BIOQUÍMICA 1', N'ura8248')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (449, N'NutADE', N'O que é o colesterol e como ele pode afetar a saúde? ', N' Uma substância encontrada apenas em alimentos de origem animal ', N' Uma substância que auxilia na absorção de nutrientes ', N' Uma substância que é produzida pelo fígado e que desempenha funções importantes no organismo ', N' Uma substância que, em excesso, pode se acumular nas artérias e aumentar o risco de doenças cardíacas ', 4, N'Nutrição', N'SAÚDE E SOCIEDADE', N'mph5384')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (450, N'NutICA', N'O que são antioxidantes e qual é o seu papel na saúde? ', N' Substâncias que auxiliam na absorção de gorduras ', N' Substâncias que protegem as células contra danos causados pelos radicais livres ', N' Substâncias que são necessárias para a formação dos ossos ', N' Substâncias que promovem o ganho de massa muscular ', 2, N'Nutrição', N'FILOSOFIA E METODOLOGIA CIENTÍFICA', N'gan1983')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (451, N'NutLAR', N'O que é a obesidade e quais são seus riscos para a saúde? ', N' O acúmulo excessivo de gordura corporal, que aumenta o risco de doenças como diabetes, hipertensão e doenças cardíacas ', N' A falta de gordura corporal, que aumenta o risco de desnutrição e problemas de saúde relacionados ', N' A falta de nutrientes essenciais na alimentação, que resulta em baixo peso e problemas de saúde ', N' A presença de músculos pouco desenvolvidos, que resulta em baixo peso e problemas de saúde ', 1, N'Nutrição', N'BIOLOGIA CELULAR E MOLECULAR', N'NBZ8943')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (452, N'NutA 1', N'O que são alimentos funcionais e quais são seus benefícios? ', N' Alimentos que não contêm aditivos ou conservantes ', N' Alimentos que são produzidos organicamente ', N' Alimentos que além de nutrição básica, fornecem benefícios adicionais para a saúde ', N' Alimentos que são fontes de nutrientes essenciais para o corpo ', 3, N'Nutrição', N'HISTOLOGIA 1', N'MWV0644')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (453, N'NutMIA', N'O que é o índice glicêmico de um alimento? ', N' A quantidade de gordura presente em um alimento ', N' A quantidade de carboidratos presentes em um alimento ', N' A velocidade com que um alimento eleva os níveis de açúcar no sangue ', N' A quantidade de proteínas presentes em um alimento ', 3, N'Nutrição', N'ANATOMIA', N'KAN6115')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (454, N'NutA 1', N'O que são probióticos e qual é a sua importância para a saúde intestinal? ', N' Bactérias benéficas que auxiliam na digestão dos alimentos e no equilíbrio da flora intestinal ', N' Vitaminas que auxiliam na absorção de nutrientes ', N' Minerais que são essenciais para a formação dos ossos ', N' Substâncias que promovem o ganho de massa muscular ', 1, N'Nutrição', N'BIOQUÍMICA 1', N'AUK2645')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (455, N'NutADE', N'Quais são os benefícios do consumo de frutas e vegetais para a saúde? ', N' Fornecem vitaminas e minerais essenciais para o corpo ', N' Reduzem o risco de doenças crônicas, como doenças cardíacas e câncer ', N' Auxiliam na manutenção de um peso saudável ', N' Todas as opções anteriores estão corretas ', 4, N'Nutrição', N'SAÚDE E SOCIEDADE', N'JUA0949')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (456, N'NutICA', N'O que são alimentos transgênicos e quais são suas características? ', N' Alimentos que passaram por modificação genética para melhorar seu valor nutricional ', N' Alimentos que são produzidos sem o uso de agrotóxicos ', N' Alimentos que são cultivados utilizando métodos tradicionais de agricultura ', N' Alimentos que são cultivados sem a utilização de fertilizantes químicos ', 1, N'Nutrição', N'FILOSOFIA E METODOLOGIA CIENTÍFICA', N'JVI7625')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (457, N'NutLAR', N'O que são alimentos orgânicos e quais são suas características? ', N' Alimentos que passaram por modificação genética para melhorar seu valor nutricional ', N' Alimentos que são produzidos sem o uso de agrotóxicos ', N' Alimentos que são cultivados utilizando métodos tradicionais de agricultura ', N' Alimentos que são cultivados sem a utilização de fertilizantes químicos ', 2, N'Nutrição', N'BIOLOGIA CELULAR E MOLECULAR', N'MRG3866')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (458, N'NutA 1', N'O que é a intolerância à lactose e quais são seus sintomas? ', N' Uma alergia ao glúten, que causa danos ao intestino delgado ', N' Uma alergia às proteínas do leite, que causa inflamação na pele ', N' Uma dificuldade de digerir a lactose, o açúcar presente no leite, que causa desconforto gastrointestinal ', N' Uma alergia ao açúcar refinado, que causa alterações no humor ', 3, N'Nutrição', N'HISTOLOGIA 1', N'KAV9299')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (459, N'NutMIA', N'O que são dietas da moda e quais são os seus riscos para a saúde? ', N' Dietas que são baseadas em alimentos específicos e que prometem resultados rápidos de perda de peso ', N' Dietas que são baseadas em alimentos frescos e naturais ', N' Dietas que são baseadas em alimentos de baixa caloria ', N' Dietas que são baseadas em alimentos processados ', 1, N'Nutrição', N'ANATOMIA', N'IEZ4479')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (460, N'NutA 1', N'O que é administração de empresas? ', N' O processo de gerenciar recursos e atividades de uma organização para atingir seus objetivos ', N' A aplicação de técnicas de vendas para maximizar os lucros de uma empresa ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de estratégias de marketing para promover uma empresa ', 1, N'Nutrição', N'BIOQUÍMICA 1', N'JVB3964')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (461, N'NutADE', N'Quais são as principais funções de um administrador? ', N' Planejamento, organização, liderança e controle ', N' Produção, marketing, finanças e recursos humanos ', N' Vendas, distribuição, pesquisa e desenvolvimento ', N' Comunicação, negociação, tomada de decisão e resolução de conflitos ', 1, N'Nutrição', N'SAÚDE E SOCIEDADE', N'LWC6137')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (462, N'NutICA', N'O que é planejamento estratégico? ', N' O processo de definir os objetivos de longo prazo de uma organização e determinar as melhores maneiras de alcançá-los ', N' A atividade de criar estratégias de marketing para promover os produtos de uma empresa ', N' O processo de identificar e corrigir problemas operacionais em uma organização ', N' A atividade de definir metas de curto prazo para os funcionários de uma empresa ', 1, N'Nutrição', N'FILOSOFIA E METODOLOGIA CIENTÍFICA', N'KEG8687')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (463, N'NutLAR', N'O que é organização no contexto da administração? ', N' O processo de estabelecer a estrutura de uma empresa e designar tarefas e responsabilidades aos funcionários ', N' A atividade de vender produtos e serviços para os clientes ', N' O processo de motivar e liderar os funcionários para atingir os objetivos da empresa ', N' A atividade de avaliar o desempenho dos funcionários e fornecer feedback construtivo ', 1, N'Nutrição', N'BIOLOGIA CELULAR E MOLECULAR', N'MSD2280')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (464, N'NutA 1', N'O que é liderança? ', N' A capacidade de influenciar e motivar os outros para alcançar os objetivos da organização ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de estratégias de marketing para promover uma empresa ', N' A atividade de definir metas de curto prazo para os funcionários de uma empresa ', 1, N'Nutrição', N'HISTOLOGIA 1', N'GPK4812')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (465, N'NutMIA', N'O que é controle no contexto da administração? ', N' O processo de monitorar e avaliar o desempenho da organização e tomar medidas corretivas quando necessário ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de técnicas de vendas para maximizar os lucros de uma empresa ', N' A atividade de avaliar o desempenho dos funcionários e fornecer feedback construtivo ', 1, N'Nutrição', N'ANATOMIA', N'HQD3996')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (466, N'NutA 1', N'O que é marketing? ', N' O processo de identificar, satisfazer e manter clientes por meio da criação, entrega e comunicação de valor ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de técnicas de vendas para maximizar os lucros de uma empresa ', N' A atividade de definir metas de curto prazo para os funcionários de uma empresa ', 1, N'Nutrição', N'BIOQUÍMICA 1', N'NEU6018')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (467, N'NutADE', N'O que é gestão de recursos humanos? ', N' O processo de recrutar, selecionar, treinar, motivar e reter os colaboradores de uma organização ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de estratégias de marketing para promover uma empresa ', N' A atividade de avaliar o desempenho dos funcionários e fornecer feedback construtivo ', 1, N'Nutrição', N'SAÚDE E SOCIEDADE', N'KDD1657')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (468, N'NutICA', N'O que são indicadores de desempenho? ', N' Medidas quantitativas que ajudam a avaliar o progresso de uma organização em relação a seus objetivos ', N' Ferramentas de marketing utilizadas para promover uma empresa ', N' Documentos que descrevem as atividades e tarefas de um projeto ', N' Métodos de comunicação interna utilizados pelos funcionários de uma organização ', 1, N'Nutrição', N'FILOSOFIA E METODOLOGIA CIENTÍFICA', N'urn4229')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (469, N'NutLAR', N'O que é gestão da qualidade? ', N' O processo de garantir que os produtos e serviços de uma organização atendam ou excedam as expectativas dos clientes ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de técnicas de vendas para maximizar os lucros de uma empresa ', N' A atividade de avaliar o desempenho dos funcionários e fornecer feedback construtivo ', 1, N'Nutrição', N'BIOLOGIA CELULAR E MOLECULAR', N'xuy8914')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (470, N'NutA 1', N'O que é empreendedorismo? ', N' A capacidade de identificar oportunidades de negócio e desenvolver novas iniciativas ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de técnicas de vendas para maximizar os lucros de uma empresa ', N' A atividade de definir metas de curto prazo para os funcionários de uma empresa ', 1, N'Nutrição', N'HISTOLOGIA 1', N'dan3745')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (471, N'NutMIA', N'O que é inovação? ', N' A introdução de novas ideias, produtos, processos ou serviços em uma organização ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de técnicas de vendas para maximizar os lucros de uma empresa ', N' A atividade de definir metas de curto prazo para os funcionários de uma empresa ', 1, N'Nutrição', N'ANATOMIA', N'abo6170')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (472, N'NutA 1', N'O que são estratégias competitivas? ', N' Planos de ação utilizados por uma organização para se destacar e ganhar vantagem em relação aos concorrentes ', N' Técnicas de vendas utilizadas para maximizar os lucros de uma empresa ', N' Métodos de comunicação interna utilizados pelos funcionários de uma organização ', N' Documentos que descrevem as atividades e tarefas de um projeto ', 1, N'Nutrição', N'BIOQUÍMICA 1', N'coy6811')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (473, N'NutADE', N'O que é gestão financeira? ', N' O processo de planejamento, controle e análise das atividades financeiras de uma organização ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de estratégias de marketing para promover uma empresa ', N' A atividade de avaliar o desempenho dos funcionários e fornecer feedback construtivo ', 1, N'Nutrição', N'SAÚDE E SOCIEDADE', N'res8428')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (474, N'NutICA', N'O que é análise de mercado? ', N' A avaliação das condições e tendências do mercado em que uma organização opera ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de técnicas de vendas para maximizar os lucros de uma empresa ', N' A atividade de definir metas de curto prazo para os funcionários de uma empresa ', 1, N'Nutrição', N'FILOSOFIA E METODOLOGIA CIENTÍFICA', N'non2130')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (475, N'NutLAR', N'O que é gestão de projetos? ', N' O processo de planejamento, execução e controle de um projeto para alcançar seus objetivos dentro de prazos e recursos específicos ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de estratégias de marketing para promover uma empresa ', N' A atividade de avaliar o desempenho dos funcionários e fornecer feedback construtivo ', 1, N'Nutrição', N'BIOLOGIA CELULAR E MOLECULAR', N'npu4991')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (476, N'NutA 1', N'O que é ética empresarial? ', N' Princípios e valores que orientam o comportamento ético em uma organização ', N' Técnicas de vendas utilizadas para maximizar os lucros de uma empresa ', N' Métodos de comunicação interna utilizados pelos funcionários de uma organização ', N' Documentos que descrevem as atividades e tarefas de um projeto ', 1, N'Nutrição', N'HISTOLOGIA 1', N'odu7088')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (477, N'NutMIA', N'O que é responsabilidade social corporativa? ', N' O compromisso de uma organização em contribuir para o desenvolvimento sustentável e o bem-estar da sociedade ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de técnicas de vendas para maximizar os lucros de uma empresa ', N' A atividade de definir metas de curto prazo para os funcionários de uma empresa ', 1, N'Nutrição', N'ANATOMIA', N'rpa5198')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (478, N'NutA 1', N'O que é gestão da cadeia de suprimentos? ', N' O processo de planejamento, implementação e controle do fluxo de materiais, informações e serviços desde o fornecedor até o cliente final ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de estratégias de marketing para promover uma empresa ', N' A atividade de avaliar o desempenho dos funcionários e fornecer feedback construtivo ', 1, N'Nutrição', N'BIOQUÍMICA 1', N'aen2602')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (479, N'NutADE', N'O que é gestão de mudanças? ', N' O processo de planejamento e implementação de mudanças organizacionais de forma eficaz e suave ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de técnicas de vendas para maximizar os lucros de uma empresa ', N' A atividade de definir metas de curto prazo para os funcionários de uma empresa ', 1, N'Nutrição', N'SAÚDE E SOCIEDADE', N'hic9001')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (480, N'NutICA', N'O que é gestão do conhecimento? ', N' O processo de capturar, armazenar, compartilhar e utilizar o conhecimento dentro de uma organização ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de estratégias de marketing para promover uma empresa ', N' A atividade de avaliar o desempenho dos funcionários e fornecer feedback construtivo ', 1, N'Nutrição', N'FILOSOFIA E METODOLOGIA CIENTÍFICA', N'swa1115')
GO
INSERT [dbo].[Questões] ([ID], [Codigo], [Enunciado], [Alternativa 1], [Alternativa 2], [Alternativa 3], [Alternativa 4], [Gabarito], [Curso], [Disciplina], [Docente]) VALUES (481, N'NutLAR', N'O que é gestão do conhecimento? ', N' O processo de capturar, armazenar, compartilhar e utilizar o conhecimento dentro de uma organização ', N' A atividade de produzir bens e serviços para atender às demandas do mercado ', N' A aplicação de estratégias de marketing para promover uma empresa ', N' A atividade de avaliar o desempenho dos funcionários e fornecer feedback construtivo ', 1, N'Nutrição', N'BIOLOGIA CELULAR E MOLECULAR', N'fim3140')
GO
INSERT [dbo].[Ranking] ([Posicao], [Aluno], [Pontuacao], [Vitorias], [Derrotas], [Descartes], [Acertos], [Erros]) VALUES (1, 1, 5000, 40, 2, 18, 500, 250)
GO
INSERT [dbo].[Ranking] ([Posicao], [Aluno], [Pontuacao], [Vitorias], [Derrotas], [Descartes], [Acertos], [Erros]) VALUES (2, 2, 3500, 38, 1, 7, 350, 175)
GO
INSERT [dbo].[Ranking] ([Posicao], [Aluno], [Pontuacao], [Vitorias], [Derrotas], [Descartes], [Acertos], [Erros]) VALUES (3, 3, 3400, 36, 2, 10, 340, 170)
GO
INSERT [dbo].[Ranking] ([Posicao], [Aluno], [Pontuacao], [Vitorias], [Derrotas], [Descartes], [Acertos], [Erros]) VALUES (4, 4, 3200, 32, 3, 12, 320, 160)
GO
INSERT [dbo].[Ranking] ([Posicao], [Aluno], [Pontuacao], [Vitorias], [Derrotas], [Descartes], [Acertos], [Erros]) VALUES (5, 5, 3100, 30, 3, 8, 310, 155)
GO
INSERT [dbo].[Ranking] ([Posicao], [Aluno], [Pontuacao], [Vitorias], [Derrotas], [Descartes], [Acertos], [Erros]) VALUES (6, 6, 2800, 28, 2, 7, 280, 140)
GO
INSERT [dbo].[Ranking] ([Posicao], [Aluno], [Pontuacao], [Vitorias], [Derrotas], [Descartes], [Acertos], [Erros]) VALUES (7, 7, 2600, 26, 3, 4, 260, 130)
GO
INSERT [dbo].[Ranking] ([Posicao], [Aluno], [Pontuacao], [Vitorias], [Derrotas], [Descartes], [Acertos], [Erros]) VALUES (8, 8, 2400, 24, 2, 14, 240, 120)
GO
INSERT [dbo].[Ranking] ([Posicao], [Aluno], [Pontuacao], [Vitorias], [Derrotas], [Descartes], [Acertos], [Erros]) VALUES (9, 9, 2200, 22, 3, 15, 220, 110)
GO
INSERT [dbo].[Ranking] ([Posicao], [Aluno], [Pontuacao], [Vitorias], [Derrotas], [Descartes], [Acertos], [Erros]) VALUES (10, 10, 2100, 20, 1, 17, 210, 105)
GO
INSERT [dbo].[Ranking] ([Posicao], [Aluno], [Pontuacao], [Vitorias], [Derrotas], [Descartes], [Acertos], [Erros]) VALUES (11, 11, 1800, 19, 3, 1, 180, 90)
GO
INSERT [dbo].[Ranking] ([Posicao], [Aluno], [Pontuacao], [Vitorias], [Derrotas], [Descartes], [Acertos], [Erros]) VALUES (12, 12, 1600, 18, 2, 5, 160, 80)
GO
INSERT [dbo].[Ranking] ([Posicao], [Aluno], [Pontuacao], [Vitorias], [Derrotas], [Descartes], [Acertos], [Erros]) VALUES (13, 13, 1400, 17, 3, 7, 140, 70)
GO
INSERT [dbo].[Ranking] ([Posicao], [Aluno], [Pontuacao], [Vitorias], [Derrotas], [Descartes], [Acertos], [Erros]) VALUES (14, 14, 1300, 16, 1, 14, 130, 65)
GO
INSERT [dbo].[Ranking] ([Posicao], [Aluno], [Pontuacao], [Vitorias], [Derrotas], [Descartes], [Acertos], [Erros]) VALUES (15, 15, 1100, 15, 1, 9, 110, 55)
GO
INSERT [dbo].[Ranking] ([Posicao], [Aluno], [Pontuacao], [Vitorias], [Derrotas], [Descartes], [Acertos], [Erros]) VALUES (16, 16, 950, 14, 3, 11, 95, 47)
GO
INSERT [dbo].[Ranking] ([Posicao], [Aluno], [Pontuacao], [Vitorias], [Derrotas], [Descartes], [Acertos], [Erros]) VALUES (17, 17, 850, 13, 3, 5, 85, 42)
GO
INSERT [dbo].[Ranking] ([Posicao], [Aluno], [Pontuacao], [Vitorias], [Derrotas], [Descartes], [Acertos], [Erros]) VALUES (18, 18, 750, 12, 2, 15, 75, 37)
GO
INSERT [dbo].[Ranking] ([Posicao], [Aluno], [Pontuacao], [Vitorias], [Derrotas], [Descartes], [Acertos], [Erros]) VALUES (19, 19, 650, 11, 1, 2, 65, 32)
GO
INSERT [dbo].[Ranking] ([Posicao], [Aluno], [Pontuacao], [Vitorias], [Derrotas], [Descartes], [Acertos], [Erros]) VALUES (20, 20, 555, 11, 2, 10, 56, 28)
GO
INSERT [dbo].[Ranking] ([Posicao], [Aluno], [Pontuacao], [Vitorias], [Derrotas], [Descartes], [Acertos], [Erros]) VALUES (21, 21, 450, 10, 1, 19, 45, 22)
GO
INSERT [dbo].[Ranking] ([Posicao], [Aluno], [Pontuacao], [Vitorias], [Derrotas], [Descartes], [Acertos], [Erros]) VALUES (22, 22, 350, 9, 3, 12, 35, 17)
GO
INSERT [dbo].[Ranking] ([Posicao], [Aluno], [Pontuacao], [Vitorias], [Derrotas], [Descartes], [Acertos], [Erros]) VALUES (23, 23, 250, 9, 3, 4, 25, 12)
GO
INSERT [dbo].[Ranking] ([Posicao], [Aluno], [Pontuacao], [Vitorias], [Derrotas], [Descartes], [Acertos], [Erros]) VALUES (24, 24, 240, 8, 3, 8, 24, 12)
GO
INSERT [dbo].[Ranking] ([Posicao], [Aluno], [Pontuacao], [Vitorias], [Derrotas], [Descartes], [Acertos], [Erros]) VALUES (25, 25, 230, 8, 1, 20, 23, 11)
GO
INSERT [dbo].[Ranking] ([Posicao], [Aluno], [Pontuacao], [Vitorias], [Derrotas], [Descartes], [Acertos], [Erros]) VALUES (26, 26, 220, 7, 3, 20, 22, 11)
GO
INSERT [dbo].[Ranking] ([Posicao], [Aluno], [Pontuacao], [Vitorias], [Derrotas], [Descartes], [Acertos], [Erros]) VALUES (27, 27, 210, 7, 1, 14, 21, 10)
GO
INSERT [dbo].[Ranking] ([Posicao], [Aluno], [Pontuacao], [Vitorias], [Derrotas], [Descartes], [Acertos], [Erros]) VALUES (28, 28, 200, 6, 2, 1, 20, 10)
GO
INSERT [dbo].[Ranking] ([Posicao], [Aluno], [Pontuacao], [Vitorias], [Derrotas], [Descartes], [Acertos], [Erros]) VALUES (29, 29, 180, 6, 1, 5, 18, 9)
GO
INSERT [dbo].[Ranking] ([Posicao], [Aluno], [Pontuacao], [Vitorias], [Derrotas], [Descartes], [Acertos], [Erros]) VALUES (30, 30, 170, 5, 2, 5, 17, 8)
GO
INSERT [dbo].[Ranking] ([Posicao], [Aluno], [Pontuacao], [Vitorias], [Derrotas], [Descartes], [Acertos], [Erros]) VALUES (31, 31, 150, 5, 3, 4, 15, 7)
GO
INSERT [dbo].[Ranking] ([Posicao], [Aluno], [Pontuacao], [Vitorias], [Derrotas], [Descartes], [Acertos], [Erros]) VALUES (32, 32, 140, 4, 1, 10, 14, 7)
GO
INSERT [dbo].[Ranking] ([Posicao], [Aluno], [Pontuacao], [Vitorias], [Derrotas], [Descartes], [Acertos], [Erros]) VALUES (33, 33, 130, 4, 2, 8, 13, 6)
GO
INSERT [dbo].[Ranking] ([Posicao], [Aluno], [Pontuacao], [Vitorias], [Derrotas], [Descartes], [Acertos], [Erros]) VALUES (34, 34, 120, 3, 2, 0, 12, 6)
GO
INSERT [dbo].[Ranking] ([Posicao], [Aluno], [Pontuacao], [Vitorias], [Derrotas], [Descartes], [Acertos], [Erros]) VALUES (35, 35, 100, 3, 3, 5, 10, 5)
GO
INSERT [dbo].[Turmas] ([ID], [Codigo Turma], [Curso], [Ano], [Semestre], [F6], [F7], [F8], [F9], [F10]) VALUES (1, N'JVK4352', N'Administração', 2018, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Turmas] ([ID], [Codigo Turma], [Curso], [Ano], [Semestre], [F6], [F7], [F8], [F9], [F10]) VALUES (2, N'JVO8046', N'Ciência da Computação', 2020, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Turmas] ([ID], [Codigo Turma], [Curso], [Ano], [Semestre], [F6], [F7], [F8], [F9], [F10]) VALUES (3, N'NCS7756', N'Nutrição', 2021, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Turmas] ([ID], [Codigo Turma], [Curso], [Ano], [Semestre], [F6], [F7], [F8], [F9], [F10]) VALUES (4, N'BEB1970', N'Administração', 2018, 2, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Turmas] ([ID], [Codigo Turma], [Curso], [Ano], [Semestre], [F6], [F7], [F8], [F9], [F10]) VALUES (5, N'KPZ2261', N'Ciência da Computação', 2020, 2, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Turmas] ([ID], [Codigo Turma], [Curso], [Ano], [Semestre], [F6], [F7], [F8], [F9], [F10]) VALUES (6, N'HZF0457', N'Nutrição', 2022, 2, NULL, NULL, NULL, NULL, NULL)
GO
