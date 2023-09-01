--1) Create the Table
CREATE TABLE Lusaka_meat_prices(Month_year VARCHAR(30),STEAK_KG FLOAT,MIXED_CUT_KG FLOAT,T_BONE_KG FLOAT,BEEF_OFFALS_KG FLOAT,PORK_KG FLOAT,HOOVES_KG FLOAT)

--2) Insert the values into the table
INSERT INTO Lusaka_meat_prices VALUES 
('Jul-2022',99.81,69.4,100.93,38.27,80.2,79.08,44.3),
('Aug-2022',100.11,69.35,100.55,38.38,79.45,78.96,44.52),
('Sep-2022',99.24,69.11,100.66,37.94,81.24,76.26,44.37),
('Oct-2022',99.34,69.32,100.23,38.58,79.67,79.29,44.52),
('Nov-2022',99.31,68.9,100.2,37.78,81.2,77.74,44.35),
('Dec-22',100.43,68.76,101.37,38.41,81.28,76.84,44.23),
('Jan-2023',101.65,69.99,106.41,39.85,81.14,74.8,43.18),
('Feb-2023',100.89,70.63,106.6,39.99,79.64,77.73,43.09),
('Mar-2023',98.8,70.57,103.97,39.27,79.98,77.62,42.66),
('Apr-2023',101.93,70.49,105.52,39.38,83.87,72.65,46.78)

--3) Display the table
SELECT *
FROM Lusaka_meat_prices

--4) What is the highest,lowest and Average price for each meat product?
SELECT MAX(STEAK_KG)  AS Steak_max_price,MAX(MIXED_CUT_KG) AS mixed_cut_max_price,MAX(T_BONE_KG) AS T_Bone_max_price,MAX(BEEF_OFFALS_KG) AS Beef_Offals_max_price,MAX(GOAT_KG) AS  Goat_max_price,MAX(PORK_KG) AS  Pork_max_price,MAX(HOOVES_KG) AS  Hooves_max_price
FROM Lusaka_meat_prices

SELECT MIN(STEAK_KG)  AS Steak_min_price,MIN(MIXED_CUT_KG) AS mixed_cut_min_price,MIN(T_BONE_KG) AS T_Bone_min_price,MIN(BEEF_OFFALS_KG) AS Beef_Offals_min_price,MIN(GOAT_KG) AS  Goat_min_price,MIN(PORK_KG) AS  Pork_min_price,MIN(HOOVES_KG) AS  Hooves_min_price
FROM Lusaka_meat_prices

SELECT AVG(STEAK_KG)  AS Steak_avg_price, AVG(MIXED_CUT_KG) AS mixed_cut_avg_price, AVG(T_BONE_KG) AS T_Bone_avg_price, AVG(BEEF_OFFALS_KG) AS Beef_Offals_avg_price, AVG(GOAT_KG) AS  Goat_avg_price, AVG(PORK_KG) AS  Pork_avg_price, AVG(HOOVES_KG) AS  Hooves_avg_price
FROM Lusaka_meat_prices

--5) Which product had the most consistent pricing?
SELECT MAX(STEAK_KG) -MIN(STEAK_KG) AS Range_of_pricing_Steak,MAX(MIXED_CUT_KG)-MIN(MIXED_CUT_KG)  AS Range_of_pricing_Mixed_cut,MAX(T_BONE_KG)- MIN(T_BONE_KG)  AS Range_pricing_T_Bone,MAX(BEEF_OFFALS_KG) - MIN(BEEF_OFFALS_KG)  AS Range_of_pricing_Beef_Offals,MAX(GOAT_KG)-MIN(GOAT_KG) AS Range_of_pricing_Beef_Goat,MAX(PORK_KG)-MIN(PORK_KG) AS Range_of_pricing_pork,MAX(HOOVES_KG)-MIN(HOOVES_KG) AS Range_of_pricing_Hooves
FROM Lusaka_meat_prices
-- Mixed-Cut has the most consistent pricing

-- 6) Categorize the prices of a product as expensive or cheap.
SELECT AVG(PORK_KG)
FROM Lusaka_meat_prices

SELECT  PORK_KG,
	CASE
		WHEN PORK_KG > 77.1 THEN 'Expensive'
		WHEN PORK_KG < 77.1 THEN 'Cheap'
  END AS PriceCategory
 FROM Lusaka_meat_prices
 ORDER BY PORK_KG DESC
