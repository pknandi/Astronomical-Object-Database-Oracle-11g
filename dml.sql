delete from star_contellation;
delete from nebula_constellation;
delete from nebula;
delete from constellation;
delete from satellite;
delete from planet;
delete from star;
delete from galaxy;


INSERT into GALAXY values('MILKY WAY','SPIRAL',100000000,'124213',34,111,121,'1111','46563',12334542212,100000000);
INSERT into GALAXY values('ANDROMEDA','SPIRAL',100000000,'124216',44,211,221,'2111','56563',22334542212,150000000);
INSERT into GALAXY values('TRIANGULUM','SPIRAL',1000000000,'2224216',14,411,821,'4111','57563',212334542212,4000000000);
INSERT into GALAXY values('WHIRLPOOL','SPIRAL',2000000000,'2227216',24,511,921,'121311','58563',214334542212,450000000);
INSERT into GALAXY values('CARTWHEEL','LENTICULAR',2100000000,'2427216',27,141,1121,'101311','50563',214334642212,455000000);
INSERT into GALAXY values('CENTAURUS A','ELLIPTICAL',6000000,'17216',17,241,978,'121802','132527',220000000000,455800000);
INSERT into GALAXY values('MESSIER 82','STAR BURST',9000000,'17416',27,141,278,'694047','105552',110000000000,455200000);
INSERT into GALAXY values('SOMBRERO','SPIRAL',8000000,'19416',30,130,152,'700547','106511',22000000000,455500000);
INSERT into GALAXY values('SUNFLOWER','SPIRAL',9000000,'19116',30,130,152,'700547','106511',21000000000,456500000);
INSERT into GALAXY values('CYGNUS A','RADIO',7500000,'31116',40,130,152,'700547','106511',21000000000,556500000);
INSERT into GALAXY values('BL LACERTAE','BL LAC',7500000,'31116',40,140,172,'710547','116511',22000000000,576500000);
INSERT into GALAXY values('DRACO DWARF','SPHEROIDAL',8500000,'32116',42,141,173,'610547','126511',22000000000,556500000);
INSERT into GALAXY values('HOAGS OBJECT','RING',8500000,'32116',42,141,173,'610547','126511',22000000000,556500000);
INSERT into GALAXY values('PHOENIX','DWARF',8500000,'32116',42,141,173,'610547','126511',22000000000,556500000);





