CREATE DATABASE SpotifyDB;
USE SpotifyDB;
-- user table--
CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    UserName VARCHAR(50),
    Email VARCHAR(100),
    Country VARCHAR(50),
    Subscription VARCHAR(20)
);
-- artists table--
CREATE TABLE Artists (
    ArtistID INT PRIMARY KEY,
    ArtistName VARCHAR(100),
    Genre VARCHAR(50),
    Country VARCHAR(50)
);
-- albums table--
CREATE TABLE Albums (
    AlbumID INT PRIMARY KEY,
    AlbumName VARCHAR(100),
    ReleaseYear INT,
    ArtistID INT,
    FOREIGN KEY (ArtistID) REFERENCES Artists(ArtistID)
);
-- songs table-- 
CREATE TABLE Songs (
    SongID INT PRIMARY KEY,
    SongName VARCHAR(100),
    Duration TIME,
    Genre VARCHAR(50),
    AlbumID INT,
    ArtistID INT,
    FOREIGN KEY (AlbumID) REFERENCES Albums(AlbumID),
    FOREIGN KEY (ArtistID) REFERENCES Artists(ArtistID)
);
-- playlist table-- 
CREATE TABLE Playlists (
    PlaylistID INT PRIMARY KEY,
    PlaylistName VARCHAR(100),
    UserID INT,
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);
-- listening history table-- 
CREATE TABLE ListeningHistory (
    HistoryID INT PRIMARY KEY,
    UserID INT,
    SongID INT,
    PlayDate DATE,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (SongID) REFERENCES Songs(SongID)
    );

