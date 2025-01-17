
CREATE TABLE organization(
    id varchar(250),
    PRIMARY KEY (id),
    organization_name varchar(250)
);

CREATE TABLE unit(
    id varchar(250),
    id_organization varchar(250),
    PRIMARY KEY (id),
    FOREIGN KEY (id_organization) REFERENCES organization(id),
    rid varchar(250),
    kind varchar(250)
);

CREATE TABLE locations(
    id varchar(250),
    PRIMARY KEY (id),
    location_name varchar(250),
    location_address varchar(250),
    zip varchar(250)
);

CREATE TABLE user(
    id varchar(250),
    PRIMARY KEY (id),
    user_name varchar(250),
    last_name varchar(250),
    email varchar(250)
);

CREATE TABLE organization_location(
    id varchar(250),
    PRIMARY KEY (id),
    id_location varchar(250),
    id_organization varchar(250),
    FOREIGN KEY (id_location) REFERENCES locations(id),
    FOREIGN KEY (id_organization) REFERENCES organization(id)
);

CREATE TABLE user_organization(
    id varchar(250),
    PRIMARY KEY (id),
    id_user varchar(250),
    id_organization varchar(250),
    FOREIGN KEY (id_user) REFERENCES user(id),
    FOREIGN KEY (id_organization) REFERENCES organization(id)
);

