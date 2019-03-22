#inserimento auto
insert into Auto(Targa, NumeroPosti, Marca, Modello, Latitudine, Longitudine, Libera) values('EB123LD', 4, 'Fiat', 'Panda', '43.783622', '11.261540', TRUE);
insert into Auto(Targa, NumeroPosti, Marca, Modello, Latitudine, Longitudine, Libera) values('AE623FR', 4, 'Tesla', 'Model S', '43.770494', '11.248458', TRUE);
insert into Auto(Targa, NumeroPosti, Marca, Modello, Latitudine, Longitudine, Libera) values('FA978UT', 4, 'Fiat', '500', '43.765404','11.258374', FALSE);
insert into Auto(Targa, NumeroPosti, Marca, Modello, Latitudine, Longitudine, Libera) values('BE456AZ', 4, 'Ferrari', 'Ferrari 450', '43.793460', '11.233006', TRUE);
insert into Auto(Targa, NumeroPosti, Marca, Modello, Latitudine, Longitudine, Libera) values('FE372LK', 2, 'Smart', 'Gmbh', '43.796519', '11.234631', FALSE);
insert into Auto(Targa, NumeroPosti, Marca, Modello, Latitudine, Longitudine, Libera) values('AA007LL', 5, 'Kia', 'X-Line', '43.798777', '11.195029', FALSE);
insert into Auto(Targa, NumeroPosti, Marca, Modello, Latitudine, Longitudine, Libera) values('EB183WD', 4, 'Fiat', 'Bravo', '43.775628', '11.274379', FALSE);
insert into Auto(Targa, NumeroPosti, Marca, Modello, Latitudine, Longitudine, Libera) values('ZE698LR', 4, 'Tesla', 'Roadster', '43.770029', '11.267119', TRUE);
insert into Auto(Targa, NumeroPosti, Marca, Modello, Latitudine, Longitudine, Libera) values('OR965JT', 4, 'Fiat', 'Tipo', '43.770094', '11.265004', TRUE);
insert into Auto(Targa, NumeroPosti, Marca, Modello, Latitudine, Longitudine, Libera) values('TR436TZ', 4, 'Ferrari', 'Ferrari 488', '43.778359', '11.257149', FALSE);
insert into Auto(Targa, NumeroPosti, Marca, Modello, Latitudine, Longitudine, Libera) values('UY982PK', 2, 'Audi', 'A6', '43.777053', '11.268951', TRUE);
insert into Auto(Targa, NumeroPosti, Marca, Modello, Latitudine, Longitudine, Libera) values('AY407LI', 5, 'Nissan', 'Leaf', '43.776703', '11.257357', TRUE);

#inserimento utente
insert into Utente(Nome, Cognome, Email, NumeroCarta, Psw, CVV) values('Marco', 'Rossi', 'marcorossi@gmail.com', '2674276540', '14bd6368f945db643efb9fe5f0b79794a0da5fad', 727);
insert into Utente(Nome, Cognome, Email, NumeroCarta, Psw, CVV) values('Gianluca', 'Marchi', 'gianlucamarchi@gmail.com', '1770252699', '1b0e322ac5ce90bb986c11db856405b90b8184a0', 835);
insert into Utente(Nome, Cognome, Email, NumeroCarta, Psw, CVV) values('Matteo', 'Piccio', 'matteopiccio@gmail.com', '1640767159', '6cd1da6f9e423daadda23461fe1eb798e08608d6', 112);
insert into Utente(Nome, Cognome, Email, NumeroCarta, Psw, CVV) values('Marta', 'Fiorentino', 'martafiorentino@gmail.com', '3842609157', '8659e261b040f3dc4de57738cd8b3233f558650a', 465);
insert into Utente(Nome, Cognome, Email, NumeroCarta, Psw, CVV) values('Mario', 'Russo', 'mariorusso@gmail.com', '9654884708', '07d8f0196995a3a4724e69de91184fff7b9f6340', 672);
insert into Utente(Nome, Cognome, Email, NumeroCarta, Psw, CVV) values('Andrea', 'Genovesi', 'andreagenovesi@gmail.com', '2291562025', '2e03ac137010b94de08c5b4ab5e3214e1375be18', 823);
insert into Utente(Nome, Cognome, Email, NumeroCarta, Psw, CVV) values('Cristina', 'Baresi', 'cristinabaresi@gmail.com', '5113896569', '51f1f6991575fc5f57ef27e597df4541e50d21ad', 554);
insert into Utente(Nome, Cognome, Email, NumeroCarta, Psw, CVV) values('Silvia', 'Beneventi', 'silviabeneventi@gmail.com', '8146491597', '276b5f4c002a9957e1df88ea97236920eac2fbbe', 888);

