create table Galaxy(
    NAME                         	varchar(30)            not null,
    GALAXY_TYPE                         varchar(30),
    DIAMETER                		numeric(30,8),
    ANGULAR_MOMENTUM             	varchar(100),
    REDSHIFT                     	numeric(16,8),
    APPARENT_MAGNITUDE            	numeric(16,8),
    ABSOLUTE_MAGNITUDE            	numeric(16,8),
    DECLINATION                    	varchar(15),
    RIGHT_ASCENSION                	varchar(15),
    Distance_from_solar_system    	numeric(30,8),
    Total_number_of_stars        	numeric(12,0),
    primary key(NAME)
);

create table Star(
    NAME                         	varchar(30)            not null,
    MASS				numeric(34,4),
    STAR_TYPE                           varchar(30),
    RADIUS                        	numeric(24,8),
    AGE                         	numeric(16,0),
    VOLUME                        	varchar(40),
    TEMPERATURE                    	numeric(16,4),
    SURFACE_PRESSURE            	numeric(24,8),
    LUMINOSITY                    	varchar(50),            
    APPARENT_MAGNITUDE            	numeric(16,8),
    ABSOLUTE_MAGNITUDE            	numeric(16,8),
    ROTATION_VELOCITY            	numeric(20,8),
    GALAXY_NAME                    	varchar(30),
    GALACTIC_PERIOD                	numeric(20,8),
    primary key(NAME),
    foreign key(GALAXY_NAME) references Galaxy(NAME) on delete set null
);

create table Planet(
	NAME 				 varchar(30) 			not null,
	MASS				 numeric(34,4),
	RADIUS				 numeric(20,8),
	VOLUME				 varchar(40),
	TEMPERATURE			 numeric(16,4),
	ECCENTRICITY		         numeric(24,10),
	ROTATION_TIME			 numeric(16,4),
	PLANET_TYPE			 varchar(30),
	ORBITAL_TIME			 numeric(20,8),
	Distance_from_parent_star	 numeric(24,4),
	DISTANCE_FROM_EARTH		 numeric(24,4),
	PARENT_STAR 			 varchar(30),
	primary key(NAME),
	foreign key(PARENT_STAR) references Star(NAME) on delete set null

);

create table Satellite(
	NAME 							varchar(30) 			not null,
	MASS 							numeric(34,4),
	RADIUS							numeric(20,8),
	VOLUME 							varchar(40),
	TEMPERATURE 					numeric(16,4),
	ECCENTRICITY 					numeric(24,10),
	ROTATION_TIME					numeric(16,4),
	ORBITAL_TIME 					numeric(20,8),
	DISTANCE_FROM_PLANET 			numeric(24,4),
	PARENT_PLANET					varchar(30),
	primary key(NAME),
	foreign key(PARENT_PLANET) references Planet(NAME) on delete set null
);

create table Constellation(
	NAME 							varchar(30)				not null,
	GENITIVE 						varchar(30),
	SYMBOLISM 						varchar(30),
	RIGHT_ASCENSION					varchar(15),
	DECLINATION						varchar(15),
	AREA_OF_QUADRANT				varchar(15),
	TOTAL_MESSIER_OBJECTS			numeric(12,0),
	TOTAL_FLAMSTEED_STAR 			numeric(12,0),
	GALAXY_NAME						varchar(30),
	primary key(NAME),
	foreign key(GALAXY_NAME) references Galaxy(NAME) on delete set null
);

create table Nebula(
	NAME 							varchar(30)				not null,
	RADIUS 							numeric(28,8),
	Distance_from_solar_system		numeric(30,8),
	APPARENT_DIMENTIONS				varchar(30),
	DECLINATION						varchar(20),
	RIGHT_ASCENSION					varchar(15),
	GALAXY_NAME						varchar(30),
	primary key(NAME),
	foreign key(GALAXY_NAME) references Galaxy(NAME) on delete set null
);

create table star_contellation(
	STAR_NAME						varchar(30)				not null,
	CONSTELLATION_NAME				varchar(30)				not null,
	Distance_from_constellation		numeric(20,4),
	Major_Star                      varchar(30),
	Posistion_in_Constellation      numeric(8,0),
	primary key(STAR_NAME,CONSTELLATION_NAME),
	foreign key(STAR_NAME) references Star(NAME) on delete cascade,
	foreign key(CONSTELLATION_NAME) references Constellation(NAME) on delete cascade
);

create table nebula_constellation(
	NEBULA_NAME						varchar(30) 			not null,
	CONSTELLATION_NAME				varchar(30)				not null,
	primary key(NEBULA_NAME,CONSTELLATION_NAME),
	foreign key(NEBULA_NAME) references Nebula(NAME) on delete cascade,
	foreign key(CONSTELLATION_NAME) references Constellation(NAME) on delete cascade
);