/*Data for organizations*/
INSERT INTO organization (id, organization_name) VALUES ('dcb09913-3c9a-4892-9985-3a30a5bb2aac', 'Boyle, Reichel and Hickle');
INSERT INTO organization (id, organization_name) VALUES ('016c3f2e-f718-439c-8e40-c6bf64597c45', 'Anderson Group');
INSERT INTO organization (id, organization_name) VALUES ('2904a379-d8c4-41a3-a52d-715161d4e89b', 'Wintheiser Group');
INSERT INTO organization (id, organization_name) VALUES ('1e41b730-2751-47ad-8dc7-13ef1f44260e', 'Mohr, Bradtke and Monahan');
INSERT INTO organization (id, organization_name) VALUES ('36d3e315-fd1e-40e5-a4f1-355db625cc2c', 'Muller - Metz');
INSERT INTO organization (id, organization_name) VALUES ('2cef79fe-81e8-41a7-8380-d73adfd7a1bd', 'Zulauf, Beier and Wunsch');
INSERT INTO organization (id, organization_name) VALUES ('5a49d38a-1e75-4a66-83c8-b40cf1048314', 'Predovic Inc');
INSERT INTO organization (id, organization_name) VALUES ('c5cabf0f-875e-49a1-b0b0-78c682554323', 'Mertz - Ernser');
INSERT INTO organization (id, organization_name) VALUES ('19c4521e-952d-495b-b246-c7e19032a083', 'Farrell - Leuschke');
INSERT INTO organization (id, organization_name) VALUES ('f17f91d8-aed3-4f8c-9935-fc024a5bbb47', 'Schowalter - Cole');
INSERT INTO organization (id, organization_name) VALUES ('cc9a0173-d922-49b0-9cd7-96e5432a0e99', 'Brakus, Murphy and Herman');
INSERT INTO organization (id, organization_name) VALUES ('ab23a064-afdf-4b3c-a653-6425fd3d4578', 'Schiller, Padberg and Smitham');
INSERT INTO organization (id, organization_name) VALUES ('06008d07-546a-4cca-bf56-a9daf7fcbbf6', 'Jast - Spinka');
INSERT INTO organization (id, organization_name) VALUES ('25af733a-58ac-4558-bd4a-2718e083aaf6', 'Blick - Steuber');
INSERT INTO organization (id, organization_name) VALUES ('c6131465-0f18-4242-9298-8454250410e1', 'Bauch, Hilll and Osinski');
INSERT INTO organization (id, organization_name) VALUES ('4330cc2c-8c5a-4097-9271-c04ef29fc576', 'Raynor, Aufderhar and Langworth');
INSERT INTO organization (id, organization_name) VALUES ('63a37d2a-21bd-48c6-bf54-4fdb72d839ce', 'Wisozk Inc');
INSERT INTO organization (id, organization_name) VALUES ('fa1eff1c-4ebf-4e79-accc-ddcc57b7a366', 'Roberts, Cronin and Gislason');
INSERT INTO organization (id, organization_name) VALUES ('b2d25a6e-3666-47d5-87b0-607474cf9056', 'Franey Group');
INSERT INTO organization (id, organization_name) VALUES ('4cfa06a7-6d1b-48fb-bade-7ce867d58792', 'Kilback LLC');
INSERT INTO organization (id, organization_name) VALUES ('725bbcba-8da5-4cc2-b071-45658c83563c', 'Jakubowski - Greenholt');
INSERT INTO organization (id, organization_name) VALUES ('f6febf77-072e-456a-893f-ee145239bdd8', 'Schinner - Reichert');
INSERT INTO organization (id, organization_name) VALUES ('24894e80-0f38-4976-9041-dd79cb9d14c1', 'Becker, Kautzer and Yundt');
INSERT INTO organization (id, organization_name) VALUES ('c4ee7231-4e29-4f40-9b53-75af632eb140', 'Ward, Lowe and Bahringer');
INSERT INTO organization (id, organization_name) VALUES ('47509a1a-8cbf-4eaf-91a9-e97cf99a169e', 'Ernser, Douglas and Trantow');
INSERT INTO organization (id, organization_name) VALUES ('dcf9239b-34c3-4106-a6a7-1cdea737bf22', 'Franey - Hilpert');
INSERT INTO organization (id, organization_name) VALUES ('02481263-7de9-462f-b706-6fe044bcf455', 'Quigley - Klein');
INSERT INTO organization (id, organization_name) VALUES ('3e0c8f37-6c0c-414f-8919-15d3613966b7', 'Emmerich - Nienow');
INSERT INTO organization (id, organization_name) VALUES ('49219160-9bbe-4feb-a456-2299ed9534d9', 'Corkery - Ritchie');
INSERT INTO organization (id, organization_name) VALUES ('e8cab62f-49a8-43d6-9c4f-ebcc8ed6b1fd', 'Stanton - Kshlerin');
INSERT INTO organization (id, organization_name) VALUES ('bdc47c0e-00ed-4490-b248-a06c6aacca4c', 'Lesch, Bednar and Pagac');
INSERT INTO organization (id, organization_name) VALUES ('e774130c-1a4f-42b3-aa47-d046859ea345', 'Fritsch, Harris and Hamill');
INSERT INTO organization (id, organization_name) VALUES ('69c538d6-bc58-496f-8494-d3135cf08d4b', 'Waters LLC');
INSERT INTO organization (id, organization_name) VALUES ('394247fd-ba9a-43bb-81aa-8d047f33e934', 'Kulas - Batz');
INSERT INTO organization (id, organization_name) VALUES ('2ba94225-96c5-4c58-a45f-35143022912a', 'Heidenreich and Sons');
/*Data for units*/
INSERT INTO unit (id, id_organization, rid, kind) VALUES ('8491a275-5426-44c6-b4b9-4986cec50f57', 'dcb09913-3c9a-4892-9985-3a30a5bb2aac', '2688', 'green');
INSERT INTO unit (id, id_organization, rid, kind) VALUES ('09337ea2-0dd9-449a-af64-7499278ace03', '016c3f2e-f718-439c-8e40-c6bf64597c45', '31198', 'white');
INSERT INTO unit (id, id_organization, rid, kind) VALUES ('43be9dfd-dcb1-4963-9614-acbdb6250495', '2904a379-d8c4-41a3-a52d-715161d4e89b', '31584', 'purple');
INSERT INTO unit (id, id_organization, rid, kind) VALUES ('138dc270-69b4-4215-a0b1-908b76c26276', '1e41b730-2751-47ad-8dc7-13ef1f44260e', '1500', 'silver');
INSERT INTO unit (id, id_organization, rid, kind) VALUES ('df88f091-59e8-4ba1-87f8-27c48b3d3923', '36d3e315-fd1e-40e5-a4f1-355db625cc2c', '7915', 'gold');
INSERT INTO unit (id, id_organization, rid, kind) VALUES ('d431c9aa-4397-40da-8498-34b34c3790f5', '2cef79fe-81e8-41a7-8380-d73adfd7a1bd', '1625', 'sky blue');
INSERT INTO unit (id, id_organization, rid, kind) VALUES ('aa5df054-3793-438b-86f7-148a57ea932d', '5a49d38a-1e75-4a66-83c8-b40cf1048314', '31916', 'gold');
INSERT INTO unit (id, id_organization, rid, kind) VALUES ('e3689bcd-0925-4feb-9320-ebf8e9d192b6', '2904a379-d8c4-41a3-a52d-715161d4e89b', '10900', 'cyan');
INSERT INTO unit (id, id_organization, rid, kind) VALUES ('eb8f0111-485d-4ab7-9d39-838417f4a9f8', '1e41b730-2751-47ad-8dc7-13ef1f44260e', '23453', 'red');
INSERT INTO unit (id, id_organization, rid, kind) VALUES ('ff918a7f-c9b5-4c9a-9988-2a04167291db', '36d3e315-fd1e-40e5-a4f1-355db625cc2c', '26162', 'mint green');
INSERT INTO unit (id, id_organization, rid, kind) VALUES ('ded92680-aece-4cc0-897b-4b204a6b963b', '2cef79fe-81e8-41a7-8380-d73adfd7a1bd', '25626', 'pink');
INSERT INTO unit (id, id_organization, rid, kind) VALUES ('a9692142-473e-425f-9c84-0ec0ba456cda', '2904a379-d8c4-41a3-a52d-715161d4e89b', '23633', 'green');
INSERT INTO unit (id, id_organization, rid, kind) VALUES ('db856850-0702-4f30-a939-17b93c181422', '1e41b730-2751-47ad-8dc7-13ef1f44260e', '12092', 'green');
INSERT INTO unit (id, id_organization, rid, kind) VALUES ('7f1ec784-4681-45be-bb2e-a222d404f923', '36d3e315-fd1e-40e5-a4f1-355db625cc2c', '10834', 'orange');
INSERT INTO unit (id, id_organization, rid, kind) VALUES ('963429e8-4618-47f7-8788-39bef4c60974', '2cef79fe-81e8-41a7-8380-d73adfd7a1bd', '4201', 'orange');
INSERT INTO unit (id, id_organization, rid, kind) VALUES ('c53cdecd-5a7d-4f29-b2e7-299291d0d316', 'dcb09913-3c9a-4892-9985-3a30a5bb2aac', '3412', 'lime');
INSERT INTO unit (id, id_organization, rid, kind) VALUES ('53fe00c3-abef-41c3-9414-ba669936175d', '016c3f2e-f718-439c-8e40-c6bf64597c45', '3475', 'violet');
INSERT INTO unit (id, id_organization, rid, kind) VALUES ('02c7e37a-2381-4b8b-a7a0-2cd6af1b9783', '2904a379-d8c4-41a3-a52d-715161d4e89b', '20289', 'tan');
INSERT INTO unit (id, id_organization, rid, kind) VALUES ('e0e6cc1e-d83c-4cc0-935d-464312a046e7', '1e41b730-2751-47ad-8dc7-13ef1f44260e', '15860', 'blue');
INSERT INTO unit (id, id_organization, rid, kind) VALUES ('61a73735-fc2a-4cf4-aa96-6a51fc6b3600', '36d3e315-fd1e-40e5-a4f1-355db625cc2c', '13659', 'red');
INSERT INTO unit (id, id_organization, rid, kind) VALUES ('e6aab4b0-35b1-491f-bb59-752dd0460dcb', '2cef79fe-81e8-41a7-8380-d73adfd7a1bd', '6734', 'cyan');
INSERT INTO unit (id, id_organization, rid, kind) VALUES ('f98719c8-5708-4e89-bf39-a5de81a874a5', '2904a379-d8c4-41a3-a52d-715161d4e89b', '4045', 'violet');
INSERT INTO unit (id, id_organization, rid, kind) VALUES ('abb9abfd-9456-4be1-ac48-708aaaa4ec35', '1e41b730-2751-47ad-8dc7-13ef1f44260e', '13538', 'azure');
INSERT INTO unit (id, id_organization, rid, kind) VALUES ('8d076f2e-bf05-404c-918b-7a83b5563e8f', '36d3e315-fd1e-40e5-a4f1-355db625cc2c', '24529', 'sky blue');
INSERT INTO unit (id, id_organization, rid, kind) VALUES ('3f58edcc-c955-450a-a288-1733d2727482', '1e41b730-2751-47ad-8dc7-13ef1f44260e', '16642', 'tan');
INSERT INTO unit (id, id_organization, rid, kind) VALUES ('1e029955-9109-4578-8eef-734d482769bf', '36d3e315-fd1e-40e5-a4f1-355db625cc2c', '32483', 'turquoise');
INSERT INTO unit (id, id_organization, rid, kind) VALUES ('3c8d87b4-3687-4e7e-950a-17a2e3b764a8', '2cef79fe-81e8-41a7-8380-d73adfd7a1bd', '18551', 'violet');
INSERT INTO unit (id, id_organization, rid, kind) VALUES ('acf9ca88-0620-44ef-a1ae-89dfaf443299', '5a49d38a-1e75-4a66-83c8-b40cf1048314', '20012', 'purple');
INSERT INTO unit (id, id_organization, rid, kind) VALUES ('18d2d4ea-ea3e-4478-af4c-d17fdbbd45d3', 'dcb09913-3c9a-4892-9985-3a30a5bb2aac', '31739', 'green');
INSERT INTO unit (id, id_organization, rid, kind) VALUES ('d5e13483-4682-403a-97f7-45c026cbdd72', '016c3f2e-f718-439c-8e40-c6bf64597c45', '6447', 'purple');
INSERT INTO unit (id, id_organization, rid, kind) VALUES ('c5493982-b6d3-408c-a3d6-62130c431cde', '2904a379-d8c4-41a3-a52d-715161d4e89b', '27079', 'silver');
INSERT INTO unit (id, id_organization, rid, kind) VALUES ('a6982576-9403-456b-ae3e-859f8dbab63c', '1e41b730-2751-47ad-8dc7-13ef1f44260e', '19997', 'sky blue');
INSERT INTO unit (id, id_organization, rid, kind) VALUES ('28607cf1-6a31-4959-83dc-5facc1e4f64d', '36d3e315-fd1e-40e5-a4f1-355db625cc2c', '17057', 'turquoise');
INSERT INTO unit (id, id_organization, rid, kind) VALUES ('e4e356e9-89b2-4e21-8d4a-fc254a340774', '2cef79fe-81e8-41a7-8380-d73adfd7a1bd', '13979', 'gold');
INSERT INTO unit (id, id_organization, rid, kind) VALUES ('c96ebfc6-61fb-491a-b2db-2349254151ce', '5a49d38a-1e75-4a66-83c8-b40cf1048314', '31789', 'teal');
/*Data for location*/
INSERT INTO locations (id, location_name, location_address, zip) VALUES ('c003513c-f830-431f-a1ae-ed7276bca065', 'Delano', '9870 Muller Shores', '17755');
INSERT INTO locations (id, location_name, location_address, zip) VALUES ('55620a78-d94c-41ff-8cbd-f876e6bed81f', 'Jeffersonville', '049 King Harbors', '12970');
INSERT INTO locations (id, location_name, location_address, zip) VALUES ('f53baf7a-038b-475f-af3c-9ae05a5e7f58', 'Citrus Heights', '89474 Sydney Islands', '06666');
INSERT INTO locations (id, location_name, location_address, zip) VALUES ('8d9d6145-dc96-46f5-8fc6-f26ae243028d', 'Bethesda', '974 Pouros Brooks', '13292-3318');
INSERT INTO locations (id, location_name, location_address, zip) VALUES ('9447b882-9231-457a-ba7b-b9ccdb5b9734', 'Sierra Vista', '2225 Swift Cliffs', '55031');
INSERT INTO locations (id, location_name, location_address, zip) VALUES ('70eaeabb-1d58-4681-9cb5-e6bca10c65d7', 'Knoxville', '59318 Gusikowski Pike', '16894');
INSERT INTO locations (id, location_name, location_address, zip) VALUES ('040878f4-e0c8-4c4a-87ad-6ccead56dc49', 'Temecula', '656 Rodolfo Passage', '59755');
INSERT INTO locations (id, location_name, location_address, zip) VALUES ('e2a55d1e-406c-4f9e-aec7-e61b1c75f426', 'Dubuque', '81917 Schulist Station', '10871-0903');
INSERT INTO locations (id, location_name, location_address, zip) VALUES ('0d8b7e28-d299-4952-847b-ccf6ec4cc339', 'Altoona', '92596 Arielle Plain', '69686-5184');
INSERT INTO locations (id, location_name, location_address, zip) VALUES ('5ad36a5f-a173-4608-bc85-1aa285d87676', 'Kingsport', '261 Goldner Haven', '95541');
INSERT INTO locations (id, location_name, location_address, zip) VALUES ('bc67a763-7576-4559-939e-1e0957cdaa57', 'Methuen Town', '2974 Miracle Hill', '48908-0216');
INSERT INTO locations (id, location_name, location_address, zip) VALUES ('6ca5622f-8702-44c5-94e4-6bdf920bfedf', 'Trenton', '290 Spinka Burg', '24245-0692');
INSERT INTO locations (id, location_name, location_address, zip) VALUES ('3128b1f4-20d1-478a-8678-45fd9d3583d0', 'Chino', '8923 Flo Curve', '87882-0923');
INSERT INTO locations (id, location_name, location_address, zip) VALUES ('617feeca-6334-44c5-aca5-f3b377a83fda', 'Carson', '4800 Karli Hollow', '25775-1624');
INSERT INTO locations (id, location_name, location_address, zip) VALUES ('5ee250d2-b575-4e84-bb5b-5f4da7f05afa', 'Fairfield', '639 Schmidt Place', '09391');
INSERT INTO locations (id, location_name, location_address, zip) VALUES ('a443a8a1-76bc-4773-b282-dc00f870b872', 'Boulder', '120 Gutmann Path', '90380-8950');
INSERT INTO locations (id, location_name, location_address, zip) VALUES ('5812b827-865d-4a85-a178-f6197715c19b', 'Reston', '20467 Olaf Spurs', '78751');
INSERT INTO locations (id, location_name, location_address, zip) VALUES ('2899baed-c37b-4e93-b944-b8c19860f358', 'East Orange', '56878 Tremblay Views', '41449-4603');
INSERT INTO locations (id, location_name, location_address, zip) VALUES ('acf2adeb-6569-4105-95db-3a112fabf069', 'Corona', '505 Hettinger Valleys', '26389-0069');
INSERT INTO locations (id, location_name, location_address, zip) VALUES ('a4b6c0c4-c783-4dac-b672-02068047ad88', 'Pharr', '12693 Aileen Forest', '04894-7203');
INSERT INTO locations (id, location_name, location_address, zip) VALUES ('b933c020-6b4a-449d-aede-dc76e94f3630', 'Taunton', '37541 Deondre Alley', '62194-4776');
INSERT INTO locations (id, location_name, location_address, zip) VALUES ('62d49ed5-e35e-4bd5-9425-8f74775bd963', 'San Jacinto', '603 Theodora Ports', '07769');
INSERT INTO locations (id, location_name, location_address, zip) VALUES ('04c0e492-eeb7-46cf-a225-b4b81c70a114', 'Owensboro', '0056 Koelpin Expressway', '43782-5959');
INSERT INTO locations (id, location_name, location_address, zip) VALUES ('663c8dac-a925-44d7-99d9-75cfabe27a23', 'Detroit', '7891 Jake Gardens', '49233-2486');
INSERT INTO locations (id, location_name, location_address, zip) VALUES ('958d0a4f-49ce-4e41-bca9-f0585d029d3f', 'Gaithersburg', '348 Kuphal Fords', '23517-6998');
INSERT INTO locations (id, location_name, location_address, zip) VALUES ('4c5bd458-90b8-43b6-ab0b-8d2d14a9d4fb', 'Hattiesburg', '81835 Heller Walk', '75970');
INSERT INTO locations (id, location_name, location_address, zip) VALUES ('9aae345a-6632-42a4-845c-f9b0d999bf7e', 'Las Vegas', '811 Block Pines', '64057');
INSERT INTO locations (id, location_name, location_address, zip) VALUES ('1e084e0a-7277-47b3-b13a-7b36bd1a949c', 'Norwalk', '77828 Langworth Run', '35844');
INSERT INTO locations (id, location_name, location_address, zip) VALUES ('6f0afa08-e7b9-4cdb-b281-75ff45f6230e', 'Potomac', '5645 Reichel Plain', '16894-8229');
INSERT INTO locations (id, location_name, location_address, zip) VALUES ('c2463206-5eee-4797-84c5-d0592d11bf1a', 'Roanoke', '16175 Reichert Mall', '22839');
INSERT INTO locations (id, location_name, location_address, zip) VALUES ('26604ec0-900d-41f7-9e59-03a7f45b4f96', 'Rohnert Park', '15741 Octavia Spring', '50043-2183');
INSERT INTO locations (id, location_name, location_address, zip) VALUES ('56a3662a-85c5-416f-8e8c-dd965189c6ee', 'Noblesville', '99121 Stark River', '40265-8315');
INSERT INTO locations (id, location_name, location_address, zip) VALUES ('4e59b3a6-75f8-427f-82e5-ab05f7c0ab6f', 'Durham', '340 Eldora Square', '15965');
INSERT INTO locations (id, location_name, location_address, zip) VALUES ('79772f84-c29a-4d4f-bc41-1b981abe17ed', 'Fontana', '1609 Oleta Lake', '61607-5467');
INSERT INTO locations (id, location_name, location_address, zip) VALUES ('a4baa857-cc58-4536-9bc8-2cb727e4d0c6', 'Decatur', '368 Donavon Branch', '35050');
/*Data for user*/
INSERT INTO user (id, user_name, last_name, email) VALUES ('8305534c-207e-40a5-a6b2-e4b058fa45a3', 'Julie', 'Spinka', 'Adonis.Kautzer@hotmail.com');
INSERT INTO user (id, user_name, last_name, email) VALUES ('4600c43a-05c6-477f-ab18-604ee853acca', 'Amanda', 'Reichert', 'Maribel.Jacobson43@hotmail.com');
INSERT INTO user (id, user_name, last_name, email) VALUES ('d6f8c9d1-d1fd-47b5-b2ca-ba07e33effc3', 'Beatrice', 'Bradtke', 'Beth.Cremin91@gmail.com');
INSERT INTO user (id, user_name, last_name, email) VALUES ('63114d2e-738e-4c4b-8600-c261cb25a606', 'Luis', 'Rath', 'Earline_Strosin@hotmail.com');
INSERT INTO user (id, user_name, last_name, email) VALUES ('746709f7-2a5e-41ac-bd1f-ee1c3073c762', 'Frida', 'Hermann', 'Alana70@gmail.com');
INSERT INTO user (id, user_name, last_name, email) VALUES ('224b59bf-2fac-4885-9bd8-f9a877ec1a43', 'Kenton', 'Grant', 'Catherine6@hotmail.com');
INSERT INTO user (id, user_name, last_name, email) VALUES ('b36242a6-f984-48af-8742-b57f4aed2ad9', 'Noe', 'Grant', 'Esther33@gmail.com');
INSERT INTO user (id, user_name, last_name, email) VALUES ('b15c459a-9a90-4d8b-add8-30a20fe91295', 'Kameron', 'Waelchi', 'Robyn.Schulist68@yahoo.com');
INSERT INTO user (id, user_name, last_name, email) VALUES ('e4c3c291-fae2-41c6-9a8c-bbb470a11935', 'Aida', 'Hayes', 'Audra39@gmail.com');
INSERT INTO user (id, user_name, last_name, email) VALUES ('57c07f34-9d89-40ff-91be-d1beaad6b51d', 'Ashly', 'Friesen', 'Nasir_Bosco@hotmail.com');
INSERT INTO user (id, user_name, last_name, email) VALUES ('d0b17c7b-80df-43e1-b58c-37d063386be8', 'Lemuel', 'Dach', 'Ciara.Lubowitz81@hotmail.com');
INSERT INTO user (id, user_name, last_name, email) VALUES ('425407df-509c-4f6b-8f10-1293382bd2ac', 'Shad', 'Bogan', 'Fiona51@yahoo.com');
INSERT INTO user (id, user_name, last_name, email) VALUES ('af2fca9e-fa3e-4835-a1b5-95c42de34ece', 'Zoey', 'Stamm', 'Joanie82@gmail.com');
INSERT INTO user (id, user_name, last_name, email) VALUES ('dfe5b447-5788-4957-9f9a-8ce47218f778', 'Hertha', 'Little', 'Enoch_Wehner@yahoo.com');
INSERT INTO user (id, user_name, last_name, email) VALUES ('0ffa1177-16e2-4d9b-97ee-771820b6188c', 'Ole', 'Schmitt', 'Johann95@hotmail.com');
INSERT INTO user (id, user_name, last_name, email) VALUES ('836656cc-d8d2-405f-9c67-65a8f2ab56e9', 'Noelia', 'Wiza', 'Josiane78@hotmail.com');
INSERT INTO user (id, user_name, last_name, email) VALUES ('bcdceb28-91d5-4c48-a2fb-a31f16990855', 'Ryley', 'Roberts', 'Kyla_Becker@yahoo.com');
INSERT INTO user (id, user_name, last_name, email) VALUES ('0d7aad25-d9ea-4ff5-83c7-d5742e79de23', 'Lorenz', 'Kshlerin', 'Mattie_Von46@gmail.com');
INSERT INTO user (id, user_name, last_name, email) VALUES ('fee06ef7-b9f0-4145-a182-6808f97e5013', 'Jaquelin', 'Bednar', 'Ashly_Medhurst@yahoo.com');
INSERT INTO user (id, user_name, last_name, email) VALUES ('b30220c7-8d39-47d0-ab6f-e45ee72a46fa', 'Anabel', 'Kuvalis', 'Jalyn30@gmail.com');
INSERT INTO user (id, user_name, last_name, email) VALUES ('cad92a4c-21bf-4bf3-8d28-aee440fadcff', 'Dorthy', 'Brown', 'Jaylon.Bartell4@hotmail.com');
INSERT INTO user (id, user_name, last_name, email) VALUES ('ddb03411-9b77-4e05-aae5-ee61fac211a3', 'Grant', 'Schinner', 'Elisabeth_Collier84@yahoo.com');
INSERT INTO user (id, user_name, last_name, email) VALUES ('dc3e3781-b8c2-493d-aad0-c065d0bc8276', 'Gilda', 'Hahn', 'Maida_Prosacco@yahoo.com');
INSERT INTO user (id, user_name, last_name, email) VALUES ('7f916f01-d526-4ade-ab4f-625839dda829', 'Stanton', 'Schultz', 'Alford57@gmail.com');
INSERT INTO user (id, user_name, last_name, email) VALUES ('d21227d3-799f-45da-ad4b-c8af42ee2ad6', 'Lilian', 'Kuhn', 'Simeon42@hotmail.com');
INSERT INTO user (id, user_name, last_name, email) VALUES ('8bac5106-646b-4ad2-9d95-3d2bc3c47dd8', 'Jayme', 'Bradtke', 'Kirsten_White@gmail.com');
INSERT INTO user (id, user_name, last_name, email) VALUES ('20dbbcce-59ab-4292-ae18-7c7267756710', 'Brendan', 'Heaney', 'Bert_Reilly@yahoo.com');
INSERT INTO user (id, user_name, last_name, email) VALUES ('2d7715f5-45cc-474b-81b1-ac086fea085e', 'Lula', 'Terry', 'Bryon_Bosco42@hotmail.com');
INSERT INTO user (id, user_name, last_name, email) VALUES ('f7d49b72-b920-4f81-9804-9830e997e77b', 'Judah', 'Gleichner', 'Chesley3@gmail.com');
INSERT INTO user (id, user_name, last_name, email) VALUES ('41841c3d-ffce-475d-beec-cd2c41d215be', 'Rita', 'Crist', 'Ocie73@hotmail.com');
INSERT INTO user (id, user_name, last_name, email) VALUES ('293efd40-8afd-48a7-ba3d-3120681846ec', 'Fernando', 'Vandervort', 'Brad_Ratke@yahoo.com');
INSERT INTO user (id, user_name, last_name, email) VALUES ('ed692719-706f-4b1a-815c-c3aa93773702', 'Celine', 'Mueller', 'Caesar_Kautzer@yahoo.com');
INSERT INTO user (id, user_name, last_name, email) VALUES ('8e12d37f-cd06-47e4-a0a7-e97268ba2717', 'Brenden', 'Blanda', 'Gladyce.Kuhlman@yahoo.com');
INSERT INTO user (id, user_name, last_name, email) VALUES ('01ba039a-1d2f-4d62-b78f-67365af3f65a', 'Paris', 'Sipes', 'Theresa_Hintz86@yahoo.com');
INSERT INTO user (id, user_name, last_name, email) VALUES ('9817b125-1ad7-480c-a84d-5550876bb43f', 'Kirsten', 'Harvey', 'Maverick_Weimann17@yahoo.com');

