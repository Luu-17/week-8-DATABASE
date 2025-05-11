

-- Distributor Table

CREATE TABLE distributor(
	dist_ID INT PRIMARY KEY AUTO_INCREMENT,
    distributorName VARCHAR(100),
    Country VARCHAR(100),
    pay_period VARCHAR(100)
);

-- Distributor Info
INSERT INTO distributor
VALUES 	(1,"DISTROKID","AMERICA","3-months"),
		(2,"V Music group","South Africa","12-months"),
        (4,"Ditto","United-Kingdom","3-months"),
        (5,"Amuse","Sweden","3-months");
        
-- Artist Table
CREATE TABLE artist(
	Artist_ID INT PRIMARY KEY AUTO_INCREMENT,
    StageName VARCHAR(100),
    realName VARCHAR(100),
    based VARCHAR (100),
    distributionType VARCHAR(100),
    dist_ID INT,
    FOREIGN KEY (dist_ID) REFERENCES distributor(dist_ID)
);

ALTER TABLE artist AUTO_INCREMENT = 141000;

-- Artist Info 
INSERT INTO artist (stageName, realName,based, distributionType,dist_ID)
VALUES 	("OX","Simon Mphaphuli", "Limpopo", "subscription",5),
		("LaTrevor", "Maribe Trevor Mogkubo", "Gauteng","contract",2),
        ("Nuff-God", "Tshepo Lepere", "North West","subscription",4),
        ("MBL Legitmate","Lukhanyo Mzanywa","Gauteng","contract",2),
		("Uncle Mlhonizer","Lehlohonolo Blessing Khumalo","Lesetho","subscription",4);



-- catelogue

CREATE TABLE music (
	song_ID INT PRIMARY KEY AUTO_INCREMENT,
    nameofsong VARCHAR(100),
    genre VARCHAR(100),
    dist_ID INT,
    FOREIGN KEY (dist_ID) REFERENCES distributor(dist_ID),
    Artist_ID INT,
    FOREIGN KEY (Artist_ID)  REFERENCES artist(Artist_ID),
    doR DATE
);

-- Music Data
INSERT INTO music (nameofsong,genre,dist_ID,Artist_ID,doR)
VALUES 		("Daily Nightmare", "HipHop", 2, 141000, '2023-07-20'),
			("Daily Nightmare", "HipHop", 2, 141003, '2023-07-20'),
			("The Ballers Dream", "Hip Hop", 2, 141003, '2023-04-06'),
			("The Weekend", "Hip Hop", 2, 141003, '2023-05-23'),
			("Ride With Me", "Ama Piano", 4, 141004, '2023-09-16'),
			("Be Careful", "Hip-Hop", 2, 141001, '2023-07-15'),
			("Dead To Me", "Hip-Hop", 2, 141001, '2023-07-15'),
			("Blue Tick (Valhalla)", "Hip-Hop", 2, 141001, '2023-07-15'),
			("365 C Walk", "Hip-Hop", 2, 141001, '2023-07-15'),
			("SofT Life (Bonus Track)", "Hip-Hop", 2, 141001, '2023-07-15'),
			("Dollar Step (Antidote)", "Hip-Hop", 4, 141002, '2024-12-16'),
			("Pitori Kamo Jozi", "Hip-Hop", 4, 141002, '2024-08-10'),
			("City Lyts", "Hip-Hop", 4, 141002, '2024-05-22'),
			("Pull Up", "Hip-Hop", 4, 141002, '2023-11-03'),
			("Be Without You", "Hip-Hop", 4, 141002, '2023-06-15'),
            ("SGS", "Dancehall",2,141003,Null);