INSERT into STAR values('SUN',198850000000000000,'YELLOW DWARFS',696392,4600000000,'130000000',157000000,1200000,'12000',123,234,1234567,'MILKY WAY',10000000);
INSERT into STAR values('SIRIUS',218850000000000000,'WHITE DWARFS',700000,5000000000,'140000000',200000000,1300000,'14000',128,234,1234567,'MILKY WAY',13500000);
INSERT into STAR values('VEGA',222340000000000000,'YELLOW DWARFS',740000,5100000000,'120000000',198500000,1600000,'12550',131,234,1234567,'MILKY WAY',13500000);
INSERT into STAR values('RIGEL',21230000000000000,'RED GIANT',710000,5000000000,'167500000',305000000,1900000,'25000',123,234,1234567,'MILKY WAY',13500000);
INSERT into STAR values('POLARIS',217890000000000000,'ORANGE DWARF',790000,5000000000,'120000000',198500000,1800000,'25000',131,234,1736547,'MILKY WAY',10000000);
INSERT into STAR values('CANOPUS',318850000000000000,'YELLOW DWARFS',810000,5200000000,'167500000',305000000,1900000,'25000',128,234,1736547,'MILKY WAY',13500000);
INSERT into STAR values('ALTAIR',311150000000000000,'ORANGE DWARF',830000,5500000000,'120000000',198500000,1800000,'45000',128,234,1736547,'MILKY WAY',13500000);
INSERT into STAR values('ARCTURUS',315650000000000000,'YELLOW DWARFS',890000,6000000000,'195000000',200000000,2100000,'25000',123,234,1736547,'MILKY WAY',10000000);
INSERT into STAR values('DENEB',387550000000000000,'YELLOW DWARFS',870000,6200000000,'140000000',305000000,2200000,'45000',131,234,1736547,'MILKY WAY',10000000);
INSERT into STAR values('BETELGEUSE',322150000000000000,'BLACK DWARFS',870005,6300000000,'195000000',198500000,2700000,'12000',123,234,1736547,'MILKY WAY',13500000);
INSERT into STAR values('ALDEBARAN',222250000000000000,'WHITE DWARFS',700030,7600000000,'120000000',198500000,1100000,'12000',128,234,1736547,'CARTWHEEL',11500000);
INSERT into STAR values('ANTARES',987650000000000000,'ORANGE DWARF',700064,7700000000,'167500000',200000000,1300000,'12000',123,234,1464873,'MILKY WAY',11500000);
INSERT into STAR values('CAPELLA',123450000000000000,'RED DWARFS',600001,8000000000,'195000000',255000000,1550000,'45000',131, 234, 1464873, 'CARTWHEEL',11500000);
INSERT into STAR values('ALPHA CRUCIS',431250000000000000,'RED DWARFS',700234,8400000000,'140000000',200000000,1670000,'12000',123,234,1464873,'ANDROMEDA',11500000);
INSERT into STAR values('ETA URSAE MAJORIS',396750000000000000,'ORANGE DWARF',453625,8400000000,'120000000',198500000,1950000,'45000',138,234,1464873,'MILKY WAY',11500000);
INSERT into STAR values('ALGOL',400050000000000000,'RED DWARFS',763545,6100000000,'167500000',255000000,2310000,'51000',131,234,1464873,'MILKY WAY',11500000);
INSERT into STAR values('FORMALHAUT',312350000000000000,'YELLOW DWARFS',724475,6500000000,'195000000',305000000,1450000,'45000',138,234,1464873,'MILKY WAY',11500000);
INSERT into STAR values('BELLATRIX',298750000000000000,'ORANGE DWARF',713758,10000000000,'120000000',198500000,1550000,'51000',131,234,1846573,'MILKY WAY',19750000);
INSERT into STAR values('PROXIMA CENTAURAI',367850000000000000,'YELLOW DWARFS',963739,110000000000,'140000000',255000000,1650000,'12000',138,234,1846573,'ANDROMEDA',19750000);
INSERT into STAR values('DENEBOLA',412350000000000000,'WHITE DWARFS',936374,11200000000,'167500000',200000000,1700000,'12000',123,234,1846573,'MILKY WAY',19750000);
INSERT into STAR values('BETA CETI',548950000000000000,'RED GIANT',936373,12000000000,'120000000',255000000,1650000,'51000',138,234,1846573,'ANDROMEDA',19750000);
INSERT into STAR values('ALPHA ANDROMEDAE',999950000000000000,'YELLOW DWARFS',952627,1050000000,'195000000',200000000,1900000,'12000',123,234,1846573,'MILKY WAY',19750000);
INSERT into STAR values('ALNILAM',918750000000000000,'BLUE GIANT',922535,5000000000,'167500000',200000000,1100000,'45000',128,234,1846573,'ANDROMEDA',22500000);
INSERT into STAR values('GAMMA VELORUM',212350000000000000,'ORANGE DWARF',979585,12000000000,'140000000',255000000,1250000,'51000',138,234,1762734,'ANDROMEDA',22500000);
INSERT into STAR values('ACHERNAR',675450000000000000,'WHITE DWARFS',937637,9000000000,'140000000',200000000,1350000,'12000',123,234,1762734,'MILKY WAY',22500000);
INSERT into STAR values('ALPHA GRUIS',515750000000000000,'YELLOW DWARFS',998352,8750000000,'120000000',255000000,1400000,'51000',128,234,1762734,'ANDROMEDA',22500000);
INSERT into STAR values('GAMMA LEONIS',696950000000000000,'RED GIANT',961425,5750000000,'140000000',198500000,1480000,'51000',138,234,1762734,'MILKY WAY',22500000);






