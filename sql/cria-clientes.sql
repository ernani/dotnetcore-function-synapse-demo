-- Cria a tabela
CREATE TABLE Clientes
(	Cod_Cliente int NULL,
	NomeCliente varchar(40) NULL,
	CanalVendas varchar(50) NULL,
	Municipio varchar(50) NULL,
	Estado char(2) NULL,
	End_Cliente varchar(100) NULL,
	CEP char(5) NULL,
	Score char(1) NULL,
	DataCadastro date NULL			)
GO

-- Carrega os dados
INSERT Clientes(Cod_Cliente,NomeCliente,CanalVendas,Municipio,Estado,End_Cliente,CEP,Score, DataCadastro) SELECT '29637','Pão de açúcar','Varejo','Louveira','SP','Rua das Abóboras, 414','33988','A',dateadd(dd,rand()*-20,getdate()) ;
INSERT Clientes(Cod_Cliente,NomeCliente,CanalVendas,Municipio,Estado,End_Cliente,CEP,Score, DataCadastro) SELECT '29716','Wine','E-commerce','Guarapari','ES','Alameda Buritis, 212','45528','C',dateadd(dd,rand()*-19,getdate()) ;
INSERT Clientes(Cod_Cliente,NomeCliente,CanalVendas,Municipio,Estado,End_Cliente,CEP,Score, DataCadastro) SELECT '30117','Expand','Varejo','Vitória','ES','Rua do Orvalho, 200','96594','D',dateadd(dd,rand()*-18,getdate()) ;
INSERT Clientes(Cod_Cliente,NomeCliente,CanalVendas,Municipio,Estado,End_Cliente,CEP,Score, DataCadastro) SELECT '29969','Evino','E-commerce','Guarapari','ES','Alameda dos Álamos, 38','42100','A',dateadd(dd,rand()*-17,getdate()) ;
INSERT Clientes(Cod_Cliente,NomeCliente,CanalVendas,Municipio,Estado,End_Cliente,CEP,Score, DataCadastro) SELECT '29705','Sams Club','Atacado','Contagem','MG','Rua das Bandeiras, 306','61129','B',dateadd(dd,rand()*-16,getdate()) ;
INSERT Clientes(Cod_Cliente,NomeCliente,CanalVendas,Municipio,Estado,End_Cliente,CEP,Score, DataCadastro) SELECT '29773','Adega Santiago','Restaurante','São Paulo','SP','Rua do Cassino, 28','93564','C',dateadd(dd,rand()*-15,getdate()) ;
INSERT Clientes(Cod_Cliente,NomeCliente,CanalVendas,Municipio,Estado,End_Cliente,CEP,Score, DataCadastro) SELECT '29853','Empório Alto de Pinheiros','Restaurante','São Paulo','SP','Avenida Longa, 23456','25419','C',dateadd(dd,rand()*-14,getdate()) ;
INSERT Clientes(Cod_Cliente,NomeCliente,CanalVendas,Municipio,Estado,End_Cliente,CEP,Score, DataCadastro) SELECT '29885','Empório do Vinho','Restaurante','São Paulo','SP','Avenida Marítima, 180','79567','E',dateadd(dd,rand()*-13,getdate()) ;
INSERT Clientes(Cod_Cliente,NomeCliente,CanalVendas,Municipio,Estado,End_Cliente,CEP,Score, DataCadastro) SELECT '29889','Saint Marche','Varejo','Goiania','GO','Rua da Curva, 15','41750','C',dateadd(dd,rand()*-12,getdate()) ;
INSERT Clientes(Cod_Cliente,NomeCliente,CanalVendas,Municipio,Estado,End_Cliente,CEP,Score, DataCadastro) SELECT '29892','Enoteca','Restaurante','São Paulo','SP','Rua das Estrelas, 21','93994','C',dateadd(dd,rand()*-11,getdate()) ;
INSERT Clientes(Cod_Cliente,NomeCliente,CanalVendas,Municipio,Estado,End_Cliente,CEP,Score, DataCadastro) SELECT '29921','Cia Zaffari','Varejo','Porto Alegre','RS','Rua do Relógio, 12','14655','A',dateadd(dd,rand()*-10,getdate()) ;
INSERT Clientes(Cod_Cliente,NomeCliente,CanalVendas,Municipio,Estado,End_Cliente,CEP,Score, DataCadastro) SELECT '30074','Grand Cru','E-commerce','Guarapari','ES','Rua da Tranquilidade, 70','95573','A',dateadd(dd,rand()*-9,getdate()) ;
INSERT Clientes(Cod_Cliente,NomeCliente,CanalVendas,Municipio,Estado,End_Cliente,CEP,Score, DataCadastro) SELECT '30095','loja Rei dos Whiskys e vinhos','Varejo','São Paulo','SP','Rua da Flecha, 40','30559','E',dateadd(dd,rand()*-8,getdate()) ;
INSERT Clientes(Cod_Cliente,NomeCliente,CanalVendas,Municipio,Estado,End_Cliente,CEP,Score, DataCadastro) SELECT '30100','Casa vidigal','Varejo','São Paulo','SP','Praça da Matriz, 81','97459','D',dateadd(dd,rand()*-7,getdate()) ;
INSERT Clientes(Cod_Cliente,NomeCliente,CanalVendas,Municipio,Estado,End_Cliente,CEP,Score, DataCadastro) SELECT '29866','Wall Mart','Varejo','Contagem','MG','Rua do Tango, 92','80581','B',dateadd(dd,rand()*-6,getdate()) ;
INSERT Clientes(Cod_Cliente,NomeCliente,CanalVendas,Municipio,Estado,End_Cliente,CEP,Score, DataCadastro) SELECT '29992','Carrefour','Varejo','Paraty','RJ','Rua do Banco, 56','14562','E',dateadd(dd,rand()*-5,getdate()) ;
INSERT Clientes(Cod_Cliente,NomeCliente,CanalVendas,Municipio,Estado,End_Cliente,CEP,Score, DataCadastro) SELECT '29659','Extra','Varejo','Belo Horizonte','MG','Rua do Lado, 45','21118','A',dateadd(dd,rand()*-4,getdate()) ;
INSERT Clientes(Cod_Cliente,NomeCliente,CanalVendas,Municipio,Estado,End_Cliente,CEP,Score, DataCadastro) SELECT '29510','Infanger','Varejo','Vinhedo','SP','Avenida Curta, 84','11232','A',dateadd(dd,rand()*-3,getdate()) ;
INSERT Clientes(Cod_Cliente,NomeCliente,CanalVendas,Municipio,Estado,End_Cliente,CEP,Score, DataCadastro) SELECT '29617','Eataly','Varejo','São Paulo','SP','Avenida Média, 96','99568','A',dateadd(dd,rand()*-2,getdate()) ;
INSERT Clientes(Cod_Cliente,NomeCliente,CanalVendas,Municipio,Estado,End_Cliente,CEP,Score, DataCadastro) SELECT '29639','Paris 6','Restaurante','São Paulo','SP','Rua das Abóboras, 43','41899','A',dateadd(dd,rand()*-2,getdate()) ;
INSERT Clientes(Cod_Cliente,NomeCliente,CanalVendas,Municipio,Estado,End_Cliente,CEP,Score, DataCadastro) SELECT '29698','Madero','Restaurante','Curitiba','PR','Alameda Buritis, 545','91359','B',dateadd(dd,-rand(),getdate()) ;
INSERT Clientes(Cod_Cliente,NomeCliente,CanalVendas,Municipio,Estado,End_Cliente,CEP,Score, DataCadastro) SELECT '29703','Casa de Paola','Restaurante','Gramado','RS','Rua do Orvalho, 23324','20194','B',getdate() ;

-- Mostra os dados
SELECT * FROM Clientes