INSERT INTO Users (UserID, UserName, Email, Country, Subscription) VALUES
(1,'Priya','priya@gmail.com','India','Premium'),
(2,'Rahul','rahul@gmail.com','India','Free'),
(3,'Sneha','sneha@gmail.com','India','Premium'),
(4,'Amit','amit@gmail.com','India','Free'),
(5,'Rohan','rohan@gmail.com','India','Premium'),
(6,'Neha','neha@gmail.com','India','Free'),
(7,'Sweety','karan@gmail.com','India','Premium'),
(8,'Anjali','anjali@gmail.com','India','Premium'),
(9,'Vikram','vikram@gmail.com','India','Free'),
(10,'Pooja','pooja@gmail.com','India','Premium');
INSERT INTO Users (UserID, UserName, Email, Country, Subscription) VALUES
(11,'Karan','karan11@gmail.com','India','Premium'),
(12,'Meera','meera12@gmail.com','India','Free'),
(13,'Aditya','aditya13@gmail.com','India','Premium'),
(14,'Simran','simran14@gmail.com','India','Premium'),
(15,'Nikhil','nikhil15@gmail.com','India','Free'),
(16,'Ayesha','ayesha16@gmail.com','India','Premium'),
(17,'Ritika','ritika17@gmail.com','India','Free'),
(18,'Manish','manish18@gmail.com','India','Premium'),
(19,'Divya','divya19@gmail.com','India','Free'),
(20,'Akash','akash20@gmail.com','India','Premium'),
(21,'Isha','isha21@gmail.com','India','Free'),
(22,'Varun','varun22@gmail.com','India','Premium'),
(23,'Ankit','ankit23@gmail.com','India','Premium'),
(24,'Sakshi','sakshi24@gmail.com','India','Free'),
(25,'Harsh','harsh25@gmail.com','India','Premium'),
(26,'Riya','riya26@gmail.com','India','Premium'),
(27,'Yash','yash27@gmail.com','India','Free'),
(28,'Komal','komal28@gmail.com','India','Premium'),
(29,'Deepak','deepak29@gmail.com','India','Free'),
(30,'Tanvi','tanvi30@gmail.com','India','Premium'),
(31,'Mohit','mohit31@gmail.com','India','Premium'),
(32,'Payal','payal32@gmail.com','India','Free'),
(33,'Arjun','arjun33@gmail.com','India','Premium'),
(34,'Kavya','kavya34@gmail.com','India','Premium'),
(35,'Rakesh','rakesh35@gmail.com','India','Free'),
(36,'Sonal','sonal36@gmail.com','India','Premium'),
(37,'Abhishek','abhishek37@gmail.com','India','Premium'),
(38,'Pallavi','pallavi38@gmail.com','India','Free'),
(39,'Gaurav','gaurav39@gmail.com','India','Premium'),
(40,'Bhavna','bhavna40@gmail.com','India','Premium'),
(41,'Vivek','vivek41@gmail.com','India','Free'),
(42,'Neeraj','neeraj42@gmail.com','India','Premium'),
(43,'Preeti','preeti43@gmail.com','India','Free'),
(44,'Aarav','aarav44@gmail.com','India','Premium'),
(45,'Kiara','kiara45@gmail.com','India','Premium'),
(46,'Shivam','shivam46@gmail.com','India','Free'),
(47,'Nandini','nandini47@gmail.com','India','Premium'),
(48,'Rohit','rohit48@gmail.com','India','Premium'),
(49,'Shruti','shruti49@gmail.com','India','Free'),
(50,'Ananya','ananya50@gmail.com','India','Premium'),
(51,'Pratik','pratik51@gmail.com','India','Premium'),
(52,'Mansi','mansi52@gmail.com','India','Free'),
(53,'Kunal','kunal53@gmail.com','India','Premium'),
(54,'Juhi','juhi54@gmail.com','India','Premium'),
(55,'Siddharth','siddharth55@gmail.com','India','Free'),
(56,'Nikita','nikita56@gmail.com','India','Premium'),
(57,'Chirag','chirag57@gmail.com','India','Premium'),
(58,'Rupal','rupal58@gmail.com','India','Free'),
(59,'Sameer','sameer59@gmail.com','India','Premium'),
(60,'Muskan','muskan60@gmail.com','India','Premium'),
(61,'Hemant','hemant61@gmail.com','India','Free'),
(62,'Poonam','poonam62@gmail.com','India','Premium'),
(63,'Aman','aman63@gmail.com','India','Premium'),
(64,'Tanya','tanya64@gmail.com','India','Free'),
(65,'Nitin','nitin65@gmail.com','India','Premium'),
(66,'Sejal','sejal66@gmail.com','India','Premium'),
(67,'Lokesh','lokesh67@gmail.com','India','Free'),
(68,'Krishna','krishna68@gmail.com','India','Premium'),
(69,'Ishita','ishita69@gmail.com','India','Premium'),
(70,'Rohan','rohan70@gmail.com','India','Free'),
(71,'Anmol','anmol71@gmail.com','India','Premium'),
(72,'Khushi','khushi72@gmail.com','India','Premium'),
(73,'Chetan','chetan73@gmail.com','India','Free'),
(74,'Snehal','snehal74@gmail.com','India','Premium'),
(75,'Mayank','mayank75@gmail.com','India','Premium'),
(76,'Reema','reema76@gmail.com','India','Free'),
(77,'Vansh','vansh77@gmail.com','India','Premium'),
(78,'Piyush','piyush78@gmail.com','India','Premium'),
(79,'Anushka','anushka79@gmail.com','India','Free'),
(80,'Dev','dev80@gmail.com','India','Premium'),
(81,'Riddhi','riddhi81@gmail.com','India','Premium'),
(82,'Om','om82@gmail.com','India','Free'),
(83,'Shubham','shubham83@gmail.com','India','Premium'),
(84,'Palak','palak84@gmail.com','India','Premium'),
(85,'Tejas','tejas85@gmail.com','India','Free'),
(86,'Bhavesh','bhavesh86@gmail.com','India','Premium'),
(87,'Lavanya','lavanya87@gmail.com','India','Premium'),
(88,'Parth','parth88@gmail.com','India','Free'),
(89,'Vidhi','vidhi89@gmail.com','India','Premium'),
(90,'Kartik','kartik90@gmail.com','India','Premium'),
(91,'Aditi','aditi91@gmail.com','India','Free'),
(92,'Yuvraj','yuvraj92@gmail.com','India','Premium'),
(93,'Shreya','shreya93@gmail.com','India','Premium'),
(94,'Tushar','tushar94@gmail.com','India','Free'),
(95,'Prerna','prerna95@gmail.com','India','Premium'),
(96,'Rachit','rachit96@gmail.com','India','Premium'),
(97,'Suhani','suhani97@gmail.com','India','Free'),
(98,'Harshita','harshita98@gmail.com','India','Premium'),
(99,'Dhruv','dhruv99@gmail.com','India','Premium'),
(100,'Alok','alok100@gmail.com','India','Free');

