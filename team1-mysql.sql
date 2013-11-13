-- team1 database

DROP TABLE IF EXISTS user;
CREATE TABLE user ( 
	email			VARCHAR(80) NOT NULL PRIMARY KEY,
	password       	VARCHAR(25) NOT NULL,
    name        	VARCHAR(80) NOT NULL,
    licenseState  	CHAR(2) NOT NULL,
    licenseNum    	INTEGER NOT NULL,
	address			VARCHAR(80) NOT NULL,
	creditNum		INT(16) NOT NULL,
	creditCode		INT(3) NOT NULL,
	isMember		BOOLEAN NOT NULL DEFAULT FALSE,
    lastRenewal    	DATE
);

INSERT INTO user VALUES ( 'bobsmith@gmail.com', 'pass', 'Bob Smith', 'GA', 123456789, '1 Main Street, Athens, GA', 1111222233334444, 123, true, '2011-11-08' ); 


DROP TABLE IF EXISTS admin;
CREATE TABLE admin ( 
	email			VARCHAR(80) NOT NULL PRIMARY KEY,
	password       	VARCHAR(25) NOT NULL,
    name        	VARCHAR(80) NOT NULL	
);

INSERT INTO admin VALUES ( 'admin@rentals.com','pass','Joe Smith' );


DROP TABLE IF EXISTS reservation;
CREATE TABLE reservation ( 
    id        		INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
	email			VARCHAR(80) NOT NULL,
	registration	VARCHAR(7) NOT NULL,
	pickupTime		DATETIME NOT NULL,
	returnTime		DATETIME NOT NULL,
	price			DECIMAL(9,2) NOT NULL
);

INSERT INTO reservation ( email, registration, pickupTime, returnTime, price ) VALUES ( 'bobsmith@gmail.com', '342LPO', '2011-08-11 13:00:00', '2011-08-12 13:00:00', 24.95 ); 

DROP TABLE IF EXISTS vehicleType;
CREATE TABLE vehicleType (
	name			VARCHAR(80) NOT NULL PRIMARY KEY,
	daily			DECIMAL(9,2) NOT NULL,
	hourly			DECIMAL(9,2) NOT NULL
);

INSERT INTO vehicleType VALUES ( 'regular', 24.95, 7.95 );
INSERT INTO vehicleType VALUES ( 'pickup truck', 26.95, 8.95 );
INSERT INTO vehicleType VALUES ( 'luxury car', 34.95, 12.95 );


DROP TABLE IF EXISTS vehicle;
CREATE TABLE vehicle (
	registration	VARCHAR(7) NOT NULL PRIMARY KEY,
	type			VARCHAR(80) NOT NULL,
	location		VARCHAR(80),
	make			VARCHAR(80) NOT NULL,
	model			VARCHAR(80) NOT NULL,
	year			INTEGER NOT NULL,
    mileage			INTEGER NOT NULL,
	lastService		DATE,
	currCondition	VARCHAR(80)

);

