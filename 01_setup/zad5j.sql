SELECT imie, nazwisko, p.kwota, pr.kwota FROM ksiegowosc.pracownicy prac
JOIN ksiegowosc.wynagrodzenie w ON prac.id_pracownika=w.id_pracownika
JOIN ksiegowosc.pensja p ON w.id_pensji=p.id_pensji
JOIN ksiegowosc.premia pr ON pr.id_premii=w.id_premii
ORDER BY p.kwota DESC, pr.kwota DESC