INSERT INTO Artists (ArtistID, ArtistName, Genre, Country) VALUES
(1,'Arijit Singh','Bollywood','India'),
(2,'Shreya Ghoshal','Bollywood','India'),
(3,'Taylor Swift','Pop','USA'),
(4,'Ed Sheeran','Pop','UK'),
(5,'Alan Walker','Electronic','Norway');
INSERT INTO Artists (ArtistID, ArtistName, Genre, Country) VALUES
(6,'Atif Aslam','Pop','Pakistan'),
(7,'Sonu Nigam','Bollywood','India'),
(8,'Neha Kakkar','Bollywood','India'),
(9,'Darshan Raval','Pop','India'),
(10,'Jubin Nautiyal','Bollywood','India'),
(11,'Armaan Malik','Pop','India'),
(12,'Badshah','Hip Hop','India'),
(13,'Honey Singh','Hip Hop','India'),
(14,'Diljit Dosanjh','Punjabi','India'),
(15,'Guru Randhawa','Punjabi','India'),
(16,'AP Dhillon','Punjabi','Canada'),
(17,'Sidhu Moose Wala','Punjabi','India'),
(18,'Harrdy Sandhu','Punjabi','India'),
(19,'Shankar Mahadevan','Bollywood','India'),
(20,'Vishal Dadlani','Rock','India'),
(21,'Sunidhi Chauhan','Bollywood','India'),
(22,'Alka Yagnik','Bollywood','India'),
(23,'Udit Narayan','Bollywood','India'),
(24,'Kumar Sanu','Bollywood','India'),
(25,'Lata Mangeshkar','Classical','India'),
(26,'Asha Bhosle','Classical','India'),
(27,'Mohit Chauhan','Bollywood','India'),
(28,'Pritam','Music Director','India'),
(29,'Amit Trivedi','Bollywood','India'),
(30,'Sachin-Jigar','Bollywood','India'),
(31,'B Praak','Punjabi','India'),
(32,'A R Rahman','Classical','India'),
(33,'Selena Gomez','Pop','USA'),
(34,'Justin Bieber','Pop','Canada'),
(35,'Bruno Mars','Pop','USA'),
(36,'Adele','Pop','UK'),
(37,'Billie Eilish','Pop','USA'),
(38,'Dua Lipa','Pop','UK'),
(39,'The Weeknd','R&B','Canada'),
(40,'Shawn Mendes','Pop','Canada'),
(41,'Charlie Puth','Pop','USA'),
(42,'Maroon 5','Pop','USA'),
(43,'Imagine Dragons','Rock','USA'),
(44,'Coldplay','Rock','UK'),
(45,'OneRepublic','Pop','USA'),
(46,'Linkin Park','Rock','USA'),
(47,'Eminem','Rap','USA'),
(48,'Drake','Hip Hop','Canada'),
(49,'Post Malone','Hip Hop','USA'),
(50,'Katy Perry','Pop','USA'),
(51,'Rihanna','Pop','Barbados'),
(52,'Lady Gaga','Pop','USA'),
(53,'Beyonce','R&B','USA'),
(54,'Jennifer Lopez','Pop','USA'),
(55,'Camila Cabello','Pop','Cuba'),
(56,'Sia','Pop','Australia'),
(57,'Zayn Malik','Pop','UK'),
(58,'Lewis Capaldi','Pop','UK'),
(59,'Sam Smith','Pop','UK'),
(60,'Ellie Goulding','Pop','UK'),
(61,'David Guetta','Electronic','France'),
(62,'Martin Garrix','Electronic','Netherlands'),
(63,'Marshmello','Electronic','USA'),
(64,'Kygo','Electronic','Norway'),
(65,'DJ Snake','Electronic','France'),
(66,'Calvin Harris','Electronic','UK'),
(67,'Avicii','Electronic','Sweden'),
(68,'Skrillex','Electronic','USA'),
(69,'Zedd','Electronic','Germany'),
(70,'Chainsmokers','Electronic','USA'),
(71,'Pitbull','Rap','USA'),
(72,'Flo Rida','Rap','USA'),
(73,'Lil Nas X','Rap','USA'),
(74,'Doja Cat','Rap','USA'),
(75,'Olivia Rodrigo','Pop','USA'),
(76,'Conan Gray','Pop','USA'),
(77,'Harry Styles','Pop','UK'),
(78,'Niall Horan','Pop','Ireland'),
(79,'Liam Payne','Pop','UK'),
(80,'Louis Tomlinson','Pop','UK'),
(81,'Ed Maverick','Indie','Mexico'),
(82,'James Arthur','Pop','UK'),
(83,'Passenger','Folk','UK'),
(84,'Hozier','Indie','Ireland'),
(85,'John Legend','R&B','USA'),
(86,'Alicia Keys','R&B','USA'),
(87,'Enrique Iglesias','Latin Pop','Spain'),
(88,'Shakira','Latin Pop','Colombia'),
(89,'Maluma','Latin Pop','Colombia'),
(90,'J Balvin','Latin Pop','Colombia'),
(91,'Rosalia','Latin Pop','Spain'),
(92,'BLACKPINK','K-Pop','South Korea'),
(93,'BTS','K-Pop','South Korea'),
(94,'EXO','K-Pop','South Korea'),
(95,'TWICE','K-Pop','South Korea'),
(96,'Stray Kids','K-Pop','South Korea'),
(97,'SEVENTEEN','K-Pop','South Korea'),
(98,'TXT','K-Pop','South Korea'),
(99,'NewJeans','K-Pop','South Korea'),
(100,'IVE','K-Pop','South Korea');