INSERT INTO vehicle VALUES ( '342LPO', 'regular', 'Baxter Street', 'Saturn', 'SL2', 1996, 20000, '2010-08-17','good' );
INSERT INTO vehicle VALUES ( '1787XXL', 'pickup truck', 'Baxter Street', 'Ford', 'F-150', 1998, 25000, '2010-06-17','good' );
INSERT INTO vehicle VALUES ( '989YYL', 'luxury car', 'Baxter Street', 'BMW', 'X3', 2008, 10000, '2011-06-17','good' );
INSERT INTO vehicle VALUES ( '122PIL', 'regular', 'Lumpkin Street', 'Honda', 'Civic', 2005, 23000, '2010-08-17','good' );
INSERT INTO vehicle VALUES ( '453YIO', 'pickup truck', 'Lumpkin Street', 'Chevrolet', 'Silverado', 2007, 28000, '2010-08-17','good' );
INSERT INTO vehicle VALUES ( '911WER', 'luxury car', 'Lumpkin Street', 'Acura', 'TSX', 2009, 30000, '2011-08-17','good' );
INSERT INTO vehicle VALUES ( '1232AFI', 'regular', 'Milledge Ave.', 'Kia', 'Rio', 2012, 30000, '2012-08-17','good' );
INSERT INTO vehicle VALUES ( '988PPS', 'pickup truck', 'Milledge Ave.', 'Dodge', 'RAM', 2013, 35000, '2013-08-17','good' );
INSERT INTO vehicle VALUES ( '433ART', 'luxury car', 'Milledge Ave.', 'Lincoln', 'Navigator', 2008, 10000, '2012-08-17','good' );
INSERT INTO vehicle VALUES ( '123AVC', 'regular', 'Atlanta Hwy.', 'Honda', 'Civic', 2005, 23000, '2011-08-17','good' );
INSERT INTO vehicle VALUES ( '2232BBA', 'pickup truck', 'Atlanta Hwy.', 'Ford', 'F-150', 2009, 21000, '2010-08-17','good' );
INSERT INTO vehicle VALUES ( '435AAL', 'luxury car', 'Atlanta Hwy.', 'Audi', 'A4', 2012, 24000, '2008-08-17','good' );
INSERT INTO vehicle VALUES ( '767YLX', 'regular', 'Broad Street', 'Hyundai', 'Elantra', 2012, 26000, '2011-08-17','good' );
INSERT INTO vehicle VALUES ( '387POK', 'pickup truck', 'Broad Street', 'Chevrolet', 'Silverado', 2011, 40000, '2010-03-17','good' );
INSERT INTO vehicle VALUES ( '222AFI', 'luxury car', 'Broad Street', 'Audi', 'A4', 2012, 30000, '2010-02-12','good' );
INSERT INTO vehicle VALUES ( '998DDL', 'regular', 'Sanford Drive', 'Ford', 'Fiesta', 2010, 22000, '2010-02-14','good' );
INSERT INTO vehicle VALUES ( '432LKJ', 'pickup truck', 'Sanford Drive', 'Dodge', 'RAM', 2009, 22000, '2010-03-17','good' );
INSERT INTO vehicle VALUES ( '989DDY', 'luxury car', 'Sanford Drive', 'BMW', 'X3', 2007, 23000, '2012-08-17','good' );
INSERT INTO vehicle VALUES ( '119ALX', 'regular', 'Prince Ave.', 'Honda', 'Civic', 2005, 24000, '2009-08-17','good' );
INSERT INTO vehicle VALUES ( '1988LLY', 'pickup truck', 'Prince Ave.', 'Toyota', 'Tundra', 2004, 18000, '2010-08-17','good' );
INSERT INTO vehicle VALUES ( '2022BNX', 'luxury car', 'Prince Ave.', 'Cadillac', 'SRX', 2012, 20000, '2011-08-17','good' );


DROP TABLE IF EXISTS location;
CREATE TABLE location (
	name			VARCHAR(80) NOT NULL PRIMARY KEY,
	address			VARCHAR(80) NOT NULL,
    vehicleNum		INTEGER NOT NULL DEFAULT 0,
	vehicleCap		INTEGER NOT NULL,
	isFull			BOOLEAN NOT NULL DEFAULT FALSE
);

INSERT INTO location VALUES ( 'Baxter Street', '15 Baxter Street Athens, GA 30606', 0, 10, false );
INSERT INTO location VALUES ( 'Lumpkin Street', '28 Lumpkin Street Athens, GA 30606', 0, 25, false );
INSERT INTO location VALUES ( 'Milledge Ave.', '18 Milledge Ave. Athens, GA 30606', 0, 35, false );
INSERT INTO location VALUES ( 'Atlanta Hwy.', '55 Atlanta Hwy. Athens, GA 30606', 0, 35, false );
INSERT INTO location VALUES ( 'Broad Street', '15 Broad Street Athens, GA 30606', 0, 25, false );
INSERT INTO location VALUES ( 'Sanford Drive', '18 Sanford Drive Athens, GA 30606', 0, 20, false );
INSERT INTO location VALUES ( 'Prince Ave.', '25 Prince Ave. Athens, GA 30606', 0, 25, false );


DROP TABLE IF EXISTS membership;
CREATE TABLE membership (
	cost			DECIMAL(9,2) NOT NULL
);

INSERT INTO membership VALUES ( 50.00 ) ;
