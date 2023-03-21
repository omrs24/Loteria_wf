
/*
* Se puede omitir
*/

IF NOT EXISTS(SELECT * FROM sys.databases WHERE name = 'aspnet-Loteria_wf-20230317081200')
BEGIN
	CREATE DATABASE [aspnet-Loteria_wf-20230317081200];
END


USE [aspnet-Loteria_wf-20230317081200];

/*
*  Usando el prefijo de las tablas default del proyecto
*/

GO

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='AspNetLotteryCards' and xtype='U')
BEGIN
	CREATE TABLE AspNetLotteryCards
	(
		id int IDENTITY(1,1) PRIMARY KEY,
		cardname nvarchar(50) UNIQUE NOT NULL,
		cardimage nvarchar(150) NOT NULL,
		created_at datetime DEFAULT GETDATE(),
		updated_at datetime DEFAULT GETDATE(),
	)
END

GO

INSERT INTO AspNetLotteryCards (cardname, cardimage)
VALUES 
('El gallo', '/Content/Images/1loteria.jpg'),
('El diablito', '/Content/Images/2loteria.jpg'),
('La dama', '/Content/Images/3loteria.jpg'),
('El catrín', '/Content/Images/4loteria.jpg'),
('El paraguas', '/Content/Images/5loteria.jpg'),
('La sirena', '/Content/Images/6loteria.jpg'),
('La escalera', '/Content/Images/7loteria.jpg'),
('La botella', '/Content/Images/8loteria.jpg'),
('El barril', '/Content/Images/9loteria.jpg'),
('El árbol', '/Content/Images/10loteria.jpg'),
('El melón', '/Content/Images/11loteria.jpg'),
('El valiente', '/Content/Images/12loteria.jpg'),
('El gorrito', '/Content/Images/13loteria.jpg'),
('La muerte', '/Content/Images/14loteria.jpg'),
('La pera', '/Content/Images/15loteria.jpg'),
('La bandera', '/Content/Images/16loteria.jpg'),
('El bandolón', '/Content/Images/17loteria.jpg'),
('El violoncello', '/Content/Images/18loteria.jpg'),
('La garza', '/Content/Images/19loteria.jpg'),
('El pájaro', '/Content/Images/20loteria.jpg'),
('La mano', '/Content/Images/21loteria.jpg'),
('La bota', '/Content/Images/22loteria.jpg'),
('La luna', '/Content/Images/23loteria.jpg'),
('El cotorro', '/Content/Images/24loteria.jpg'),
('El borracho', '/Content/Images/25loteria.jpg'),
('El negrito', '/Content/Images/26loteria.jpg'),
('El corazón', '/Content/Images/27loteria.jpg'),
('La sandía', '/Content/Images/28loteria.jpg'),
('El tambor', '/Content/Images/29loteria.jpg'),
('El camarón', '/Content/Images/30loteria.jpg'),
('Las jaras', '/Content/Images/31loteria.jpg'),
('El músico', '/Content/Images/32loteria.jpg'),
('La araña', '/Content/Images/33loteria.jpg'),
('El soldado', '/Content/Images/34loteria.jpg'),
('La estrella', '/Content/Images/35loteria.jpg'),
('El cazo', '/Content/Images/36loteria.jpg'),
('El mundo', '/Content/Images/37loteria.jpg'),
('El apache', '/Content/Images/38loteria.jpg'),
('El nopal', '/Content/Images/39loteria.jpg'),
('El alacrán', '/Content/Images/40loteria.jpg'),
('La rosa', '/Content/Images/41loteria.jpg'),
('La calavera', '/Content/Images/42loteria.jpg'),
('La campana', '/Content/Images/43loteria.jpg'),
('El cantarito', '/Content/Images/44loteria.jpg'),
('El venado', '/Content/Images/45loteria.jpg'),
('El sol', '/Content/Images/46loteria.jpg'),
('La corona', '/Content/Images/47loteria.jpg'),
('La chalupa', '/Content/Images/48loteria.jpg'),
('El pino', '/Content/Images/49loteria.jpg'),
('El pescado', '/Content/Images/50loteria.jpg'),
('La palma', '/Content/Images/51loteria.jpg'),
('La maceta', '/Content/Images/52loteria.jpg'),
('El arpa', '/Content/Images/53loteria.jpg'),
('La rana', '/Content/Images/54loteria.jpg')



/*
*  Usando el prefijo de las tablas default del proyecto
*/

GO

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='AspNetLotteryTables' and xtype='U')
BEGIN

	CREATE TABLE AspNetLotteryTables
	(
		id int IDENTITY(1,1) PRIMARY KEY,
		card1 int NOT NULL,
		card2 int NOT NULL,
		card3 int NOT NULL,
		card4 int NOT NULL,
		card5 int NOT NULL,
		card6 int NOT NULL,
		card7 int NOT NULL,
		card8 int NOT NULL,
		card9 int NOT NULL,
		card10 int NOT NULL,
		card11 int NOT NULL,
		card12 int NOT NULL,
		card13 int NOT NULL,
		card14 int NOT NULL,
		card15 int NOT NULL,
		card16 int NOT NULL,
		created_at datetime DEFAULT GETDATE(),
		updated_at datetime DEFAULT GETDATE(),

		/*
		* Definicion de foreign keys
		*/

		CONSTRAINT fk_card1 FOREIGN KEY (card1) REFERENCES AspNetLotteryCards(id),
		CONSTRAINT fk_card2 FOREIGN KEY (card2) REFERENCES AspNetLotteryCards(id),
		CONSTRAINT fk_card3 FOREIGN KEY (card3) REFERENCES AspNetLotteryCards(id),
		CONSTRAINT fk_card4 FOREIGN KEY (card4) REFERENCES AspNetLotteryCards(id),
		CONSTRAINT fk_card5 FOREIGN KEY (card5) REFERENCES AspNetLotteryCards(id),
		CONSTRAINT fk_card6 FOREIGN KEY (card6) REFERENCES AspNetLotteryCards(id),
		CONSTRAINT fk_card7 FOREIGN KEY (card7) REFERENCES AspNetLotteryCards(id),
		CONSTRAINT fk_card8 FOREIGN KEY (card8) REFERENCES AspNetLotteryCards(id),
		CONSTRAINT fk_card9 FOREIGN KEY (card9) REFERENCES AspNetLotteryCards(id),
		CONSTRAINT fk_card10 FOREIGN KEY (card10) REFERENCES AspNetLotteryCards(id),
		CONSTRAINT fk_card11 FOREIGN KEY (card11) REFERENCES AspNetLotteryCards(id),
		CONSTRAINT fk_card12 FOREIGN KEY (card12) REFERENCES AspNetLotteryCards(id),
		CONSTRAINT fk_card13 FOREIGN KEY (card13) REFERENCES AspNetLotteryCards(id),
		CONSTRAINT fk_card14 FOREIGN KEY (card14) REFERENCES AspNetLotteryCards(id),
		CONSTRAINT fk_card15 FOREIGN KEY (card15) REFERENCES AspNetLotteryCards(id),
		CONSTRAINT fk_card16 FOREIGN KEY (card16) REFERENCES AspNetLotteryCards(id)
	)
END

