INSERT INTO ksiegowosc.pracownicy (imie, nazwisko, adres, telefon) VALUES
('Jan', 'Nowak', 'Warszawa, ul. Zielona 12', '501123456'),
('Anna', 'Kowalska', 'Kraków, ul. Długa 45', '502987654'),
('Jakub', 'Nowicki', 'Łódź, ul. Krótka 3', '503654321'),
('Joanna', 'Wiśniewska', 'Gdańsk, ul. Słoneczna 7', '504111222'),
('Michał', 'Wójcik', 'Poznań, ul. Polna 10', '505333444'),
('Karolina', 'Lewandowska', 'Wrocław, ul. Parkowa 2', '506555666'),
('Paweł', 'Kubiak', 'Katowice, ul. Kwiatowa 5', '507777888'),
('Julia', 'Nowakowska', 'Szczecin, ul. Leśna 9', '508999000'),
('Adam', 'Lis', 'Bydgoszcz, ul. Lipowa 4', '509111333'),
('Natalia', 'Kozłowska', 'Lublin, ul. Spacerowa 1', '510222444');


INSERT INTO ksiegowosc.godziny (data, liczba_godzin, id_pracownika) VALUES
('2025-09-30', 170, 1),
('2025-09-30', 160, 2),
('2025-09-30', 175, 3),
('2025-09-30', 162, 4),
('2025-09-30', 150, 5),
('2025-09-30', 165, 6),
('2025-09-30', 158, 7),
('2025-09-30', 180, 8),
('2025-09-30', 155, 9),
('2025-09-30', 190, 10);


INSERT INTO ksiegowosc.pensja (stanowisko, kwota) VALUES
('Kierownik', 4000.00),
('Asystent', 1800.00),
('Specjalista', 2500.00),
('Kierownik', 4200.00),
('Magazynier', 1300.00),
('Specjalista', 2800.00),
('Asystent', 1900.00),
('Kierownik', 4100.00),
('Specjalista', 2700.00),
('Praktykant', 1000.00);


INSERT INTO ksiegowosc.premia (rodzaj, kwota) VALUES
('Uznaniowa', 500.00),
('Brak', 0.00),
('Świąteczna', 700.00),
('Brak', 0.00),
('Uznaniowa', 400.00),
('Brak', 0.00),
('Roczna', 800.00),
('Brak', 0.00),
('Brak', 0.00),
('Uznaniowa', 600.00);


INSERT INTO ksiegowosc.wynagrodzenie (data, id_pracownika, id_godziny, id_pensji, id_premii) VALUES
('2025-09-30', 1, 1, 1, 1),
('2025-09-30', 2, 2, 2, 2),
('2025-09-30', 3, 3, 3, 3),
('2025-09-30', 4, 4, 4, 4),
('2025-09-30', 5, 5, 5, 5),
('2025-09-30', 6, 6, 6, 6),
('2025-09-30', 7, 7, 7, 7),
('2025-09-30', 8, 8, 8, 8),
('2025-09-30', 9, 9, 9, 9),
('2025-09-30', 10, 10, 10, 10);

