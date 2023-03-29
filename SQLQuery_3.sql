--Nombre de code produit par type d'offre
SELECT TypeOffre_NOM, count(Produit_CODE) as Nombre_des_codes_de_produits   FROM dbo.T_Dim_Produit where FamilleProduit_NOM in ('collectif','individuel')
group by TypeOffre_NOM ;