#inserimento utilizzi
insert into Utilizzi(idUtente, TargaAuto, OraInizio, OraFine, LatitudineInizio, LongitudineInizio, LatitudineFine, LongitudineFine) values(3, 'AE623FR', '2018-01-10 12:30:23', '2018-01-10 13:46:12','43.777582','11.254913', '43.769517', '11.247188');
insert into Utilizzi(idUtente, TargaAuto, OraInizio, OraFine, LatitudineInizio, LongitudineInizio, LatitudineFine, LongitudineFine) values(7, 'FE372LK', '2018-12-25 20:12:33', '2018-12-25 21:12:33','43.780017','11.253695', '43.768242', '11.245495');
insert into Utilizzi(idUtente, TargaAuto, OraInizio, OraFine, LatitudineInizio, LongitudineInizio, LatitudineFine, LongitudineFine) values(4, 'EB123LD', '2018-01-04 03:57:54', '2018-01-04 10:43:11','43.777959','11.248942', '43.765741', '11.240812');
insert into Utilizzi(idUtente, TargaAuto, OraInizio, OraFine, LatitudineInizio, LongitudineInizio, LatitudineFine, LongitudineFine) values(6, 'AA007LL', '2018-03-16 07:37:58', '2018-03-16 09:41:00','43.791408','11.218961', '43.760610', '11.246438');
insert into Utilizzi(idUtente, TargaAuto, OraInizio, OraFine, LatitudineInizio, LongitudineInizio, LatitudineFine, LongitudineFine) values(2, 'AA007LL', '2018-06-27 16:39:30', '2018-06-27 19:04:22','43.770163','11.245427', '43.763056', '11.259027');
insert into Utilizzi(idUtente, TargaAuto, OraInizio, OraFine, LatitudineInizio, LongitudineInizio, LatitudineFine, LongitudineFine) values(3, 'BE456AZ', '2018-07-08 16:03:41', '2018-07-08 16:45:59','43.763233','11.260058', '43.775197', '11.230995');
insert into Utilizzi(idUtente, TargaAuto, OraInizio, OraFine, LatitudineInizio, LongitudineInizio, LatitudineFine, LongitudineFine) values(5, 'BE456AZ', '2018-07-13 10:47:20', '2018-07-13 14:33:20','43.764283','11.267555', '43.763490', '11.195135');
insert into Utilizzi(idUtente, TargaAuto, OraInizio, OraFine, LatitudineInizio, LongitudineInizio, LatitudineFine, LongitudineFine) values(5, 'AE623FR', '2018-09-18 11:17:08', '2018-09-18 19:28:36','43.774430,','11.257252', '43.754420', '11.185128');
insert into Utilizzi(idUtente, TargaAuto, OraInizio, OraFine, LatitudineInizio, LongitudineInizio, LatitudineFine, LongitudineFine) values(5, 'FE372LK', '2018-11-06 19:28:46', '2018-11-06 23:49:00','43.771286','11.248754', '43.746651', '11.229812');


#inserimento team service
insert into TeamService(NumeroComponenti) values(3);
insert into TeamService(NumeroComponenti) values(5);
insert into TeamService(NumeroComponenti) values(7);
insert into TeamService(NumeroComponenti) values(2);
insert into TeamService(NumeroComponenti) values(4);
insert into TeamService(NumeroComponenti) values(8);

#inserimento membro team
insert into MembroTeam(Nome, Cognome, Eta, idTeamService) values('Manuela', 'Zito', 41, 2);
insert into MembroTeam(Nome, Cognome, Eta, idTeamService) values('Geremia', 'Pirozzi', 63, 1);
insert into MembroTeam(Nome, Cognome, Eta, idTeamService) values('Agostino', 'Giordano', 33, 2);

insert into MembroTeam(Nome, Cognome, Eta, idTeamService) values('Galeazzo', 'Lombardi', 22, 4);
insert into MembroTeam(Nome, Cognome, Eta, idTeamService) values('Liviano', 'Dellucci', 25, 4);
insert into MembroTeam(Nome, Cognome, Eta, idTeamService) values('Silvana', 'Sal', 20, 3);
insert into MembroTeam(Nome, Cognome, Eta, idTeamService) values('Cristiano', 'Trevisani', 35, 1);
insert into MembroTeam(Nome, Cognome, Eta, idTeamService) values('Cristiano', 'Martinelli', 38, 1);
insert into MembroTeam(Nome, Cognome, Eta, idTeamService) values('Ezio', 'De Luca', 45, 5);

/*
#inserimento manutenzione
insert into Manutenzione(Tipo, idTeamService, TargaAuto) values('Pulizia interni', 2, 'AE623FR');
insert into Manutenzione(Tipo, idTeamService, TargaAuto) values('Sistemazione tappezzeria', 4, 'BE456AZ');
insert into Manutenzione(Tipo, idTeamService, TargaAuto) values('Pulizia vetri', 6, 'AA007LL');
insert into Manutenzione(Tipo, idTeamService, TargaAuto) values('Pulizia interni', 3, 'FE372LK');
*/

#inserimento riparazioni
insert into Riparazioni(TargaAuto, idTeamService, DataRiparazione, Importo, Descrzione, Kilometraggio, Latitudine, Longitudine) values('AE623FR', 2, '2018-03-12', 45, 'Rottura finestrino anteriore destro', 40000, '43.816769', '11.195273');
insert into Riparazioni(TargaAuto, idTeamService, DataRiparazione, Importo, Descrzione, Kilometraggio, Latitudine, Longitudine) values('BE456AZ', 4, '2018-10-08', 112, 'Faro posteriore sinistro rotto', 252345, '43.802080', '11.189373');
insert into Riparazioni(TargaAuto, idTeamService, DataRiparazione, Importo, Descrzione, Kilometraggio, Latitudine, Longitudine) values('FE372LK', 2, '2018-12-24', 235, 'Riparazione paraurti anteriore', 50557, '43.778299', '11.257721');