INSERT INTO Albums (AlbumID, AlbumName, ReleaseYear, ArtistID) VALUES
(201,'Aashiqui 2',2023,1),
(202,'Melodies',2022,2),
(203,'Divide',2017,3),
(204,'Midnights',2022,4),
(205,'Hidden Gems',2021,5);
INSERT INTO Albums (AlbumID, AlbumName, ReleaseYear, ArtistID) VALUES
(206,'Heart Beats',2023,6),
(207,'Soul Music',2022,7),
(208,'Love Forever',2024,8),
(209,'Golden Hits',2021,9),
(210,'Dream Tunes',2020,10),
(211,'Moonlight',2023,11),
(212,'Party Nights',2022,12),
(213,'Desi Swag',2021,13),
(214,'Punjabi Vibes',2024,14),
(215,'High Rated',2023,15),
(216,'Brown Munde',2022,16),
(217,'Legend Forever',2021,17),
(218,'Back to Love',2023,18),
(219,'Melody King',2020,19),
(220,'Rocking Beats',2022,20),
(221,'Feelings',2023,21),
(222,'Golden Voice',2021,22),
(223,'Classic Love',2020,23),
(224,'90s Collection',2019,24),
(225,'Evergreen',2018,25),
(226,'Golden Era',2017,26),
(227,'Safar',2022,27),
(228,'Pritam Hits',2023,28),
(229,'Love Stories',2022,29),
(230,'Dance Fever',2024,30),
(231,'Mann Bharry',2021,31),
(232,'Harmony',2023,32),
(233,'Rare',2020,33),
(234,'Justice',2021,34),
(235,'24K Magic',2016,35),
(236,'30',2021,36),
(237,'Happier Than Ever',2021,37),
(238,'Future Nostalgia',2020,38),
(239,'After Hours',2020,39),
(240,'Wonder',2020,40),
(241,'Voicenotes',2018,41),
(242,'Red Pill Blues',2017,42),
(243,'Mercury',2022,43),
(244,'Music of the Spheres',2021,44),
(245,'Human',2021,45),
(246,'Hybrid Theory',2000,46),
(247,'Recovery',2010,47),
(248,'Scorpion',2018,48),
(249,'Hollywood Dreams',2022,49),
(250,'Teenage Dream',2010,50),
(251,'Anti',2016,51),
(252,'Chromatica',2020,52),
(253,'Renaissance',2022,53),
(254,'On The Floor',2011,54),
(255,'Familia',2022,55),
(256,'This Is Acting',2016,56),
(257,'Mind of Mine',2016,57),
(258,'Broken By Desire',2023,58),
(259,'Gloria',2023,59),
(260,'Bright Lights',2022,60),
(261,'Listen Again',2023,61),
(262,'Sentio',2022,62),
(263,'Joytime',2019,63),
(264,'Golden Hour',2020,64),
(265,'Encore',2016,65),
(266,'Funk Wav',2022,66),
(267,'Tim',2019,67),
(268,'Quest For Fire',2023,68),
(269,'True Colors',2015,69),
(270,'Memories',2021,70),
(271,'Global Rap',2020,71),
(272,'Wild Ones',2012,72),
(273,'Montero',2021,73),
(274,'Planet Her',2021,74),
(275,'Sour',2021,75),
(276,'Superache',2022,76),
(277,'Harrys House',2022,77),
(278,'The Show',2023,78),
(279,'LP1',2019,79),
(280,'Faith In Future',2022,80),
(281,'Eduardo',2021,81),
(282,'Back From Edge',2016,82),
(283,'All The Little Lights',2012,83),
(284,'Unreal Unearth',2023,84),
(285,'Legend',2022,85),
(286,'Keys',2021,86),
(287,'Final Vol 1',2022,87),
(288,'El Dorado',2017,88),
(289,'Pretty Boy',2021,89),
(290,'Jose',2021,90),
(291,'Motomami',2022,91),
(292,'Born Pink',2022,92),
(293,'Proof',2022,93),
(294,'Exist',2023,94),
(295,'Ready To Be',2023,95),
(296,'5 Star',2023,96),
(297,'FML',2023,97),
(298,'The Name Chapter',2023,98),
(299,'Get Up',2023,99),
(300,'Ive Mine',2023,100);

