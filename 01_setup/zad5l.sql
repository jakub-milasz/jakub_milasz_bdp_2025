SELECT stanowisko, AVG(kwota), MIN(kwota), MAX(kwota) FROM ksiegowosc.pensja
GROUP BY stanowisko
HAVING stanowisko='Kierownik';