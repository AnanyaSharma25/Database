#postgres11

CREATE TABLE SpatialHW (NAME VARCHAR(15), LOCATION geometry);

INSERT INTO SpatialHW(NAME,LOCATION) VALUES('Leavey Library',ST_GeomFromText('POINT(-118.2828 34.0218)')),('Pacific Apt.',ST_GeomFromText('POINT(-118.2816 34.0293)')),('Seeley G Mudd',ST_GeomFromText('POINT(-118.2890 34.0214)')),('Taper Hall',ST_GeomFromText('POINT(-118.2846 34.0222)')),('Ronald Hall',ST_GeomFromText('POINT(-118.2899 34.0201)'));

INSERT INTO SpatialHW(NAME,LOCATION) VALUES ('OIS',ST_GeomFromText('POINT(-118.2818 34.0219)')),('Annenberg',ST_GeomFromText('POINT(-118.2861 34.0221)')),('EEB',ST_GeomFromText('POINT(-118.2901 34.0197)'));

INSERT INTO SpatialHW(NAME,LOCATION) VALUES ('Starbucks',ST_GeomFromText('POINT(-118.2825 34.0212)'));
INSERT INTO SpatialHW(NAME,LOCATION) VALUES ('Sierra Apts',ST_GeomFromText('POINT(-118.2826 34.0296)'));
INSERT INTO SpatialHW(NAME,LOCATION) VALUES ('Cinematic Arts',ST_GeomFromText('POINT(-118.2871 34.0234)'));
INSERT INTO SpatialHW(NAME,LOCATION) VALUES ('Engemann',ST_GeomFromText('POINT(-118.2889 34.0253)'));


SELECT ST_AsText(ST_ConvexHull(ST_Collect(location))) FROM SpatialHW;
                                                               
SELECT n2.NAME FROM SpatialHW AS n1, SpatialHW AS n2 WHERE n1.NAME='Pacific Apt.' AND n1.NAME<>n2.NAME ORDER BY ST_DISTANCE(n1.location,n2.location) LIMIT 4;
      