INSERT INTO Songs (SongID, SongName, Duration, Genre, AlbumID, ArtistID) VALUES
(1,'Kesariya','00:04:28','Bollywood',201,1),
(2,'Tum Hi Ho','00:04:10','Bollywood',202,1),
(3,'Blank Space','00:03:51','Pop',203,3),
(4,'Perfect','00:04:23','Pop',204,4),
(5,'Faded','00:03:32','Electronic',205,5),
(6,'Love Me Like You Do','00:04:12','Pop',204,4),
(7,'Shape of You','00:03:53','Pop',204,4),
(8,'Lily','00:03:15','Electronic',205,5),
(9,'Agar Tum Saath Ho','00:05:41','Bollywood',201,2),
(10,'Style','00:03:51','Pop',203,3);
INSERT INTO Songs (SongID, SongName, Duration, Genre, AlbumID, ArtistID) VALUES
(11,'Jeene Laga','00:04:15','Pop',206,6),
(12,'Ab Mujhe Raat Din','00:05:10','Bollywood',207,7),
(13,'Dilbar','00:03:32','Bollywood',208,8),
(14,'Hawa Banke','00:03:45','Pop',209,9),
(15,'Lut Gaye','00:03:58','Bollywood',210,10),
(16,'Control','00:03:41','Pop',211,11),
(17,'Mercy','00:03:18','Hip Hop',212,12),
(18,'Blue Eyes','00:03:39','Hip Hop',213,13),
(19,'Born To Shine','00:03:47','Punjabi',214,14),
(20,'Lahore','00:03:50','Punjabi',215,15),
(21,'Excuses','00:02:57','Punjabi',216,16),
(22,'295','00:04:30','Punjabi',217,17),
(23,'Naah','00:03:12','Punjabi',218,18),
(24,'Breathless','00:06:02','Bollywood',219,19),
(25,'Balam Pichkari','00:04:48','Rock',220,20),
(26,'Sheila Ki Jawani','00:04:09','Bollywood',221,21),
(27,'Tip Tip Barsa Pani','00:05:23','Bollywood',222,22),
(28,'Pehla Nasha','00:05:14','Bollywood',223,23),
(29,'Tujhe Dekha','00:05:05','Bollywood',224,24),
(30,'Lag Ja Gale','00:04:20','Classical',225,25),
(31,'Piya Tu','00:04:43','Classical',226,26),
(32,'Tum Se Hi','00:05:01','Bollywood',227,27),
(33,'Raabta','00:04:03','Bollywood',228,28),
(34,'Namo Namo','00:05:22','Bollywood',229,29),
(35,'Apna Bana Le','00:04:10','Bollywood',230,30),
(36,'Filhall','00:04:12','Punjabi',231,31),
(37,'Jai Ho','00:05:18','Classical',232,32),
(38,'Lose You To Love Me','00:03:26','Pop',233,33),
(39,'Peaches','00:03:18','Pop',234,34),
(40,'Treasure','00:02:59','Pop',235,35),
(41,'Easy On Me','00:03:44','Pop',236,36),
(42,'Therefore I Am','00:02:54','Pop',237,37),
(43,'Levitating','00:03:24','Pop',238,38),
(44,'Blinding Lights','00:03:20','R&B',239,39),
(45,'Treat You Better','00:03:08','Pop',240,40),
(46,'Attention','00:03:31','Pop',241,41),
(47,'Girls Like You','00:03:56','Pop',242,42),
(48,'Believer','00:03:24','Rock',243,43),
(49,'Paradise','00:04:20','Rock',244,44),
(50,'Counting Stars','00:04:16','Pop',245,45),
(51,'In The End','00:03:36','Rock',246,46),
(52,'Not Afraid','00:04:08','Rap',247,47),
(53,'Gods Plan','00:03:19','Hip Hop',248,48),
(54,'Circles','00:03:35','Hip Hop',249,49),
(55,'Roar','00:03:42','Pop',250,50),
(56,'Diamonds','00:03:45','Pop',251,51),
(57,'Poker Face','00:03:58','Pop',252,52),
(58,'Halo','00:04:21','R&B',253,53),
(59,'On The Floor','00:04:28','Pop',254,54),
(60,'Havana','00:03:37','Pop',255,55),
(61,'Cheap Thrills','00:03:44','Pop',256,56),
(62,'Pillowtalk','00:03:25','Pop',257,57),
(63,'Someone You Loved','00:03:02','Pop',258,58),
(64,'Stay With Me','00:02:52','Pop',259,59),
(65,'Lights','00:03:41','Pop',260,60),
(66,'Titanium','00:04:05','Electronic',261,61),
(67,'Animals','00:03:14','Electronic',262,62),
(68,'Alone','00:03:22','Electronic',263,63),
(69,'Firestone','00:04:34','Electronic',264,64),
(70,'Taki Taki','00:03:32','Electronic',265,65),
(71,'Summer','00:03:43','Electronic',266,66),
(72,'Wake Me Up','00:04:09','Electronic',267,67),
(73,'Bangarang','00:03:35','Electronic',268,68),
(74,'Clarity','00:04:31','Electronic',269,69),
(75,'Closer','00:04:05','Electronic',270,70),
(76,'Timber','00:03:24','Rap',271,71),
(77,'Whistle','00:03:45','Rap',272,72),
(78,'Industry Baby','00:03:32','Rap',273,73),
(79,'Woman','00:02:53','Rap',274,74),
(80,'Drivers License','00:04:02','Pop',275,75),
(81,'Memories','00:04:07','Pop',276,76),
(82,'As It Was','00:02:48','Pop',277,77),
(83,'Heaven','00:03:08','Pop',278,78),
(84,'Strip That Down','00:03:24','Pop',279,79),
(85,'Bigger Than Me','00:03:40','Pop',280,80),
(86,'Fuentes','00:03:20','Indie',281,81),
(87,'Say You Wont Let Go','00:03:31','Pop',282,82),
(88,'Let Her Go','00:04:12','Folk',283,83),
(89,'Take Me To Church','00:04:03','Indie',284,84),
(90,'All Of Me','00:04:29','R&B',285,85),
(91,'Girl On Fire','00:03:46','R&B',286,86),
(92,'Hero','00:04:18','Latin Pop',287,87),
(93,'Waka Waka','00:03:24','Latin Pop',288,88),
(94,'Hawai','00:03:19','Latin Pop',289,89),
(95,'Mi Gente','00:03:06','Latin Pop',290,90),
(96,'Despecha','00:02:39','Latin Pop',291,91),
(97,'Pink Venom','00:03:08','K-Pop',292,92),
(98,'Dynamite','00:03:19','K-Pop',293,93),
(99,'Cream Soda','00:03:27','K-Pop',294,94),
(100,'Moonlight Sunrise','00:03:01','K-Pop',295,95);

