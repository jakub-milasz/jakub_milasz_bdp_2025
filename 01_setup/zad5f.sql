SELECT imie, nazwisko, (liczba_godzin-160) AS nadgodziny FROM ksiegowosc.pracownicy prac
JOIN ksiegowosc.wynagrodzenie w ON prac.id_pracownika=w.id_pracownika
JOIN ksiegowosc.godziny g ON g.id_godziny=w.id_godziny
WHERE liczba_godzin > 160;