--Somme des montants de 4 beneficiaires en 2023

select Beneficiaire_FID as Beneficiaire_FID , sum(Montant_NB) as somme_des_montants
from dbo.T_Fait_EmissionPrestationSante 
where Beneficiaire_FID in ('wJsQC0000Eoir','wJsQC0000EmuH','wJsQC0000EtpC','wJsQC0000F2jw') 
and EmissionPrestationSante_DATECRE > '2023-01-01'
group by Beneficiaire_FID ;