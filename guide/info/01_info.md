Mini-dictionnaire des tables commerciales

VENTE
Contient les ventes réalisées à des clients. Chaque ligne représente une vente, avec références des produits, quantités, prix, etc.

FACTURECLIENT
Factures émises aux clients pour les ventes. Détaille ce que le client doit payer. Peut être liée à une ou plusieurs lignes de VENTE.

AVOIRFC
Factures d’avoir clients. Sert à corriger ou annuler une facture existante (retour de marchandise, remise, erreur).

PROFORMA
Facture proforma. Document préliminaire envoyé au client avant la vente réelle, souvent pour obtenir un accord ou paiement anticipé.

RISTOURNE
Remises ou réductions accordées après la vente. Par exemple, remise de fin d’année ou ristourne pour gros volume. Peut générer des écritures dans AVOIRFC ou ajuster VENTE.

TRAITE
Titre de paiement entre entreprises. Document signé par le client promettant de payer une somme à une date précise. Relie le créancier (entreprise) et le débiteur (client).

PAIEMENTBON / ORDONNERPAIEMENT
Gestion des paiements effectués ou à effectuer. Pour suivre quels paiements ont été réalisés, via virement, chèque, traite, etc.

FACTUREFOURNISSEUR
Factures reçues des fournisseurs. Equivalent côté achat. Sert à comptabiliser les dettes fournisseurs.

BONDECOMMANDE_CLIENT / BONDECOMMANDE_CLIENT_FILLE
Bons de commande des clients et détails de la commande. Base pour générer une facture et gérer le stock.

MVTSTOCK / MVTSTOCKFILLE
Mouvement de stock. Chaque entrée ou sortie de produit, incluant ventes, retours, transferts internes.

CLIENT / TYPECLIENT
Informations sur les clients et leur classification. Permet de relier ventes, factures et paiements à chaque client.

FOURNISSEUR / TYPEFOURNISSEUR
Informations sur les fournisseurs. Pour gérer achats et factures fournisseurs.

BONDECOMMANDE_CLIENT / BONDECOMMANDE_CLIENT_FILLE
Bons de commande des clients et détails de la commande. Base pour générer une facture et gérer le stock.

BONDE_LIVRAISON
Bon de livraison émis par l’entreprise pour confirmer que les produits ont été livrés au client. Sert de preuve de remise de la marchandise et peut déclencher la facturation. Contient références produits, quantités livrées, date de livraison et destinataire.