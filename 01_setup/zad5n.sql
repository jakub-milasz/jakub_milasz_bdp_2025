SELECT stanowisko, SUM(kwota) FROM ksiegowosc.pensja
GROUP BY stanowisko;