/*Data for organizaiton location*/
INSERT INTO organization_location (id, id_location,id_organization) VALUES('99779769-9ad6-4f87-8440-673ba221d32a','0d8b7e28-d299-4952-847b-ccf6ec4cc339', '5a49d38a-1e75-4a66-83c8-b40cf1048314');
INSERT INTO organization_location (id, id_location,id_organization) VALUES('b912ac46-fb83-40d5-92a6-636041a794a7','5ad36a5f-a173-4608-bc85-1aa285d87676', 'c5cabf0f-875e-49a1-b0b0-78c682554323');
INSERT INTO organization_location (id, id_location,id_organization) VALUES('86de7bcb-3a7e-4fcc-aeda-cb9166af06fc','bc67a763-7576-4559-939e-1e0957cdaa57', '19c4521e-952d-495b-b246-c7e19032a083');
INSERT INTO organization_location (id, id_location,id_organization) VALUES('8c5ff426-b753-423e-8f29-d2a87da031a1','6ca5622f-8702-44c5-94e4-6bdf920bfedf', 'f17f91d8-aed3-4f8c-9935-fc024a5bbb47');
INSERT INTO organization_location (id, id_location,id_organization) VALUES('d3f4ef55-1d9e-4f31-86eb-9bb03aa4f5cf','3128b1f4-20d1-478a-8678-45fd9d3583d0', 'cc9a0173-d922-49b0-9cd7-96e5432a0e99');
INSERT INTO organization_location (id, id_location,id_organization) VALUES('772468b9-0fb0-4863-bc94-b493a89c2996','617feeca-6334-44c5-aca5-f3b377a83fda', 'ab23a064-afdf-4b3c-a653-6425fd3d4578');
INSERT INTO organization_location (id, id_location,id_organization) VALUES('772468b9-0fb0-4863-bc94-b493a89c2997','5ee250d2-b575-4e84-bb5b-5f4da7f05afa', '06008d07-546a-4cca-bf56-a9daf7fcbbf6');
INSERT INTO organization_location (id, id_location,id_organization) VALUES('772468b9-0fb0-4863-bc94-b493a89c2998','a443a8a1-76bc-4773-b282-dc00f870b872', '25af733a-58ac-4558-bd4a-2718e083aaf6');
INSERT INTO organization_location (id, id_location,id_organization) VALUES('772468b9-0fb0-4863-bc94-b493a89c2999','5812b827-865d-4a85-a178-f6197715c19b', 'c6131465-0f18-4242-9298-8454250410e1');
INSERT INTO organization_location (id, id_location,id_organization) VALUES('772468b9-0fb0-4863-bc94-b493a89c2910','2899baed-c37b-4e93-b944-b8c19860f358', '4330cc2c-8c5a-4097-9271-c04ef29fc576');
INSERT INTO organization_location (id, id_location,id_organization) VALUES('772468b9-0fb0-4863-bc94-b493a89c2911','acf2adeb-6569-4105-95db-3a112fabf069', '5a49d38a-1e75-4a66-83c8-b40cf1048314');
INSERT INTO organization_location (id, id_location,id_organization) VALUES('772468b9-0fb0-4863-bc94-b493a89c2912','0d8b7e28-d299-4952-847b-ccf6ec4cc339', 'c5cabf0f-875e-49a1-b0b0-78c682554323');
INSERT INTO organization_location (id, id_location,id_organization) VALUES('772468b9-0fb0-4863-bc94-b493a89c2913','5ad36a5f-a173-4608-bc85-1aa285d87676', '19c4521e-952d-495b-b246-c7e19032a083');
INSERT INTO organization_location (id, id_location,id_organization) VALUES('772468b9-0fb0-4863-bc94-b493a89c2914','bc67a763-7576-4559-939e-1e0957cdaa57', 'f17f91d8-aed3-4f8c-9935-fc024a5bbb47');
INSERT INTO organization_location (id, id_location,id_organization) VALUES('772468b9-0fb0-4863-bc94-b493a89c2915','6ca5622f-8702-44c5-94e4-6bdf920bfedf', 'cc9a0173-d922-49b0-9cd7-96e5432a0e99');
INSERT INTO organization_location (id, id_location,id_organization) VALUES('772468b9-0fb0-4863-bc94-b493a89c2916','3128b1f4-20d1-478a-8678-45fd9d3583d0', 'ab23a064-afdf-4b3c-a653-6425fd3d4578');
INSERT INTO organization_location (id, id_location,id_organization) VALUES('772468b9-0fb0-4863-bc94-b493a89c2917','617feeca-6334-44c5-aca5-f3b377a83fda', '06008d07-546a-4cca-bf56-a9daf7fcbbf6');
INSERT INTO organization_location (id, id_location,id_organization) VALUES('772468b9-0fb0-4863-bc94-b493a89c2918','5ee250d2-b575-4e84-bb5b-5f4da7f05afa', '25af733a-58ac-4558-bd4a-2718e083aaf6');
INSERT INTO organization_location (id, id_location,id_organization) VALUES('772468b9-0fb0-4863-bc94-b493a89c2919','a443a8a1-76bc-4773-b282-dc00f870b872', 'c6131465-0f18-4242-9298-8454250410e1');
INSERT INTO organization_location (id, id_location,id_organization) VALUES('772468b9-0fb0-4863-bc94-b493a89c2920','5812b827-865d-4a85-a178-f6197715c19b', '4330cc2c-8c5a-4097-9271-c04ef29fc576');
INSERT INTO organization_location (id, id_location,id_organization) VALUES('772468b9-0fb0-4863-bc94-b493a89c2921','2899baed-c37b-4e93-b944-b8c19860f358', '06008d07-546a-4cca-bf56-a9daf7fcbbf6');
INSERT INTO organization_location (id, id_location,id_organization) VALUES('772468b9-0fb0-4863-bc94-b493a89c2922','acf2adeb-6569-4105-95db-3a112fabf069', '25af733a-58ac-4558-bd4a-2718e083aaf6');
INSERT INTO organization_location (id, id_location,id_organization) VALUES('772468b9-0fb0-4863-bc94-b493a89c2923','c2463206-5eee-4797-84c5-d0592d11bf1a', 'c6131465-0f18-4242-9298-8454250410e1');
INSERT INTO organization_location (id, id_location,id_organization) VALUES('772468b9-0fb0-4863-bc94-b493a89c2924','26604ec0-900d-41f7-9e59-03a7f45b4f96', '4330cc2c-8c5a-4097-9271-c04ef29fc576');
INSERT INTO organization_location (id, id_location,id_organization) VALUES('772468b9-0fb0-4863-bc94-b493a89c2925','56a3662a-85c5-416f-8e8c-dd965189c6ee', '5a49d38a-1e75-4a66-83c8-b40cf1048314');
INSERT INTO organization_location (id, id_location,id_organization) VALUES('772468b9-0fb0-4863-bc94-b493a89c2926','4e59b3a6-75f8-427f-82e5-ab05f7c0ab6f', 'c5cabf0f-875e-49a1-b0b0-78c682554323');
INSERT INTO organization_location (id, id_location,id_organization) VALUES('772468b9-0fb0-4863-bc94-b493a89c2927','9aae345a-6632-42a4-845c-f9b0d999bf7e', '5a49d38a-1e75-4a66-83c8-b40cf1048314');
INSERT INTO organization_location (id, id_location,id_organization) VALUES('772468b9-0fb0-4863-bc94-b493a89c2928','1e084e0a-7277-47b3-b13a-7b36bd1a949c', 'c5cabf0f-875e-49a1-b0b0-78c682554323');
INSERT INTO organization_location (id, id_location,id_organization) VALUES('772468b9-0fb0-4863-bc94-b493a89c2929','6f0afa08-e7b9-4cdb-b281-75ff45f6230e', '19c4521e-952d-495b-b246-c7e19032a083');
INSERT INTO organization_location (id, id_location,id_organization) VALUES('772468b9-0fb0-4863-bc94-b493a89c2930','c2463206-5eee-4797-84c5-d0592d11bf1a', 'f17f91d8-aed3-4f8c-9935-fc024a5bbb47');
INSERT INTO organization_location (id, id_location,id_organization) VALUES('772468b9-0fb0-4863-bc94-b493a89c2931','26604ec0-900d-41f7-9e59-03a7f45b4f96', 'cc9a0173-d922-49b0-9cd7-96e5432a0e99');
INSERT INTO organization_location (id, id_location,id_organization) VALUES('772468b9-0fb0-4863-bc94-b493a89c2932','56a3662a-85c5-416f-8e8c-dd965189c6ee', 'ab23a064-afdf-4b3c-a653-6425fd3d4578');
INSERT INTO organization_location (id, id_location,id_organization) VALUES('772468b9-0fb0-4863-bc94-b493a89c2933','4e59b3a6-75f8-427f-82e5-ab05f7c0ab6f', '06008d07-546a-4cca-bf56-a9daf7fcbbf6');
INSERT INTO organization_location (id, id_location,id_organization) VALUES('772468b9-0fb0-4863-bc94-b493a89c2934','79772f84-c29a-4d4f-bc41-1b981abe17ed', '25af733a-58ac-4558-bd4a-2718e083aaf6');
INSERT INTO organization_location (id, id_location,id_organization) VALUES('772468b9-0fb0-4863-bc94-b493a89c2935','a4baa857-cc58-4536-9bc8-2cb727e4d0c6', 'e774130c-1a4f-42b3-aa47-d046859ea345');

