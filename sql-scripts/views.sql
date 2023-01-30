--it firme cije filijale rade na najvise projekata poredjani u opadajucem redosledu
CREATE OR REPLACE VIEW najvise_projekata_firma AS
SELECT f.NAZIVF,f.IDF, COUNT(p.IDP) as ukupno_projekata
FROM FIRMA f
JOIN FILIJALA fl on f.IDF = fl.IDF
JOIN PROJEKAT p ON fl.IDFL = p.IDFL
GROUP BY f.NAZIVF,f.IDF
ORDER BY ukupno_projekata DESC;
--filijala na koja na svojim internim projektima  najvise koristi  tehnologiju  sa imenom ASP.NET
CREATE OR REPLACE VIEW najvise_internih_projekata_filijala AS
SELECT FL.NAZIVFL,FL.IDFL, COUNT(P.IDP) as ukupno_projekata
FROM FILIJALA FL
JOIN PROJEKAT P on fl.IDFL = P.IDFL
JOIN PROJEKAT_TEHNOLOGIJA PT on P.IDP = PT.PROJEKAT_IDP
JOIN TEHNOLOGIJA T on PT.TEHNOLOGIJA_IDT = T.IDT
WHERE P.TIPP = 'Interni_Projekat' AND T.NAZIVT = 'ASP.NET'
GROUP BY FL.NAZIVFL,FL.IDFL
ORDER BY ukupno_projekata DESC;
SELECT *
FROM najvise_internih_projekata_filijala FL
where FL.ukupno_projekata = (SELECT MAX(FL1.ukupno_projekata)
                             from najvise_internih_projekata_filijala FL1);
--svi softver inzinjeri i ukupan broj projekata   na kojima rade imaju zaduzenje frontend developera
CREATE OR REPLACE VIEW frontend_developer_projekat AS
SELECT R.IMER,R.PRZR,R.IDR,R.ISR,R.EMAILR,COUNT(R.IDR) as ukupno_projekata
FROM  RADNIK R
JOIN SOFTVERSKI_INZENJER SI on R.IDR = SI.IDR
JOIN INZINJER_PROJEKAT IP on SI.IDR = IP.IDR
JOIN INZENJER_OBAVLJA_ZADUZENJE IOZ on IP.IDR = IOZ.INZINJERPROJEKAT_IDR and IP.IDP = IOZ.INZINJERPROJEKAT_IDP
JOIN PROJEKAT_ZADUZENJE PZ on IOZ.PROJEKATZADUZENJE_IDP = PZ.IDP and IOZ.PROJEKATZADUZENJE_IDZ = PZ.IDZ
JOIN ZADUZENJE Z on PZ.IDZ = Z.IDZ
WHERE z.NAZIVZ = 'frontend developer'
GROUP BY R.IMER,R.PRZR,R.IDR,R.ISR,R.EMAILR
ORDER BY ukupno_projekata DESC;