INSERT INTO Playlists (PlaylistID, PlaylistName, UserID) VALUES
(1,'Workout Mix',1),
(2,'Romantic Hits',2),
(3,'Party Songs',3),
(4,'Travel Playlist',4),
(5,'Chill Vibes',5),
(6,'Top Bollywood',6),
(7,'English Hits',7),
(8,'Morning Playlist',8),
(9,'Evening Relax',9),
(10,'Weekend Fun',10);
INSERT INTO Playlists (PlaylistID, PlaylistName, UserID) VALUES
(11,'Late Night Vibes',11),
(12,'Gym Beats',12),
(13,'Road Trip',13),
(14,'Study Session',14),
(15,'Relaxing Music',15),
(16,'Morning Energy',16),
(17,'Rainy Day',17),
(18,'Party Mix',18),
(19,'Top Hits',19),
(20,'Classic Bollywood',20),
(21,'Romantic Collection',21),
(22,'Peaceful Tunes',22),
(23,'Dance Floor',23),
(24,'Workout Hits',24),
(25,'Sunday Chill',25),
(26,'Mood Booster',26),
(27,'Soft Melodies',27),
(28,'Night Drive',28),
(29,'Office Playlist',29),
(30,'Travel Beats',30),
(31,'Feel Good Songs',31),
(32,'Weekend Party',32),
(33,'Love Forever',33),
(34,'Bollywood Magic',34),
(35,'English Favorites',35),
(36,'Punjabi Power',36),
(37,'Rock Classics',37),
(38,'Pop Explosion',38),
(39,'Electronic Mix',39),
(40,'Rap Nation',40),
(41,'Coffee Time',41),
(42,'Focus Mode',42),
(43,'Motivation',43),
(44,'Soulful Tracks',44),
(45,'Family Time',45),
(46,'Festival Songs',46),
(47,'Road Vibes',47),
(48,'Acoustic Mood',48),
(49,'Hits 2025',49),
(50,'Old Memories',50),
(51,'Daily Mix 1',51),
(52,'Daily Mix 2',52),
(53,'Daily Mix 3',53),
(54,'Daily Mix 4',54),
(55,'Daily Mix 5',55),
(56,'Happy Mood',56),
(57,'Sad Songs',57),
(58,'Sleep Music',58),
(59,'Nature Sounds',59),
(60,'Fresh Releases',60),
(61,'Top Pop',61),
(62,'Top Rock',62),
(63,'Top Hip Hop',63),
(64,'Top Electronic',64),
(65,'Top Punjabi',65),
(66,'Top Romantic',66),
(67,'Top Dance',67),
(68,'Golden Collection',68),
(69,'Unplugged',69),
(70,'Fusion Beats',70),
(71,'Calm Mind',71),
(72,'Meditation',72),
(73,'Drive Safe',73),
(74,'Weekend Chill',74),
(75,'Party All Night',75),
(76,'Indie Mix',76),
(77,'Summer Vibes',77),
(78,'Winter Mood',78),
(79,'Festival Beats',79),
(80,'Friends Forever',80),
(81,'Romantic Evenings',81),
(82,'Bollywood Nights',82),
(83,'English Pop',83),
(84,'Hip Hop Hits',84),
(85,'Rock Legends',85),
(86,'EDM Party',86),
(87,'Morning Walk',87),
(88,'Evening Walk',88),
(89,'Relax Mode',89),
(90,'Coding Playlist',90),
(91,'Gaming Tracks',91),
(92,'Motivational Songs',92),
(93,'Workout Motivation',93),
(94,'Dance Party',94),
(95,'International Hits',95),
(96,'K-Pop Collection',96),
(97,'Latin Vibes',97),
(98,'Coffee House',98),
(99,'Peaceful Evening',99),
(100,'My Favorites',100);

