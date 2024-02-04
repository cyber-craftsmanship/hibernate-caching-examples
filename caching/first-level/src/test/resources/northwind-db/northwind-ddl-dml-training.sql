--------------------------------------------------------------------------------------------------------
-- w3schools sql scripts:
-- DDL

create table customers
(
    customer_id   int primary key,
    customer_name varchar(128) not null,
    contact_name  varchar(128) not null,
    address       varchar(128),
    city          varchar(128) not null,
    postal_code   varchar(128) not null,
    country       varchar(128) not null
);

insert into customers (customer_id, customer_name, contact_name, address, city, postal_code, country)
values (1, 'Alfreds Futterkiste', 'Maria Anders', 'Obere Str. 57', 'Berlin', '12209', 'Germany'),
       (2, 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Avda. de la Constitución 2222', 'México D.F.',
        '05021', 'Mexico'),
       (3, 'Antonio Moreno Taquería', 'Antonio Moreno', 'Mataderos 2312', 'México D.F.', '05023', 'Mexico'),
       (4, 'Around the Horn', 'Thomas Hardy', '120 Hanover Sq.', 'London', 'WA1 1DP', 'UK'),
       (5, 'Berglunds snabbköp', 'Christina Berglund', 'Berguvsvägen 8', 'Luleå', 'S-958 22', 'Sweden'),
       (6, 'Blauer See Delikatessen', 'Hanna Moos', 'Forsterstr. 57', 'Mannheim', '68306', 'Germany'),
       (7, 'Blondel père et fils', 'Frédérique Citeaux', '24, place Kléber', 'Strasbourg', '67000', 'France'),
       (8, 'Bólido Comidas preparadas', 'Martín Sommer', 'C/ Araquil, 67', 'Madrid', '28023', 'Spain'),
       (9, 'Bon app', 'Laurence Lebihans', '12, rue des Bouchers', 'Marseille', '13008', 'France'),
       (10, 'Bottom-Dollar Marketse', 'Elizabeth Lincoln', '23 Tsawassen Blvd.', 'Tsawassen', 'T2F 8M4', 'Canada'),
       (11, 'Bs Beverages', 'Victoria Ashworth', 'Fauntleroy Circus', 'London', 'EC2 5NT', 'UK'),
       (12, 'Cactus Comidas para llevar', 'Patricio Simpson', 'Cerrito 333', 'Buenos Aires', '1010', 'Argentina'),
       (13, 'Centro comercial Moctezuma', 'Francisco Chang', 'Sierras de Granada 9993', 'México D.F.', '05022',
        'Mexico'),
       (14, 'Chop-suey Chinese', 'Yang Wang', 'Hauptstr. 29', 'Bern', '3012', 'Switzerland'),
       (15, 'Comércio Mineiro', 'Pedro Afonso', 'Av. dos Lusíadas, 23', 'São Paulo', '05432-043', 'Brazil'),
       (16, 'Consolidated Holdings', 'Elizabeth Brown', 'Berkeley Gardens 12 Brewery', 'London', 'WX1 6LT', 'UK'),
       (17, 'Drachenblut Delikatessend', 'Sven Ottlieb', 'Walserweg 21', 'Aachen', '52066', 'Germany'),
       (18, 'Du monde entier', 'Janine Labrune', '67, rue des Cinquante Otages', 'Nantes', '44000', 'France'),
       (19, 'Eastern Connection', 'Ann Devon', '35 King George', 'London', 'WX3 6FW', 'UK'),
       (20, 'Ernst Handel', 'Roland Mendel', 'Kirchgasse 6', 'Graz', '8010', 'Austria'),
       (21, 'Familia Arquibaldo', 'Aria Cruz', 'Rua Orós, 92', 'São Paulo', '05442-030', 'Brazil'),
       (22, 'FISSA Fabrica Inter. Salchichas S.A.', 'Diego Roel', 'C/ Moralzarzal, 86', 'Madrid', '28034', 'Spain'),
       (23, 'Folies gourmandes', 'Martine Rancé', '184, chaussée de Tournai', 'Lille', '59000', 'France'),
       (24, 'Folk och fä HB', 'Maria Larsson', 'Åkergatan 24', 'Bräcke', 'S-844 67', 'Sweden'),
       (25, 'Frankenversand', 'Peter Franken', 'Berliner Platz 43', 'München', '80805', 'Germany'),
       (26, 'France restauration', 'Carine Schmitt', '54, rue Royale', 'Nantes', '44000', 'France'),
       (27, 'Franchi S.p.A.', 'Paolo Accorti', 'Via Monte Bianco 34', 'Torino', '10100', 'Italy'),
       (28, 'Furia Bacalhau e Frutos do Mar', 'Lino Rodriguez', 'Jardim das rosas n. 32', 'Lisboa', '1675', 'Portugal'),
       (29, 'Galería del gastrónomo', 'Eduardo Saavedra', 'Rambla de Cataluña, 23', 'Barcelona', '08022', 'Spain'),
       (30, 'Godos Cocina Típica', 'José Pedro Freyre', 'C/ Romero, 33', 'Sevilla', '41101', 'Spain'),
       (31, 'Gourmet Lanchonetes', 'André Fonseca', 'Av. Brasil, 442', 'Campinas', '04876-786', 'Brazil'),
       (32, 'Great Lakes Food Market', 'Howard Snyder', '2732 Baker Blvd.', 'Eugene', '97403', 'USA'),
       (33, 'GROSELLA-Restaurante', 'Manuel Pereira', '5ª Ave. Los Palos Grandes', 'Caracas', '1081', 'Venezuela'),
       (34, 'Hanari Carnes', 'Mario Pontes', 'Rua do Paço, 67', 'Rio de Janeiro', '05454-876', 'Brazil'),
       (35, 'HILARIÓN-Abastos', 'Carlos Hernández', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal',
        '5022', 'Venezuela'),
       (36, 'Hungry Coyote Import Store', 'Yoshi Latimer', 'City Center Plaza 516 Main St.', 'Elgin', '97827', 'USA'),
       (37, 'Hungry Owl All-Night Grocers', 'Patricia McKenna', '8 Johnstown Road', 'Cork', '013231246', 'Ireland'),
       (38, 'Island Trading', 'Helen Bennett', 'Garden House Crowther Way', 'Cowes', 'PO31 7PJ', 'UK'),
       (39, 'Königlich Essen', 'Philip Cramer', 'Maubelstr. 90', 'Brandenburg', '14776', 'Germany'),
       (40, 'La corne dabondance', 'Daniel Tonini', '67, avenue de lEurope', 'Versailles', '78000', 'France'),
       (41, 'La maison dAsie', 'Annette Roulet', '1 rue Alsace-Lorraine', 'Toulouse', '31000', 'France'),
       (42, 'Laughing Bacchus Wine Cellars', 'Yoshi Tannamuri', '1900 Oak St.', 'Vancouver', 'V3F 2K1', 'Canada'),
       (43, 'Lazy K Kountry Store', 'John Steel', '12 Orchestra Terrace', 'Walla Walla', '99362', 'USA'),
       (44, 'Lehmanns Marktstand', 'Renate Messner', 'Magazinweg 7', 'Frankfurt a.M.', '60528', 'Germany'),
       (45, 'Lets Stop N Shop', 'Jaime Yorres', '87 Polk St. Suite 5', 'San Francisco', '94117', 'USA'),
       (46, 'LILA-Supermercado', 'Carlos González', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto',
        '3508', 'Venezuela'),
       (47, 'LINO-Delicateses', 'Felipe Izquierdo', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', '4980', 'Venezuela'),
       (48, 'Lonesome Pine Restaurant', 'Fran Wilson', '89 Chiaroscuro Rd.', 'Portland', '97219', 'USA'),
       (49, 'Magazzini Alimentari Riuniti', 'Giovanni Rovelli', 'Via Ludovico il Moro 22', 'Bergamo', '24100', 'Italy'),
       (50, 'Maison Dewey', 'Catherine Dewey', 'Rue Joseph-Bens 532', 'Bruxelles', 'B-1180', 'Belgium'),
       (51, 'Mère Paillarde', 'Jean Fresnière', '43 rue St. Laurent', 'Montréal', 'H1J 1C3', 'Canada'),
       (52, 'Morgenstern Gesundkost', 'Alexander Feuer', 'Heerstr. 22', 'Leipzig', '04179', 'Germany'),
       (53, 'North/South', 'Simon Crowther', 'South House 300 Queensbridge', 'London', 'SW7 1RZ', 'UK'),
       (54, 'Océano Atlántico Ltda.', 'Yvonne Moncada', 'Ing. Gustavo Moncada 8585 Piso 20-A', 'Buenos Aires', '1010',
        'Argentina'),
       (55, 'Old World Delicatessen', 'Rene Phillips', '2743 Bering St.', 'Anchorage', '99508', 'USA'),
       (56, 'Ottilies Käseladen', 'Henriette Pfalzheim', 'Mehrheimerstr. 369', 'Köln', '50739', 'Germany'),
       (57, 'Paris spécialités', 'Marie Bertrand', '265, boulevard Charonne', 'Paris', '75012', 'France'),
       (58, 'Pericles Comidas clásicas', 'Guillermo Fernández', 'Calle Dr. Jorge Cash 321', 'México D.F.', '05033',
        'Mexico'),
       (59, 'Piccolo und mehr', 'Georg Pipps', 'Geislweg 14', 'Salzburg', '5020', 'Austria'),
       (60, 'Princesa Isabel Vinhoss', 'Isabel de Castro', 'Estrada da saúde n. 58', 'Lisboa', '1756', 'Portugal'),
       (61, 'Que Delícia', 'Bernardo Batista', 'Rua da Panificadora, 12', 'Rio de Janeiro', '02389-673', 'Brazil'),
       (62, 'Queen Cozinha', 'Lúcia Carvalho', 'Alameda dos Canàrios, 891', 'São Paulo', '05487-020', 'Brazil'),
       (63, 'QUICK-Stop', 'Horst Kloss', 'Taucherstraße 10', 'Cunewalde', '01307', 'Germany'),
       (64, 'Rancho grande', 'Sergio Gutiérrez', 'Av. del Libertador 900', 'Buenos Aires', '1010', 'Argentina'),
       (65, 'Rattlesnake Canyon Grocery', 'Paula Wilson', '2817 Milton Dr.', 'Albuquerque', '87110', 'USA'),
       (66, 'Reggiani Caseifici', 'Maurizio Moroni', 'Strada Provinciale 124', 'Reggio Emilia', '42100', 'Italy'),
       (67, 'Ricardo Adocicados', 'Janete Limeira', 'Av. Copacabana, 267', 'Rio de Janeiro', '02389-890', 'Brazil'),
       (68, 'Richter Supermarkt', 'Michael Holz', 'Grenzacherweg 237', 'Genève', '1203', 'Switzerland'),
       (69, 'Romero y tomillo', 'Alejandra Camino', 'Gran Vía, 1', 'Madrid', '28001', 'Spain'),
       (70, 'Santé Gourmet', 'Jonas Bergulfsen', 'Erling Skakkes gate 78', 'Stavern', '4110', 'Norway'),
       (71, 'Save-a-lot Markets', 'Jose Pavarotti', '187 Suffolk Ln.', 'Boise', '83720', 'USA'),
       (72, 'Seven Seas Imports', 'Hari Kumar', '90 Wadhurst Rd.', 'London', 'OX15 4NB', 'UK'),
       (73, 'Simons bistro', 'Jytte Petersen', 'Vinbæltet 34', 'København', '1734', 'Denmark'),
       (74, 'Spécialités du monde', 'Dominique Perrier', '25, rue Lauriston', 'Paris', '75016', 'France'),
       (75, 'Split Rail Beer & Ale', 'Art Braunschweiger', 'P.O. Box 555', 'Lander', '82520', 'USA'),
       (76, 'Suprêmes délices', 'Pascale Cartrain', 'Boulevard Tirou, 255', 'Charleroi', 'B-6000', 'Belgium'),
       (77, 'The Big Cheese', 'Liz Nixon', '89 Jefferson Way Suite 2', 'Portland', '97201', 'USA'),
       (78, 'The Cracker Box', 'Liu Wong', '55 Grizzly Peak Rd.', 'Butte', '59801', 'USA'),
       (79, 'Toms Spezialitäten', 'Karin Josephs', 'Luisenstr. 48', 'Münster', '44087', 'Germany'),
       (80, 'Tortuga Restaurante', 'Miguel Angel Paolino', 'Avda. Azteca 123', 'México D.F.', '05033', 'Mexico'),
       (81, 'Tradição Hipermercados', 'Anabela Domingues', 'Av. Inês de Castro, 414', 'São Paulo', '05634-030',
        'Brazil'),
       (82, 'Trails Head Gourmet Provisioners', 'Helvetius Nagy', '722 DaVinci Blvd.', 'Kirkland', '98034', 'USA'),
       (83, 'Vaffeljernet', 'Palle Ibsen', 'Smagsløget 45', 'Århus', '8200', 'Denmark'),
       (84, 'Victuailles en stock', 'Mary Saveley', '2, rue du Commerce', 'Lyon', '69004', 'France'),
       (85, 'Vins et alcools Chevalier', 'Paul Henriot', '59 rue de lAbbaye', 'Reims', '51100', 'France'),
       (86, 'Die Wandernde Kuh', 'Rita Müller', 'Adenauerallee 900', 'Stuttgart', '70563', 'Germany'),
       (87, 'Wartian Herkku', 'Pirkko Koskitalo', 'Torikatu 38', 'Oulu', '90110', 'Finland'),
       (88, 'Wellington Importadora', 'Paula Parente', 'Rua do Mercado, 12', 'Resende', '08737-363', 'Brazil'),
       (89, 'White Clover Markets', 'Karl Jablonski', '305 - 14th Ave. S. Suite 3B', 'Seattle', '98128', 'USA'),
       (90, 'Wilman Kala', 'Matti Karttunen', 'Keskuskatu 45', 'Helsinki', '21240', 'Finland'),
       (91, 'Wolski', 'Zbyszek', 'ul. Filtrowa 68', 'Walla', '01-012', 'Poland');

create table products
(
    product_id   int primary key,
    product_name varchar(128) not null,
    supplier_id  int,
    category_id  int,
    unit         varchar(128),
    price        double precision
);

insert into products (product_id, product_name, supplier_id, category_id, unit, price)
VALUES (1, 'Chais ', 1, 1, '10 boxes x 20 bags ', 18),
       (2, 'Chang ', 1, 1, '24 - 12 oz bottles ', 19),
       (3, 'Aniseed Syrup ', 1, 2, '12 - 550 ml bottles ', 10),
       (4, 'Chef Antons Cajun Seasoning ', 2, 2, '48 - 6 oz jars ', 22),
       (5, 'Chef Antons Gumbo Mix ', 2, 2, '36 boxes ', 21.35),
       (6, 'Grandmas Boysenberry Spread ', 3, 2, '12 - 8 oz jars ', 25),
       (7, 'Uncle Bobs Organic Dried Pears ', 3, 7, '12 - 1 lb pkgs. ', 30),
       (8, 'Northwoods Cranberry Sauce ', 3, 2, '12 - 12 oz jars ', 40),
       (9, 'Mishi Kobe Niku ', 4, 6, '18 - 500 g pkgs. ', 97),
       (10, 'Ikura ', 4, 8, '12 - 200 ml jars ', 31),
       (11, 'Queso Cabrales ', 5, 4, '1 kg pkg. ', 21),
       (12, 'Queso Manchego La Pastora ', 5, 4, '10 - 500 g pkgs. ', 38),
       (13, 'Konbu ', 6, 8, '2 kg box ', 6),
       (14, 'Tofu ', 6, 7, '40 - 100 g pkgs. ', 23.25),
       (15, 'Genen Shouyu ', 6, 2, '24 - 250 ml bottles ', 15.5),
       (16, 'Pavlova ', 7, 3, '32 - 500 g boxes ', 17.45),
       (17, 'Alice Mutton ', 7, 6, '20 - 1 kg tins ', 39),
       (18, 'Carnarvon Tigers ', 7, 8, '16 kg pkg. ', 62.5),
       (19, 'Teatime Chocolate Biscuits ', 8, 3, '10 boxes x 12 pieces ', 9.2),
       (20, 'Sir Rodneys Marmalade ', 8, 3, '30 gift boxes ', 81),
       (21, 'Sir Rodneys Scones ', 8, 3, '24 pkgs. x 4 pieces ', 10),
       (22, 'Gustafs Knäckebröd ', 9, 5, '24 - 500 g pkgs. ', 21),
       (23, 'Tunnbröd ', 9, 5, '12 - 250 g pkgs. ', 9),
       (24, 'Guaraná Fantástica ', 10, 1, '12 - 355 ml cans ', 4.5),
       (25, 'NuNuCa Nuß-Nougat-Creme ', 11, 3, '20 - 450 g glasses ', 14),
       (26, 'Gumbär Gummibärchen ', 11, 3, '100 - 250 g bags ', 31.23),
       (27, 'Schoggi Schokolade ', 11, 3, '100 - 100 g pieces ', 43.9),
       (28, 'Rössle Sauerkraut ', 12, 7, '25 - 825 g cans ', 45.6),
       (29, 'Thüringer Rostbratwurst ', 12, 6, '50 bags x 30 sausgs. ', 123.79),
       (30, 'Nord-Ost Matjeshering ', 13, 8, '10 - 200 g glasses ', 25.89),
       (31, 'Gorgonzola Telino ', 14, 4, '12 - 100 g pkgs ', 12.5),
       (32, 'Mascarpone Fabioli ', 14, 4, '24 - 200 g pkgs. ', 32),
       (33, 'Geitost ', 15, 4, '500 g ', 2.5),
       (34, 'Sasquatch Ale ', 16, 1, '24 - 12 oz bottles ', 14),
       (35, 'Steeleye Stout ', 16, 1, '24 - 12 oz bottles ', 18),
       (36, 'Inlagd Sill ', 17, 8, '24 - 250 g jars ', 19),
       (37, 'Gravad lax ', 17, 8, '12 - 500 g pkgs. ', 26),
       (38, 'Côte de Blaye ', 18, 1, '12 - 75 cl bottles ', 263.5),
       (39, 'Chartreuse verte ', 18, 1, '750 cc per bottle ', 18),
       (40, 'Boston Crab Meat ', 19, 8, '24 - 4 oz tins ', 18.4),
       (41, 'Jacks New England Clam Chowder ', 19, 8, '12 - 12 oz cans ', 9.65),
       (42, 'Singaporean Hokkien Fried Mee ', 20, 5, '32 - 1 kg pkgs. ', 14),
       (43, 'Ipoh Coffee ', 20, 1, '16 - 500 g tins ', 46),
       (44, 'Gula Malacca ', 20, 2, '20 - 2 kg bags ', 19.45),
       (45, 'Røgede sild ', 21, 8, '1k pkg. ', 9.5),
       (46, 'Spegesild ', 21, 8, '4 - 450 g glasses ', 12),
       (47, 'Zaanse koeken ', 22, 3, '10 - 4 oz boxes ', 9.5),
       (48, 'Chocolade ', 22, 3, '10 pkgs. ', 12.75),
       (49, 'Maxilaku ', 23, 3, '24 - 50 g pkgs. ', 20),
       (50, 'Valkoinen suklaa ', 23, 3, '12 - 100 g bars ', 16.25),
       (51, 'Manjimup Dried Apples ', 24, 7, '50 - 300 g pkgs. ', 53),
       (52, 'Filo Mix ', 24, 5, '16 - 2 kg boxes ', 7),
       (53, 'Perth Pasties ', 24, 6, '48 pieces ', 32.8),
       (54, 'Tourtière ', 25, 6, '16 pies ', 7.45),
       (55, 'Pâté chinois ', 25, 6, '24 boxes x 2 pies ', 24),
       (56, 'Gnocchi di nonna Alice ', 26, 5, '24 - 250 g pkgs. ', 38),
       (57, 'Ravioli Angelo ', 26, 5, '24 - 250 g pkgs. ', 19.5),
       (58, 'Escargots de Bourgogne ', 27, 8, '24 pieces ', 13.25),
       (59, 'Raclette Courdavault ', 28, 4, '5 kg pkg. ', 55),
       (60, 'Camembert Pierrot ', 28, 4, '15 - 300 g rounds ', 34),
       (61, 'Sirop dérable ', 29, 2, '24 - 500 ml bottles ', 28.5),
       (62, 'Tarte au sucre ', 29, 3, '48 pies ', 49.3),
       (63, 'Vegie-spread ', 7, 2, '15 - 625 g jars ', 43.9),
       (64, 'Wimmers gute Semmelknödel ', 12, 5, '20 bags x 4 pieces ', 33.25),
       (65, 'Louisiana Fiery Hot Pepper Sauce ', 2, 2, '32 - 8 oz bottles ', 21.05),
       (66, 'Louisiana Hot Spiced Okra ', 2, 2, '24 - 8 oz jars ', 17),
       (67, 'Laughing Lumberjack Lager ', 16, 1, '24 - 12 oz bottles ', 14),
       (68, 'Scottish Longbreads ', 8, 3, '10 boxes x 8 pieces ', 12.5),
       (69, 'Gudbrandsdalsost ', 15, 4, '10 kg pkg. ', 36),
       (70, 'Outback Lager ', 7, 1, '24 - 355 ml bottles ', 15),
       (71, 'Fløtemysost ', 15, 4, '10 - 500 g pkgs. ', 21.5),
       (72, 'Mozzarella di Giovanni ', 14, 4, '24 - 200 g pkgs. ', 34.8),
       (73, 'Röd Kaviar ', 17, 8, '24 - 150 g jars ', 15),
       (74, 'Longlife Tofu ', 4, 7, '5 kg pkg. ', 10),
       (75, 'Rhönbräu Klosterbier ', 12, 1, '24 - 0.5 l bottles ', 7.75),
       (76, 'Lakkalikööri ', 23, 1, '500 ml ', 18),
       (77, 'Original Frankfurter grüne Soße ', 12, 2, '12 boxes ', 13);

create table orders
(
    order_id    int primary key,
    customer_id int references customers (customer_id),
    employee_id int,
    order_date  date default now(),
    shipper_id  int
);

insert into orders (order_id, customer_id, employee_id, order_date, shipper_id)
values (10249, 81, 6, '1996/07/05', 1),
       (10250, 34, 4, '1996/07/08', 2),
       (10251, 84, 3, '1996/07/08', 1),
       (10252, 76, 4, '1996/07/09', 2),
       (10253, 34, 3, '1996/07/10', 2),
       (10254, 14, 5, '1996/07/11', 2),
       (10255, 68, 9, '1996/07/12', 3),
       (10256, 88, 3, '1996/07/15', 2),
       (10257, 35, 4, '1996/07/16', 3),
       (10258, 20, 1, '1996/07/17', 1),
       (10259, 13, 4, '1996/07/18', 3),
       (10260, 55, 4, '1996/07/19', 1),
       (10261, 61, 4, '1996/07/19', 2),
       (10262, 65, 8, '1996/07/22', 3),
       (10263, 20, 9, '1996/07/23', 3),
       (10264, 24, 6, '1996/07/24', 3),
       (10265, 7, 2, '1996/07/25', 1),
       (10266, 87, 3, '1996/07/26', 3),
       (10267, 25, 4, '1996/07/29', 1),
       (10268, 33, 8, '1996/07/30', 3),
       (10269, 89, 5, '1996/07/31', 1),
       (10270, 87, 1, '1996/08/01', 1),
       (10271, 75, 6, '1996/08/01', 2),
       (10272, 65, 6, '1996/08/02', 2),
       (10273, 63, 3, '1996/08/05', 3),
       (10274, 85, 6, '1996/08/06', 1),
       (10275, 49, 1, '1996/08/07', 1),
       (10276, 80, 8, '1996/08/08', 3),
       (10277, 52, 2, '1996/08/09', 3),
       (10278, 5, 8, '1996/08/12', 2),
       (10279, 44, 8, '1996/08/13', 2),
       (10280, 5, 2, '1996/08/14', 1),
       (10281, 69, 4, '1996/08/14', 1),
       (10282, 69, 4, '1996/08/15', 1),
       (10283, 46, 3, '1996/08/16', 3),
       (10284, 44, 4, '1996/08/19', 1),
       (10285, 63, 1, '1996/08/20', 2),
       (10286, 63, 8, '1996/08/21', 3),
       (10287, 67, 8, '1996/08/22', 3),
       (10288, 66, 4, '1996/08/23', 1),
       (10289, 11, 7, '1996/08/26', 3),
       (10290, 15, 8, '1996/08/27', 1),
       (10291, 61, 6, '1996/08/27', 2),
       (10292, 81, 1, '1996/08/28', 2),
       (10293, 80, 1, '1996/08/29', 3),
       (10294, 65, 4, '1996/08/30', 2),
       (10295, 85, 2, '1996/09/02', 2),
       (10296, 46, 6, '1996/09/03', 1),
       (10297, 7, 5, '1996/09/04', 2),
       (10298, 37, 6, '1996/09/05', 2),
       (10299, 67, 4, '1996/09/06', 2),
       (10300, 49, 2, '1996/09/09', 2),
       (10301, 86, 8, '1996/09/09', 2),
       (10302, 76, 4, '1996/09/10', 2),
       (10303, 30, 7, '1996/09/11', 2),
       (10304, 80, 1, '1996/09/12', 2),
       (10305, 55, 8, '1996/09/13', 3),
       (10306, 69, 1, '1996/09/16', 3),
       (10307, 48, 2, '1996/09/17', 2),
       (10308, 2, 7, '1996/09/18', 3),
       (10309, 37, 3, '1996/09/19', 1),
       (10310, 77, 8, '1996/09/20', 2),
       (10311, 18, 1, '1996/09/20', 3),
       (10312, 86, 2, '1996/09/23', 2),
       (10313, 63, 2, '1996/09/24', 2),
       (10314, 65, 1, '1996/09/25', 2),
       (10315, 38, 4, '1996/09/26', 2),
       (10316, 65, 1, '1996/09/27', 3),
       (10317, 48, 6, '1996/09/30', 1),
       (10318, 38, 8, '1996/10/01', 2),
       (10319, 80, 7, '1996/10/02', 3),
       (10320, 87, 5, '1996/10/03', 3);

create table categories
(
    category_id   int primary key,
    category_name varchar(128) not null,
    description   varchar(256)
);

insert into categories (category_id, category_name, description)
values (1, 'Beverages', 'Soft drinks, coffees, teas, beers, and ales'),
       (2, 'Condiments', 'Sweet and savory sauces, relishes, spreads, and seasonings'),
       (3, 'Confections', 'Desserts, candies, and sweet breads'),
       (4, 'Dairy Products', 'Cheeses'),
       (5, 'Grains/Cereals', 'Breads, crackers, pasta, and cereal'),
       (6, 'Meat/Poultry', 'Prepared meats'),
       (7, 'Produce', 'Dried fruit and bean curd'),
       (8, 'Seafood', 'Seaweed and fish');

create table suppliers
(
    supplier_id   int primary key,
    supplier_name varchar(128) not null,
    contact_name  varchar(128) not null,
    address       varchar(128) not null,
    city          varchar(128) not null,
    postalCode    varchar(128) not null,
    country       varchar(128) not null,
    phone         varchar(128) unique
);

insert into suppliers (supplier_id, supplier_name, contact_name, address, city, postalCode, country, phone)
VALUES (1, 'Exotic Liquid', 'Charlotte Cooper', '49 Gilbert St.', 'Londona', 'EC1 4SD', 'UK', '(171) 555-2222'),
       (2, 'New Orleans Cajun Delights', 'Shelley Burke', 'P.O. Box 78934', 'New Orleans', '70117', 'USA',
        '(100) 555-4822'),
       (3, 'Grandma Kellys Homestead', 'Regina Murphy', '707 Oxford Rd.', 'Ann Arbor', '48104', 'USA',
        '(313) 555-5735'),
       (4, 'Tokyo Traders', 'Yoshi Nagase', '9-8 Sekimai Musashino-shi', 'Tokyo', '100', 'Japan', '(03) 3555-5011'),
       (5, 'Cooperativa de Quesos Las Cabras', 'Antonio del Valle Saavedra', 'Calle del Rosal 4', 'Oviedo', '33007',
        'Spain', '(98) 598 76 54'),
       (6, 'Mayumis', 'Mayumi Ohno', '92 Setsuko Chuo-ku', 'Osaka', '545', 'Japan', '(06) 431-7877'),
       (7, 'Pavlova, Ltd.', 'Ian Devling', '74 Rose St. Moonie Ponds', 'Melbourne', '3058', 'Australia',
        '(03) 444-2343'),
       (8, 'Specialty Biscuits, Ltd.', 'Peter Wilson', '29 Kings Way', 'Manchester', 'M14 GSD', 'UK', '(161) 555-4448'),
       (9, 'PB Knäckebröd AB', 'Lars Peterson', 'Kaloadagatan 13', 'Göteborg', 'S-345 67', 'Sweden', '031-987 65 43'),
       (10, 'Refrescos Americanas LTDA', 'Carlos Diaz', 'Av. das Americanas 12.890', 'São Paulo', '5442', 'Brazil',
        '(11) 555 4640'),
       (11, 'Heli Süßwaren GmbH & Co. KG', 'Petra Winkler', 'Tiergartenstraße 5', 'Berlin', '10785', 'Germany',
        '(010) 9984510'),
       (12, 'Plutzer Lebensmittelgroßmärkte AG', 'Martin Bein', 'Bogenallee 51', 'Frankfurt', '60439', 'Germany',
        '(069) 992755'),
       (13, 'Nord-Ost-Fisch Handelsgesellschaft mbH', 'Sven Petersen', 'Frahmredder 112a', 'Cuxhaven', '27478',
        'Germany', '(04721) 8713'),
       (14, 'Formaggi Fortini s.r.l.', 'Elio Rossi', 'Viale Dante, 75', 'Ravenna', '48100', 'Italy', '(0544) 60323'),
       (15, 'Norske Meierier', 'Beate Vileid', 'Hatlevegen 5', 'Sandvika', '1320', 'Norway', '(0)2-953010'),
       (16, 'Bigfoot Breweries', 'Cheryl Saylor', '3400 - 8th Avenue Suite 210', 'Bend', '97101', 'USA',
        '(503) 555-9931'),
       (17, 'Svensk Sjöföda AB', 'Michael Björn', 'Brovallavägen 231', 'Stockholm', 'S-123 45', 'Sweden',
        '08-123 45 67'),
       (18, 'Aux joyeux ecclésiastiques', 'Guylène Nodier', '203, Rue des Francs-Bourgeois', 'Paris', '75004', 'France',
        '(1) 03.83.00.68'),
       (19, 'New England Seafood Cannery', 'Robb Merchant', 'Order Processing Dept. 2100 Paul Revere Blvd.', 'Boston',
        '02134', 'USA', '(617) 555-3267'),
       (20, 'Leka Trading', 'Chandra Leka', '471 Serangoon Loop, Suite #402', 'Singapore', '0512', 'Singapore',
        '555-8787'),
       (21, 'Lyngbysild', 'Niels Petersen', 'Lyngbysild Fiskebakken 10', 'Lyngby', '2800', 'Denmark', '43844108'),
       (22, 'Zaanse Snoepfabriek', 'Dirk Luchte', 'Verkoop Rijnweg 22', 'Zaandam', '9999 ZZ', 'Netherlands',
        '(12345) 1212'),
       (23, 'Karkki Oy', 'Anne Heikkonen', 'Valtakatu 12', 'Lappeenranta', '53120', 'Finland', '(953) 10956'),
       (24, 'Gday, Mate', 'Wendy Mackenzie', '170 Prince Edward Parade Hunters Hill', 'Sydney', '2042', 'Australia',
        '(02) 555-5914'),
       (25, 'Ma Maison', 'Jean-Guy Lauzon', '2960 Rue St. Laurent', 'Montréal', 'H1J 1C3', 'Canada', '(514) 555-9022'),
       (26, 'Pasta Buttini s.r.l.', 'Giovanni Giudici', 'Via dei Gelsomini, 153', 'Salerno', '84100', 'Italy',
        '(089) 6547665'),
       (27, 'Escargots Nouveaux', 'Marie Delamare', '22, rue H. Voiron', 'Montceau', '71300', 'France', '85.57.00.07'),
       (28, 'Gai pâturage', 'Eliane Noz', 'Bat. B 3, rue des Alpes', 'Annecy', '74000', 'France', '38.76.98.06'),
       (29, 'Forêts dérables', 'Chantal Goulet', '148 rue Chasseur', 'Ste-Hyacinthe', 'J2S 7S8', 'Canada',
        '(514) 555-2955');


create table shippers
(
    shipper_id   int primary key,
    shipper_name varchar(128) not null,
    phone        varchar(128) not null unique
);

insert into shippers (shipper_id, shipper_name, phone)
values (1, 'Speedy Express', '(503) 555-9831'),
       (2, 'United Package', '(503) 555-3199'),
       (3, 'Federal Shipping', '(503) 555-9931');

create table employees
(
    employee_id int primary key,
    first_name  varchar(48) NOT NULL,
    last_name   varchar(48) NOT NULL,
    birth_day   date        not null default now(),
    photo       varchar(48),
    notes       text
);

insert into employees (employee_id, first_name, last_name, birth_day, photo, notes)
values (11, 'John', 'Doe', '1968/12/08', 'EmpID1.pic',
        'Some text includes a BA in psychology from Colorado State University. She also completed (The Art of the Cold Call). Nancy is a member of Toastmasters International'),
       (12, 'Fuller', 'Andrew', '1952/02/19', 'EmpID2.pic',
        'Andrew received his BTS commercial and a Ph.D. in international marketing from the University of Dallas. He is fluent in French and Italian and reads German. He joined the company as a sales representative, was promoted to sales manager and was then named vice president of sales. Andrew is a member of the Sales Management Roundtable, the Seattle Chamber of Commerce, and the Pacific Rim Importers Association. '),
       (13, 'Leverling', 'Janet', '1963/08/30', 'EmpID3.pic',
        'Janet has a BS degree in chemistry from Boston College). She has also completed a certificate program in food retailing management. Janet was hired as a sales associate and was promoted to sales representative. '),
       (14, 'Peacock', 'Margaret', '1958/09/19', 'EmpID4.pic',
        'Margaret holds a BA in English literature from Concordia College and an MA from the American Institute of Culinary Arts. She was temporarily assigned to the London office before returning to her permanent post in Seattle. '),
       (15, 'Buchanan', 'Steven', '1955/03/04', 'EmpID5.pic',
        'Steven Buchanan graduated from St. Andrews University, Scotland, with a BSC degree. Upon joining the company as a sales representative, he spent 6 months in an orientation program at the Seattle office and then returned to his permanent post in London, where he was promoted to sales manager. Mr. Buchanan has completed the courses Successful Telemarketing International Sales Management. He is fluent in French. '),
       (16, 'Suyama', 'Michael', '1963/07/02', 'EmpID6.pic',
        'Michael is a graduate of Sussex University (MA, economics) and the University of California at Los Angeles (MBA, marketing). He has also taken the courses Multi-Cultural Selling and Time Management for the Sales Professional. He is fluent in Japanese and can read and write French, Portuguese, and Spanish. '),
       (17, 'King', 'Robert', '1960/05/29', 'EmpID7.pic',
        'Robert King served in the Peace Corps and traveled extensively before completing his degree in English at the University of Michigan and then joining the company. After completing a course entitled Selling in Europe, he was transferred to the London office. '),
       (18, 'Callahan', 'Laura', '1958/01/09', 'EmpID8.pic',
        'Laura received a BA in psychology from the University of Washington. She has also completed a course in business French. She reads and writes French. '),
       (19, 'Dodsworth', 'Anne', '1969/07/02', 'EmpID9.pic',
        'Anne has a BA degree in English from St. Lawrence College. She is fluent in French and German. '),
       (10, 'West', 'Adam', '1928/09/19', 'EmpID10.pic', 'An old chum');

-- DML --------------------------------------------------------------------------------------------------------

-- Select all the different countries from the  'Customers ' table:
-- Sort the products by ProductName in reverse order:
select *
from products
order by product_name desc;
-- return the number of different countries.
-- Sort the products by price:
-- Select all customers from Mexico:
select *
from customers
where country = 'Mexico';

-- selects all customers from the  'Customers ' table, sorted ascending by the  'Country ' and descending by the  'CustomerName ' column:
-- selects all fields from Customers where Country is  'Germany ' AND City is  'Berlin ' AND PostalCode is higher than 12000:
-- Select all Spanish customers that starts with either  'G ' or  'R ':
-- Select all customers that either - are from Spain and starts with either  'G ', or starts with the letter  'R ':
-- Select all customers from Germany or Spain:
select *
from customers
where country in ('Germany', 'Spain');
select *
from customers
where country = 'Germany'
   or country = 'Spain';
-- Select all customers that either: are from Spain and starts with either  'G ', or starts with the letter  'R ':
select *
from customers
where country = 'Spain'
  and (customer_name like 'G%' or customer_name like 'R%');
-- todo: other options: wildcard, in ???
-- Select only the customers that are NOT from Spain:
select *
from customers
where customers.country != ('Spain');
select *
from customers
where customers.country not in ('Spain');
-- Select customers that does not start with the letter 'A':
select *
from customers
where customer_name not like 'A%';
-- Select customers with a customerID not between 10 and 60:
select *
from customers
where customers.customer_id not between 10 and 60
order by customer_id;
-- Select customers that are not from Paris or London:
select *
from customers
where city not in ('Paris', 'London');

-- Select customers with a CustomerId not greater than 50:
-- Select customers with a CustomerID not less than 50:
-- insert a new record in the  'Customers ' table (address optional)
insert into customers (customer_id, customer_name, contact_name, city, postal_code, country)
values (92, 'Bob', 'Bobby', 'Texas', 394928, 'USA');
-- insert a new record, but only insert data in the  'CustomerName ',  'City ', and  'Country ' columns (CustomerID will be updated automatically):
-- alter customers table with customer_id auto-incrementation on insert
alter table customers
    alter column customer_id type serial using customer_id::serial; --todo: not working???

insert into customers (customer_name, city, country)
values ('Jason', 'Texas', 'USA');
-- lists all customers with a NULL value in the  'Address ' field:
select *
from customers
where address is not null;
select *
from customers
where customers.address = null;
-- lists all customers with a value in the  'Address ' field:
select *
from customers
where address is not null;
-- drop not null constraint on address
alter table customers
    alter column address drop not null;
-- Select all records from the Customers where the PostalCode column is empty.
-- The following SQL statement updates the first customer (CustomerID = 1) with a new contact person and a new city.
-- The following SQL statement will update the ContactName to  'Juan ' for all records where country is  'Mexico ':
-- Update the City column of all records in the Customers table.
-- The following SQL statement deletes the customer  'Alfreds Futterkiste ' from the  'Customers ' table:
-- The following SQL statement deletes all rows in the  'Customers ' table, without deleting the table:

-- copy and then remove the Customers table:
-- Insert 2 records to the Customers table where the Country value is 'Botswana'.
insert into customers (customer_id, customer_name, contact_name, address, city, postal_code, country)
values (93, 'Loki', 'Loki Wilson', '30 Rose Blr.', 'Gaborone', 12345, 'Botswana'),
       (94, 'Mike', 'Mike Peterson', '31 Rose Blr.', 'Gaborone', 12345, 'Botswana');
-- Delete all the records from the Customers table where the Country value is 'Botswana'.
delete
from customers
where country = 'Botswana';
-- Select the first 3 records of the Customers table:
select *
from customers
order by customer_id
limit 3;
-- The following SQL statement selects the first 50% of the records from the  'Customers ' table (for SQL Server/MS Access):
-- select * from customers where customer_id <= (select (count(*) / 2 + 1) as middle);
-- select from customers (count() / 2 + 1) as middle;

-- The following SQL statement shows the equivalent example for Oracle:
-- The following SQL statement selects the first three records from the  'Customers ' table, where the country is  'Germany ' (for SQL Server/MS Access):
select *
from customers
where country = 'Germany'
limit 3;
-- Return all customers that starts with the letter 'a':
select *
from customers
where lower(customer_name) like 'a%';
-- Return all customers that ends with the pattern 'es':
select *
from customers
where customer_name like '%es';
-- Return all customers that contains the pattern 'mer':
select *
from customers
where customer_name like '%mer%';
-- Return all customers with a City starting with any character, followed by  'ondon ':
select *
from customers
where city like '%ondon';

-- Return all customers with a City starting with  'L ', followed by any 3 characters, ending with  'o
-- The [] wildcard returns a result if any of the characters inside gets a match.
-- Return all customers starting with  'a ',  'b ',  'c ',  'd ',  'e ' or  'f ':
select *
from customers c
where lower(customer_name) like 'a%'
   or lower(c.customer_name) like 'b%'
   or lower(c.customer_name) like 'c%'
   or lower(c.customer_name) like 'd%'
   or lower(c.customer_name) like 'e%'
   or lower(c.customer_name) like 'f%';

select *
from customers c
where lower(LEFT(c.customer_name, 1)) IN ('a', 'b', 'c', 'd', 'e', 'f');

-- Return all customers that starts with  'a ' and are at least 3 characters in length:

-- Return all customers that have  'r ' in the second position:
select *
from customers
where customer_name like '_r%';
-- Insert the missing parts in the JOIN clause to join the two tables Orders and Customers, using the CustomerID field in both tables as the relationship between the two tables.
-- Join Products and Categories with the INNER JOIN keyword:
select distinct product_name, price, category_name, description
from products
         inner join categories on product_id = products.category_id;
-- Choose the correct JOIN clause to select all records from the two tables customers and orders where there is a match in both tables.
select *
from customers
         inner join orders o on customers.customer_id = o.customer_id;
-- The following SQL statement will select all customers, and any orders they might have:
select c.customer_name, o.order_id, o.order_date, s.shipper_name
from customers c
         left join orders o on c.customer_id = o.customer_id
         left join shippers s on o.shipper_id = s.shipper_id;

-- The following SQL statement will return all employees, and any orders they might have placed:
select *
from customers
         inner join orders on customers.customer_id = orders.customer_id;
-- Choose the correct JOIN clause to select all the records from the Customers table plus all the matches in the Orders table.
select *
from customers
         left join orders on customers.customer_id = orders.customer_id;
-- The following SQL statement selects all customers, and all orders:
select *
from customers
         full outer join orders o on customers.customer_id = o.customer_id;
-- The following SQL statement matches customers that are from the same city:
select c1.contact_name, c2.contact_name, c1.city
from customers c1,
     customers c2
where c1.city = c2.city
order by city;

-- The following SQL statement returns the cities (only distinct values) from both the  'Customers ' and the  'Suppliers ' table:
select c.city
from customers c
union
select s.city
from suppliers s
order by city;
-- The following SQL statement returns the cities (duplicate values also) from both the  'Customers ' and the  'Suppliers ' table:

select c.city
from customers c
union all
select s.city
from suppliers s
order by city;

-- The following SQL statement returns the German cities (only distinct values) from both the  'Customers ' and the  'Suppliers ' table:
select city
from customers c
union
distinct
select city
from suppliers s;
-- The following SQL statement returns the German cities (duplicate values also) from both the  'Customers ' and the  'Suppliers ' table:
select c.city
from customers c
where country = 'Germany'
union
select s.city
from suppliers s
where country = 'Germany'
order by city;
-- The following SQL statement lists all customers and suppliers:
select customer_id, customer_name, contact_name, address, city, postal_code, country
from customers
union
select supplier_id, supplier_name, contact_name, address, city, postalCode, country
from suppliers s;
-- The following SQL statement lists the number of customers in each country. Only include countries with more than 5 customers:
select count(customer_id) as count, country
from customers
group by country;
-- The following SQL statement lists the number of customers in each country, sorted high to low (Only include countries with more than 5 customers):
select count(c.customer_id) count, country
from customers c
group by country
having count(customer_id) > 5
order by count;
-- The following SQL statement lists the employees that have registered more than 10 orders:
select e.employee_id, e.first_name, e.last_name, count(*) count
from employees e
         left join orders o on e.employee_id = o.employee_id
group by e.employee_id
having count(*) > 10
order by count;

select count(*)
from orders
where employee_id = 1;

select order_id, customer_id, employee_id, order_date, shipper_name, phone
from orders
         inner join shippers s on orders.shipper_id = s.shipper_id
where employee_id = 1
order by order_date;

select order_id, customer_name, order_date, shipper_name, phone
from ((orders
    inner join shippers s on orders.shipper_id = s.shipper_id)
    inner join customers c on orders.customer_id = c.customer_id);

select order_id,
       customer_name,
       concat(e.first_name, ' ', e.last_name) employee_name,
       order_date,
       shipper_name,
       phone
from ((orders
    inner join shippers s on orders.shipper_id = s.shipper_id)
    inner join customers c on orders.customer_id = c.customer_id)
         inner join employees e on orders.employee_id = e.employee_id;

select *
from orders
where employee_id = 1
order by order_date;
-- The following SQL statement lists if the employees  'Davolio ' or  'Fuller ' have registered more than 25 orders:

-- SQL requests
select Country, count(customer_id) as num_of_customers
from customers
group by Country
having count(customer_id) > 5
order by count(customer_id) desc;