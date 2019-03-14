use CarSharing;

#inserimento auto
insert into Auto(Targa, NumeroPosti, Marca, Modello, Posizione) values('EB123LD', 4, 'Panda', 'Fiat', 'Ponte Vecchio');
insert into Auto(Targa, NumeroPosti, Marca, Modello, Posizione) values('AE623FR', 4, 'Tesla', 'Model S', 'Piazza della Repubblica');
insert into Auto(Targa, NumeroPosti, Marca, Modello, Posizione) values('FA978UT', 4, 'Fiat 500', 'Fiat', 'Piazza della Signoria');
insert into Auto(Targa, NumeroPosti, Marca, Modello, Posizione) values('BE456AZ', 4, 'Ferrari 450', 'Ferrari', 'Piazzale Michelangelo');
insert into Auto(Targa, NumeroPosti, Marca, Modello, Posizione) values('FE372LK', 2, 'Smart', 'Gmbh', 'Piazza Duomo');
insert into Auto(Targa, NumeroPosti, Marca, Modello, Posizione) values('AA007LL', 5, 'Kia', 'X-Line', 'Ponte Vecchio');

#inserimento utente
insert into Utente(Nome, Cognome, Email, NumeroCarta) values('Marco', 'Rossi', 'marcorossi@gmail.com', '2674276540');
insert into Utente(Nome, Cognome, Email, NumeroCarta) values('Gianluca', 'Marchi', 'gianlucamarchi@gmail.com', '1770252699');
insert into Utente(Nome, Cognome, Email, NumeroCarta) values('Matteo', 'Piccio', 'matteopiccio@gmail.com', '1640767159');
insert into Utente(Nome, Cognome, Email, NumeroCarta) values('Marta', 'Fiorentino', 'martafiorentino@gmail.com', '3842609157');
insert into Utente(Nome, Cognome, Email, NumeroCarta) values('Mario', 'Russo', 'mariorusso@gmail.com', '9654884708');
insert into Utente(Nome, Cognome, Email, NumeroCarta) values('Andrea', 'Genovesi', 'andreagenovesi@gmail.com', '2291562025');
insert into Utente(Nome, Cognome, Email, NumeroCarta) values('Cristina', 'Baresi', 'cristinabaresi@gmail.com', '5113896569');
insert into Utente(Nome, Cognome, Email, NumeroCarta) values('Silvia', 'Beneventi', 'silviabeneventi@gmail.com', '8146491597');

#inserimento utilizzi
insert into Utilizzi(idUtente, TargaAuto, OraInizio, OraFine) values(3, 'AE623FR', '2018-01-10 12:30:23', '2018-01-10 13:46:12');
insert into Utilizzi(idUtente, TargaAuto, OraInizio, OraFine) values(7, 'FE372LK', '2018-12-25 20:12:33', '2018-12-25 21:12:33');
insert into Utilizzi(idUtente, TargaAuto, OraInizio, OraFine) values(4, 'EB123LD', '2018-01-04 03:57:54', '2018-01-04 10:43:11');
insert into Utilizzi(idUtente, TargaAuto, OraInizio, OraFine) values(9, 'AA007LL', '2018-03-16 07:37:58', '2018-03-16 09:41:00');
insert into Utilizzi(idUtente, TargaAuto, OraInizio, OraFine) values(2, 'AA007LL', '2018-06-27 16:39:30', '2018-06-27 19:04:22');
insert into Utilizzi(idUtente, TargaAuto, OraInizio, OraFine) values(8, 'BE456AZ', '2018-07-08 16:03:41', '2018-07-08 16:45:59');
insert into Utilizzi(idUtente, TargaAuto, OraInizio, OraFine) values(5, 'BE456AZ', '2018-07-13 10:47:20', '2018-07-13 14:33:20');
insert into Utilizzi(idUtente, TargaAuto, OraInizio, OraFine) values(5, 'AE623FR', '2018-09-18 11:17:08', '2018-09-18 19:28:36');
insert into Utilizzi(idUtente, TargaAuto, OraInizio, OraFine) values(5, 'FE372LK', '2018-11-06 19:28:46', '2018-11-06 23:49:00');

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
insert into MembroTeam(Nome, Cognome, Eta, idTeamService) values('Galeazzo Lombardi', 22, 4);
insert into MembroTeam(Nome, Cognome, Eta, idTeamService) values('Liviano', 'Dellucci', 25, 4);
insert into MembroTeam(Nome, Cognome, Eta, idTeamService) values('Silvana', 'Sal', 20, 3);

#inserimento manutenzione
insert into Manutenzione(Tipo, idTeamService, TargaAuto) values('Pulizia interni', 2, 'AE623FR');
insert into Manutenzione(Tipo, idTeamService, TargaAuto) values('Sistemazione tappezzeria', 4, 'BE456AZ');
insert into Manutenzione(Tipo, idTeamService, TargaAuto) values('Pulizia vetri', 6, 'AA007LL');
insert into Manutenzione(Tipo, idTeamService, TargaAuto) values('Pulizia interni', 3, 'FE372LK');

#inserimento riparazioni
insert into Riparazioni(TargaAuto, idTeamService, Data, Importo, Luogo) values('AE623FR', 2, '2018-03-12', 45, 'Piazza della Signoria');
insert into Riparazioni(TargaAuto, idTeamService, Data, Importo, Luogo) values('BE456AZ', 4, '2018-10-08', 112, 'Rifredi');
insert into Riparazioni(TargaAuto, idTeamService, Data, Importo, Luogo) values('FE372LK', 2, '2018-12-24', 235, 'Soffiano');



































