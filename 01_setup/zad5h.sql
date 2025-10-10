SELECT imie, nazwisko FROM ksiegowosc.pracownicy prac
JOIN ksiegowosc.wynagrodzenie w ON prac.id_pracownika=w.id_pracownika
JOIN ksiegowosc.godziny g ON g.id_godziny=w.id_godziny
JOIN ksiegowosc.premia pr ON pr.id_premii=w.id_premii
WHERE pr.rodzaj='Brak' AND g.liczba_godzin>160;