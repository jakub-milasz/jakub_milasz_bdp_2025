SELECT imie, nazwisko, kwota FROM ksiegowosc.pracownicy prac
JOIN ksiegowosc.wynagrodzenie w ON prac.id_pracownika=w.id_pracownika
JOIN ksiegowosc.pensja p ON w.id_pensji=p.id_pensji
ORDER BY kwota;