CREATE or REPLACE FUNCTION total_planet(x varchar2)
RETURN NUMBER IS
    ans number;

BEGIN
    select count(*) into ans
    FROM star s join planet p on(s.name=p.parent_star)
    WHERE s.name=x;
    return ans;
END;

DECLARE
   x number;
BEGIN
    x:=total_planet('SUN');
    dbms_output.put_line('Total planet of this star is ' || x);
END;



CREATE or REPLACE FUNCTION galaxy_name_of_planet(x varchar2)
RETURN VARCHAR2 IS
    ans varchar2(40);

BEGIN
    select galaxy.name into ans
    FROM (planet p join star s on(s.name=p.parent_star)) join galaxy on (galaxy.name=s.galaxy_name)
    WHERE p.name=x;
    return ans;
END;

DECLARE
   x varchar2(40);
BEGIN
    x:=galaxy_name_of_planet('EARTH');
    dbms_output.put_line('Name of the galaxy is ' || x);
END;


CREATE OR REPLACE TYPE varAra as TABLE of varchar2(50);

CREATE or REPLACE FUNCTION planetNameWithMoreRotation(x varchar2)
RETURN varARA IS
    ans varARA;
BEGIN
    select name bulk collect into ans
    FROM planet
    WHERE rotation_time > (select rotation_time from planet where name=x);
    return ans;
END;

DECLARE
   x varARA;
   t number;
BEGIN
    x:=planetNameWithMoreRotation('EARTH');
    dbms_output.put_line('Name of the planet with more rotation time:');
    t:=x.count;
    for i in 1..t loop
        dbms_output.put_line(x(i));
    end loop;
END;



create or replace type araVar as table of varchar(50);

create or replace function planetBetweenRange(a in number, b in number)
RETURN araVar IS
    lst araVar;
BEGIN
    select parent_star bulk collect into lst
    from planet 
    group by parent_star
    HAVING count(name) > a and count(name) < b;
    return lst; 
END;

DECLARE
   lst araVar;
   t number;
BEGIN
   lst:=planetBetweenRange(0,20);
   t:=lst.count;
   for i in 1..t loop
       dbms_output.put_line(lst(i));
   end loop;

END;



create or replace type araVar as table of varchar(50);
create or replace function galaxyBetweenRedshiftRange(a in number, b in number)
RETURN araVar IS
    lst araVar;
BEGIN
    select name bulk collect into lst
    from galaxy
    where redshift > a and redshift < b;
    return lst; 
END;

DECLARE
   lst araVar;
   t number;
BEGIN
   lst:=galaxyBetweenRedshiftRange(0,50);
   t:=lst.count;
   for i in 1..t loop
       dbms_output.put_line(lst(i));
   end loop;

END;


CREATE or REPLACE type object_galaxy_type as object
(
   nam varchar2(50),
   type varchar2(50)
);

create or replace type ara_object_galaxy_type as table of object_galaxy_type;

CREATE or REPLACE procedure galaxy_type(a in out ara_object_galaxy_type,x in out varchar) is
ct number;
begin
    ct:=a.count;
    for i in 1..ct loop
        if(a(i).type=x) 
               then dbms_output.put_line(a(i).nam || ' ' || a(i).type);
        end if;
    end loop;
end;

declare  a ara_object_galaxy_type;
x varchar(50);
begin
    x:='SPIRAL';
    select object_galaxy_type(name,galaxy_type) bulk collect into a
    from galaxy; 
    galaxy_type(a,x);
end;


CREATE or REPLACE type object_star_type as object
(
   nam varchar2(50),
   type varchar2(50)
);

create or replace type ara_object_star_type as table of object_star_type;

CREATE or REPLACE procedure star_type(a in out ara_object_star_type,x in out varchar) is
ct number;
begin
    ct:=a.count;
    for i in 1..ct loop
        if(a(i).type=x) 
               then dbms_output.put_line(a(i).nam || ' ' || a(i).type);
        end if;
    end loop;
end;

declare  a ara_object_star_type;
x varchar(50);
begin
    x:='YELLOW DWARFS';
    select object_star_type(name,star_type) bulk collect into a
    from star; 
    star_type(a,x);
end;


create or replace type araVar as table of varchar(50);
CREATE or REPLACE FUNCTION satellite_of_planet(x varchar2)
RETURN araVar IS
    ans araVar;

BEGIN
    select s.name bulk collect into ans
    from planet p left join satellite s on (p.name=s.parent_planet)
    where p.name=x; 
    return ans;
END;
DECLARE
   x araVar;
   t number;
BEGIN
    x:=satellite_of_planet('MARS');
    t:=x.count;
    for i in 1..t loop
        dbms_output.put_line(x(i));
    end loop;
END;


CREATE or REPLACE Trigger firstTrigger
AFTER
INSERT
on star
BEGIN
dbms_output.put_line('A new star is inserted.');
END;

