INSERT INTO ListeningHistory (HistoryID, UserID, SongID, PlayDate) VALUES
(1,1,1,'2025-07-01'),
(2,2,2,'2025-07-02'),
(3,3,3,'2025-07-03'),
(4,4,4,'2025-07-04'),
(5,5,5,'2025-07-05'),
(6,6,6,'2025-07-06'),
(7,7,7,'2025-07-07'),
(8,8,8,'2025-07-08'),
(9,9,9,'2025-07-09'),
(10,10,10,'2025-07-10'),
(11,1,3,'2025-07-11'),
(12,2,5,'2025-07-12'),
(13,3,7,'2025-07-13'),
(14,4,9,'2025-07-14'),
(15,5,2,'2025-07-15');
INSERT INTO ListeningHistory (HistoryID, UserID, SongID, PlayDate) VALUES
(16,11,11,'2025-07-16'),
(17,12,12,'2025-07-17'),
(18,13,13,'2025-07-18'),
(19,14,14,'2025-07-19'),
(20,15,15,'2025-07-20'),
(21,16,16,'2025-07-21'),
(22,17,17,'2025-07-22'),
(23,18,18,'2025-07-23'),
(24,19,19,'2025-07-24'),
(25,20,20,'2025-07-25'),
(26,21,21,'2025-07-26'),
(27,22,22,'2025-07-27'),
(28,23,23,'2025-07-28'),
(29,24,24,'2025-07-29'),
(30,25,25,'2025-07-30'),
(31,26,26,'2025-07-31'),
(32,27,27,'2025-08-01'),
(33,28,28,'2025-08-02'),
(34,29,29,'2025-08-03'),
(35,30,30,'2025-08-04'),
(36,31,31,'2025-08-05'),
(37,32,32,'2025-08-06'),
(38,33,33,'2025-08-07'),
(39,34,34,'2025-08-08'),
(40,35,35,'2025-08-09'),
(41,36,36,'2025-08-10'),
(42,37,37,'2025-08-11'),
(43,38,38,'2025-08-12'),
(44,39,39,'2025-08-13'),
(45,40,40,'2025-08-14'),
(46,41,41,'2025-08-15'),
(47,42,42,'2025-08-16'),
(48,43,43,'2025-08-17'),
(49,44,44,'2025-08-18'),
(50,45,45,'2025-08-19'),
(51,46,46,'2025-08-20'),
(52,47,47,'2025-08-21'),
(53,48,48,'2025-08-22'),
(54,49,49,'2025-08-23'),
(55,50,50,'2025-08-24'),
(56,51,51,'2025-08-25'),
(57,52,52,'2025-08-26'),
(58,53,53,'2025-08-27'),
(59,54,54,'2025-08-28'),
(60,55,55,'2025-08-29'),
(61,56,56,'2025-08-30'),
(62,57,57,'2025-08-31'),
(63,58,58,'2025-09-01'),
(64,59,59,'2025-09-02'),
(65,60,60,'2025-09-03'),
(66,61,61,'2025-09-04'),
(67,62,62,'2025-09-05'),
(68,63,63,'2025-09-06'),
(69,64,64,'2025-09-07'),
(70,65,65,'2025-09-08'),
(71,66,66,'2025-09-09'),
(72,67,67,'2025-09-10'),
(73,68,68,'2025-09-11'),
(74,69,69,'2025-09-12'),
(75,70,70,'2025-09-13'),
(76,71,71,'2025-09-14'),
(77,72,72,'2025-09-15'),
(78,73,73,'2025-09-16'),
(79,74,74,'2025-09-17'),
(80,75,75,'2025-09-18'),
(81,76,76,'2025-09-19'),
(82,77,77,'2025-09-20'),
(83,78,78,'2025-09-21'),
(84,79,79,'2025-09-22'),
(85,80,80,'2025-09-23'),
(86,81,81,'2025-09-24'),
(87,82,82,'2025-09-25'),
(88,83,83,'2025-09-26'),
(89,84,84,'2025-09-27'),
(90,85,85,'2025-09-28'),
(91,86,86,'2025-09-29'),
(92,87,87,'2025-09-30'),
(93,88,88,'2025-10-01'),
(94,89,89,'2025-10-02'),
(95,90,90,'2025-10-03'),
(96,91,91,'2025-10-04'),
(97,92,92,'2025-10-05'),
(98,93,93,'2025-10-06'),
(99,94,94,'2025-10-07'),
(100,95,95,'2025-10-08');

