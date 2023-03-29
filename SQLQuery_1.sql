SELECT --distinct
	Etablissement_ID, ETB.CodeNace_FID, Entreprise_FID, 
	-- Adresse
	Departement_CODE, 
	concat(Adresse1_NOM,' ',CodePostal_CODE,' ',Ville_NOM) AS AdressePostale_CODE,  Pays_CODE,
	FormeJuridique_FID, Etablissement_CODE,Etablissement_NOM, Siret_CODE,Creation_DATE,Fermeture_DATE,TypeEtablissement_NOM,GrandCompte_FLAG, 
	 SocieteMere_FLAG,ConventionCollective_NOM, VIP_FLAG,
	 Telephone_NUM, T_Dim_AdresseTelephonique.CategorieAdresse_FID
	FROM dbo.T_Dim_Etablissement ETB
	INNER JOIN dbo.T_Dim_CodeNace on ETB.CodeNace_FID = T_Dim_CodeNace.CodeNace_ID
	INNER JOIN dbo.T_Dim_ConventionCollective on ConventionCollective_FID = ConventionCollective_ID
	INNER JOIN dbo.T_Dim_AdressePostale on T_Dim_AdressePostale.Personne_FID = ETB.Etablissement_ID
	INNER JOIN dbo.T_Dim_Localisation on Localisation_FID = Localisation_ID
	INNER JOIN dbo.T_Dim_Pays on T_Dim_AdressePostale.Pays_FID = T_Dim_Pays.Pays_ID
	LEFT OUTER JOIN dbo.T_Dim_AdresseTelephonique on T_Dim_AdresseTelephonique.Personne_FID = Etablissement_ID
	INNER JOIN dbo.T_Dim_Entreprise on Entreprise_FID = Entreprise_ID 
	where Siret_CODE ='Z1485258520015'

--Z1485258520015
--B0123456789123
--W1485215210015
--W1485215210015