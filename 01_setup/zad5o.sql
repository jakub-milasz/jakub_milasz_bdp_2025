SELECT stanowisko, COUNT(*) FROM ksiegowosc.pracownicy prac
JOIN ksiegowosc.wynagrodzenie w ON prac.id_pracownika=w.id_pracownika
JOIN ksiegowosc.pensja p ON p.id_pensji=w.id_pensji
JOIN ksiegowosc.premia pr ON pr.id_premii=w.id_premii
WHERE rodzaj<>'Brak'
GROUP BY stanowisko;