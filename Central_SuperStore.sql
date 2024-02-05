--select * from Central_Region -- 2323
---------------------

--629
--select distinct [Customer ID], [Customer Name] into Customer_dim
--from Central_Region

-------
--3
--insert into Segment_dim 
--select distinct Segment
--from Central_Region


-----
--1
--select distinct Country
--from Central_Region

--alter table Central_Region
--drop column Country
-----
----181
--insert into City_dim
--select distinct City
--from Central_Region

-----
-- 13
--insert into State_dim
--select distinct [State]
--from Central_Region

-----
--195
--select distinct [Postal Code]
--from Central_Region

--alter table Central_Region drop column [Postal Code]

-----
--1
--select distinct Region
--from Central_Region
--alter table Central_Region drop column Region

-----
--1326
--insert into Product_dim
--select distinct [Product Name] 
--from Central_Region

-----
--3
--insert into Category_dim
--select distinct Category
--from Central_Region

-----
--17
--insert into sub_Category_dim
--select distinct [Sub-Category]
--from Central_Region
-----
--alter table Central_Region
--drop column [Customer Name]

--select * into Central_Region
--from Central_Region_bak

--alter table Central_Region add  ShipModeID int, ProductID int, SegmentID int, CityID int, StateID int, CategoryID int, Sub_CategoryID int
-----------------------------------
--insert into ship_mode_dim
--select distinct [Ship Mode] from Central_Region

--select f.[Ship Mode], ShipModeID, d.[Ship Mode]

----update f
----set f. ShipModeID = d.[Ship_Mode ID]
--from Central_Region f
--join Ship_Mode_dim d on d.[Ship Mode] = f.[Ship Mode]

--alter table Central_Region drop column
--select * from Ship_Mode_dim
--------------------------------

--update f set f.SegmentID = s.[Segment ID]
--from Central_Region f
--join Segment_dim s on f.Segment = s.[Segment Name]
--select * from Segment_dim

--------------------------------

--update f set f.CityID = c.[City ID]
--from Central_Region f 
--join City_dim c on f.City = c.[City Name]
--select * from City_dim

----------------

--insert into State_dim 
--select distinct State from Central_Region

--update f set f.StateID = c.[State ID]
--from Central_Region f 
--join State_dim c on f.State = c.[State Name]
--select * from State_dim
--------------------


--update f set f.CategoryID=c.[Category ID]
--from Central_Region f
--join Category_dim c on f.Category = c.[Categoriy Name]
----

--update f set f.Sub_CategoryID=s.[Sub_Category ID]
--from Central_Region f
--join Sub_Category_dim s on s.[Sub_Category Name] = f.[Sub-Category]
-----------------

--update f set f.ProductID=p.[Product ID]
--from Central_Region f
--join Product_dim p on p.[Product Name] = f.[Product Name]
----------------------

--select f.[Order Date] into Time_Dim from Central_Region f
-----------


--select * into cr_bak from Central_Region
------------

--alter table Central_Region drop column  [Ship Mode], [Customer Name], Segment, Country, City, State, [Postal Code], Region, [Product ID], Category, [Sub-Category], [Product Name]
----------------
-- find duplicates

--select * from (
--select * , ROW_NUMBER() over(partition by [Order Date], [Customer ID], [ProductID], Quantity, CityID order by [Row ID]) rn
--from Central_Region c 
--) x where rn> 1
 --order by [Row ID]
 ---------------
