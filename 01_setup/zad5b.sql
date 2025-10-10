SELECT prac.id_pracownika FROM ksiegowosc.pracownicy prac
JOIN ksiegowosc.wynagrodzenie w ON prac.id_pracownika=w.id_pracownika
JOIN ksiegowosc.pensja p ON p.id_pensji=w.id_pensji
WHERE p.kwota > 1000;