INSERT into PLANET VALUES ('EARTH',597237000000000000,6371,108321000000,287,0.016,1,'Normal',365,150000000,0,'SUN');
INSERT into PLANET VALUES ('VENUS',486750000000000000,6051,92843000000,737,0.006,243,'Terrestrial',224,100000000,50000000,'SUN');
INSERT into PLANET VALUES ('MERCURY',427237000000000000,5471,80832100000,1020,0.004,4,'INFERIOR',240,80000000,70000000,'SUN');
INSERT into PLANET VALUES ('MARS',517237000000000000,5071,108321000000,230,0.019,1,'SUPERIOR',687,220000000,70000000,'SUN');
INSERT into PLANET VALUES ('JUPITER',189837000000000000000,69911,614200000000000,400,0.021,50,'HOT JUPITER',2000,7780000000,7710000000,'SUN');
INSERT into PLANET VALUES ('SATURN',169637000000000000000,58232,427321000000000,250,0.038,40,'SUPERIOR',10759,14340000000,14330000085,'SUN');
INSERT into PLANET VALUES ('PLANET A',169637000000000000000,64232,4887210000000000,250,0.038,40,'EXOPLANET',10759,14340000000,14330000085,'PROXIMA CENTAURAI');

INSERT into satellite values ('MOON',2200000000000000,1733,'122233321231',275,1245,12,28,300000,'EARTH');
INSERT into satellite values ('DEIMOS',2100000000000,20,'123321231',250,1235,11,40,150000,'MARS');
INSERT into satellite values ('EUROPA',2200000000000000,1800,'1222332321231',230,1213,40,135,1000000,'JUPITER');
INSERT into satellite values ('CALLISTO',3400000000000000,1731,'1222333298472',225,1987,45,144,1100000,'JUPITER');
INSERT into satellite values ('TITAN',29000000000000000,1851,'1222332321231',190,1111,48,250,9000000,'SATURN');
INSERT into satellite values ('TETHYS',31000000000000000,1783,'1223332123221',180,1187,46,235,9600000,'SATURN');





insert into constellation values ('SCORPIUS','SCORPII','SCORPION','168875','307367','SQ3',4,47,'MILKY WAY');
insert into constellation values ('URSA MAJOR','URSAE MAJORIS','GREAT BEAR','106700','304532','NQ2',7,93,'MILKY WAY');
insert into constellation values ('CENTAURUS','CENTAURI','CENTAUR','154323','332123','SQ3',0,69,'MILKY WAY');
insert into constellation values ('LEO','LEONIS','LION','164531','312764','SQ4',5,92,'MILKY WAY');


insert into nebula values ('HORSE HEAD',8312987325000,34369,'876534','104312','123432','MILKY WAY');
insert into nebula values ('CRAB',7312345323700,46579,'536138','213401','122556','MILKY WAY');
insert into nebula values ('ORION',6722987543900,71254,'799845','312401','133453','MILKY WAY');
insert into nebula values ('EAGLE',9452987325321,54319,'761208','123014','188762','ANDROMEDA');
insert into nebula values ('LAGOON',1232987325321,87319,'672180','210341','187826','ANDROMEDA');


insert into nebula_constellation values ('CRAB','SCORPIUS');
insert into nebula_constellation values ('EAGLE','SCORPIUS');
insert into nebula_constellation values ('ORION','CENTAURUS');
insert into nebula_constellation values ('HORSE HEAD','URSA MAJOR');


insert into star_contellation values ('VEGA','URSA MAJOR',45000000000,'YES',5);
insert into star_contellation values ('DENEB','LEO',63000000000,'YES',3);
insert into star_contellation values ('ANTARES','CENTAURUS',41000000000,'YES',9);
insert into star_contellation values ('ALGOL','URSA MAJOR',49000000000,'NO',11);