select * from users;
select * from albums;
select * from artists;
select * from songs;
select * from listeninghistory;
select * from playlists;

-- Aggregations Count, Average, Maximum, Minimum
Select count(*) as TotalUsers 
From Users;

Select count(*) as TotalSongs
From Songs;

Select avg(releaseyear)  as AverageRealeaseYear
from Albums;

Select max(releaseyear) as LatestAlbum
from Albums;

Select ArtistID, count(SongId) as TotalSongs
from Songs
group by ArtistID;

-- group by 
-- count users by subscription 
select subscription, count(*) as TotalUsers
from users
group by Subscription;

-- count songs by genre 
select genre, count(*) as TotalSongs
from songs
group by genre;

-- JOIN 
-- display songs name with artist name 
select s.SongName, a.ArtistName 
From Songs s
Inner Join Artists a
On s.ArtistID = a.ArtistID;

-- display user name and playlist name 
select UserName, PlaylistName 
from Users
Join Playlists 
On Users.UserID = Playlists.UserID;

-- order by
-- display songs in Alphabetical Order 
select SongID, SongName 
from Songs 
order by SongName ASC; 

-- display albums by latest release year 
select albumname, releaseyear
from albums
order by ReleaseYear Desc;

-- distinct
-- show only unique value 
select distinct Genre 
from songs;

-- limit 
-- display only specific no of rows
select * from songs limit 5;

-- like 
-- searches for matching patterns 
select * from songs 
where songname Like 'A%';

-- In 
-- check multiple values 
select * from songs 
where genre IN('Pop','Bollywood');

 -- Between 
 -- check range of values 
select * from albums 
where Releaseyear between 2020 and 2023;

-- is null 
-- find null values  
select * from users 
where email is null;

-- subquery
Select SongName, Duration
from Songs
where duration=(
select max(duration)
FROM Songs);

-- rank 
select SongID,SongName,
rank() over (order by SongName desc)
as SongRank 
from songs;

-- How do you display all users?
SELECT * FROM Users;

-- How do you find the total number of users?
SELECT COUNT(*) AS TotalUsers
FROM Users;

-- How do you find Premium users?
SELECT *
FROM Users
WHERE Subscription = 'Premium';

-- How do you count users by subscription?
SELECT Subscription, COUNT(*) AS TotalUsers
FROM Users
GROUP BY Subscription;

-- How do you sort songs alphabetically?
SELECT SongName
FROM Songs
ORDER BY SongName ASC;

-- How do you display songs with their artist names?
SELECT s.SongName, a.ArtistName
FROM Songs s
JOIN Artists a
ON s.ArtistID = a.ArtistID;

-- How do you find the number of songs in each genre?
SELECT Genre, COUNT(*) AS TotalSongs
FROM Songs
GROUP BY Genre;

-- How do you find the most played song?
SELECT s.SongName, COUNT(*) AS PlayCount
FROM Songs s
JOIN ListeningHistory lh
ON s.SongID = lh.SongID
GROUP BY s.SongName
ORDER BY PlayCount DESC
LIMIT 1;

-- How do you find users who listened to more than one song?
SELECT u.UserName, COUNT(*) AS TotalPlays
FROM Users u
JOIN ListeningHistory lh
ON u.UserID = lh.UserID
GROUP BY u.UserName
HAVING COUNT(*) > 1;

-- How do you display Premium and Free users using CASE?
SELECT UserName,
CASE
    WHEN Subscription = 'Premium' THEN 'Paid User'
    ELSE 'Free User'
END AS UserType
FROM Users;