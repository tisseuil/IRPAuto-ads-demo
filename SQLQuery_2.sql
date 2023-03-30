SELECT  IND.Siret_CODE, IND.Etablissement_ID, concat(' A POUR:',TYP.LibelleSource_NOM), PersonneCible_FID
	FROM dbo.T_Dim_Etablissement IND 
	INNER JOIN dbo.T_Dim_RelationPersonnes RLT ON RLT.PersonneSource_FID=IND.Etablissement_ID 
	INNER JOIN dbo.T_Dim_TypeRelation TYP ON TYP.TypeRelation_ID=RLT.TypeRelation_FID 
	Where IND.Siret_CODE = 'Z1485258520015'