/*Data for user organization*/
INSERT INTO user_organization (id, id_user,id_organization) VALUES('3430d0d2-855f-4e8e-bf82-df992c55be21', '8305534c-207e-40a5-a6b2-e4b058fa45a3', 'c5cabf0f-875e-49a1-b0b0-78c682554323');
INSERT INTO user_organization (id, id_user,id_organization) VALUES('3430d0d2-855f-4e8e-bf82-df992c55be22', '4600c43a-05c6-477f-ab18-604ee853acca', '19c4521e-952d-495b-b246-c7e19032a083');
INSERT INTO user_organization (id, id_user,id_organization) VALUES('3430d0d2-855f-4e8e-bf82-df992c55be23', 'd6f8c9d1-d1fd-47b5-b2ca-ba07e33effc3', 'f17f91d8-aed3-4f8c-9935-fc024a5bbb47');
INSERT INTO user_organization (id, id_user,id_organization) VALUES('3430d0d2-855f-4e8e-bf82-df992c55be24', '63114d2e-738e-4c4b-8600-c261cb25a606', 'cc9a0173-d922-49b0-9cd7-96e5432a0e99');
INSERT INTO user_organization (id, id_user,id_organization) VALUES('3430d0d2-855f-4e8e-bf82-df992c55be25', '746709f7-2a5e-41ac-bd1f-ee1c3073c762', 'ab23a064-afdf-4b3c-a653-6425fd3d4578');
INSERT INTO user_organization (id, id_user,id_organization) VALUES('3430d0d2-855f-4e8e-bf82-df992c55be26', '224b59bf-2fac-4885-9bd8-f9a877ec1a43', '06008d07-546a-4cca-bf56-a9daf7fcbbf6');
INSERT INTO user_organization (id, id_user,id_organization) VALUES('3430d0d2-855f-4e8e-bf82-df992c55be27', 'b36242a6-f984-48af-8742-b57f4aed2ad9', '25af733a-58ac-4558-bd4a-2718e083aaf6');
INSERT INTO user_organization (id, id_user,id_organization) VALUES('3430d0d2-855f-4e8e-bf82-df992c55be28', 'b15c459a-9a90-4d8b-add8-30a20fe91295', 'c5cabf0f-875e-49a1-b0b0-78c682554323');
INSERT INTO user_organization (id, id_user,id_organization) VALUES('3430d0d2-855f-4e8e-bf82-df992c55be29', 'e4c3c291-fae2-41c6-9a8c-bbb470a11935', '19c4521e-952d-495b-b246-c7e19032a083');
INSERT INTO user_organization (id, id_user,id_organization) VALUES('3430d0d2-855f-4e8e-bf82-df992c55be30', '57c07f34-9d89-40ff-91be-d1beaad6b51d', 'f17f91d8-aed3-4f8c-9935-fc024a5bbb47');
INSERT INTO user_organization (id, id_user,id_organization) VALUES('3430d0d2-855f-4e8e-bf82-df992c55be31', 'd0b17c7b-80df-43e1-b58c-37d063386be8', 'cc9a0173-d922-49b0-9cd7-96e5432a0e99');
INSERT INTO user_organization (id, id_user,id_organization) VALUES('3430d0d2-855f-4e8e-bf82-df992c55be32', '425407df-509c-4f6b-8f10-1293382bd2ac', 'ab23a064-afdf-4b3c-a653-6425fd3d4578');
INSERT INTO user_organization (id, id_user,id_organization) VALUES('3430d0d2-855f-4e8e-bf82-df992c55be33', '8305534c-207e-40a5-a6b2-e4b058fa45a3', '06008d07-546a-4cca-bf56-a9daf7fcbbf6');
INSERT INTO user_organization (id, id_user,id_organization) VALUES('3430d0d2-855f-4e8e-bf82-df992c55be34', '4600c43a-05c6-477f-ab18-604ee853acca', '25af733a-58ac-4558-bd4a-2718e083aaf6');
INSERT INTO user_organization (id, id_user,id_organization) VALUES('3430d0d2-855f-4e8e-bf82-df992c55be35', 'd6f8c9d1-d1fd-47b5-b2ca-ba07e33effc3', '725bbcba-8da5-4cc2-b071-45658c83563c');
INSERT INTO user_organization (id, id_user,id_organization) VALUES('3430d0d2-855f-4e8e-bf82-df992c55be36', '63114d2e-738e-4c4b-8600-c261cb25a606', 'f6febf77-072e-456a-893f-ee145239bdd8');
INSERT INTO user_organization (id, id_user,id_organization) VALUES('3430d0d2-855f-4e8e-bf82-df992c55be37', '746709f7-2a5e-41ac-bd1f-ee1c3073c762', '24894e80-0f38-4976-9041-dd79cb9d14c1');
INSERT INTO user_organization (id, id_user,id_organization) VALUES('3430d0d2-855f-4e8e-bf82-df992c55be38', '224b59bf-2fac-4885-9bd8-f9a877ec1a43', 'b2d25a6e-3666-47d5-87b0-607474cf9056');
INSERT INTO user_organization (id, id_user,id_organization) VALUES('3430d0d2-855f-4e8e-bf82-df992c55be39', 'b36242a6-f984-48af-8742-b57f4aed2ad9', '4cfa06a7-6d1b-48fb-bade-7ce867d58792');
INSERT INTO user_organization (id, id_user,id_organization) VALUES('3430d0d2-855f-4e8e-bf82-df992c55be40', 'b15c459a-9a90-4d8b-add8-30a20fe91295', '725bbcba-8da5-4cc2-b071-45658c83563c');
INSERT INTO user_organization (id, id_user,id_organization) VALUES('3430d0d2-855f-4e8e-bf82-df992c55be41', 'e4c3c291-fae2-41c6-9a8c-bbb470a11935', 'f6febf77-072e-456a-893f-ee145239bdd8');
INSERT INTO user_organization (id, id_user,id_organization) VALUES('3430d0d2-855f-4e8e-bf82-df992c55be42', '57c07f34-9d89-40ff-91be-d1beaad6b51d', '24894e80-0f38-4976-9041-dd79cb9d14c1');
INSERT INTO user_organization (id, id_user,id_organization) VALUES('3430d0d2-855f-4e8e-bf82-df992c55be43', 'd0b17c7b-80df-43e1-b58c-37d063386be8', 'c4ee7231-4e29-4f40-9b53-75af632eb140');
INSERT INTO user_organization (id, id_user,id_organization) VALUES('3430d0d2-855f-4e8e-bf82-df992c55be44', '425407df-509c-4f6b-8f10-1293382bd2ac', '47509a1a-8cbf-4eaf-91a9-e97cf99a169e');
INSERT INTO user_organization (id, id_user,id_organization) VALUES('3430d0d2-855f-4e8e-bf82-df992c55be45', 'b36242a6-f984-48af-8742-b57f4aed2ad9', 'dcf9239b-34c3-4106-a6a7-1cdea737bf22');
INSERT INTO user_organization (id, id_user,id_organization) VALUES('3430d0d2-855f-4e8e-bf82-df992c55be46', 'b15c459a-9a90-4d8b-add8-30a20fe91295', '02481263-7de9-462f-b706-6fe044bcf455');
INSERT INTO user_organization (id, id_user,id_organization) VALUES('3430d0d2-855f-4e8e-bf82-df992c55be47', 'e4c3c291-fae2-41c6-9a8c-bbb470a11935', '3e0c8f37-6c0c-414f-8919-15d3613966b7');
INSERT INTO user_organization (id, id_user,id_organization) VALUES('3430d0d2-855f-4e8e-bf82-df992c55be48', '57c07f34-9d89-40ff-91be-d1beaad6b51d', 'c5cabf0f-875e-49a1-b0b0-78c682554323');
INSERT INTO user_organization (id, id_user,id_organization) VALUES('3430d0d2-855f-4e8e-bf82-df992c55be49', 'd0b17c7b-80df-43e1-b58c-37d063386be8', 'c5cabf0f-875e-49a1-b0b0-78c682554323');
INSERT INTO user_organization (id, id_user,id_organization) VALUES('3430d0d2-855f-4e8e-bf82-df992c55be50', '425407df-509c-4f6b-8f10-1293382bd2ac', '19c4521e-952d-495b-b246-c7e19032a083');
INSERT INTO user_organization (id, id_user,id_organization) VALUES('3430d0d2-855f-4e8e-bf82-df992c55be51', '8305534c-207e-40a5-a6b2-e4b058fa45a3', 'f17f91d8-aed3-4f8c-9935-fc024a5bbb47');
INSERT INTO user_organization (id, id_user,id_organization) VALUES('3430d0d2-855f-4e8e-bf82-df992c55be52', '4600c43a-05c6-477f-ab18-604ee853acca', 'cc9a0173-d922-49b0-9cd7-96e5432a0e99');
INSERT INTO user_organization (id, id_user,id_organization) VALUES('3430d0d2-855f-4e8e-bf82-df992c55be53', 'd6f8c9d1-d1fd-47b5-b2ca-ba07e33effc3', 'ab23a064-afdf-4b3c-a653-6425fd3d4578');
INSERT INTO user_organization (id, id_user,id_organization) VALUES('3430d0d2-855f-4e8e-bf82-df992c55be54', '63114d2e-738e-4c4b-8600-c261cb25a606', '06008d07-546a-4cca-bf56-a9daf7fcbbf6');
INSERT INTO user_organization (id, id_user,id_organization) VALUES('3430d0d2-855f-4e8e-bf82-df992c55be55', '746709f7-2a5e-41ac-bd1f-ee1c3073c762', '25af733a-58ac-4558-bd4a-2718e083aaf6');