Cahier des charges : Projet Robot Trader
Introduction
Contexte
Développement d'un robot trader qui utilise les données historiques des cotations boursières, les informations sur les entreprises et les données macroéconomiques pour effectuer des prédictions et exécuter des transactions de manière autonome.
Objectif
L'objectif est de créer un outil fiable et automatisé capable de prendre des décisions d'investissement éclairées en utilisant des algorithmes de prédiction avancés.
Définition du projet
	Le projet envisagé est un système intégré conçu pour optimiser les décisions d'investissement en capitalisant sur la puissance des données et de l'automatisation. Chaque composant, de l'entrepôt de données à l'algorithme de prédiction, joue un rôle crucial et est étroitement lié aux autres pour garantir une prise de décision fluide et éclairée. Ce système holistique permettra non seulement de prédire les mouvements du marché avec précision, mais aussi d'agir rapidement sur ces prédictions pour maximiser les rendements.
![Texte alternatif](Img/Système de BDD.png)

Décomposition du système en composant et processus
Entrepôt de données (Data Warehouse)
L'entrepôt de données vise à centraliser et stocker les données pour une analyse rapide et efficace. Les sources de données principales comprennent les cotations boursières, les informations sur les entreprises et les données macroéconomiques. Pour gérer cet entrepôt, nous utiliserons SQL Server de Microsoft. 
ETL (Extract, Transform, Load)
	L'objectif principal du processus ETL est d'automatiser la collecte, la transformation et le chargement des données dans l'entrepôt de données. Pour cette tâche, nous utiliserons la solution SSIS (SQL Server Integration Services) de Microsoft. Les données seront extraites et mises à jour dans l'entrepôt à une fréquence définie, en fonction de la volatilité du marché et des besoins de l'analyse.
Tableau de bord (Dashboard)
Le tableau de bord fournira une interface visuelle pour l'analyse et le suivi des performances du robot et du marché. Pour cette visualisation, nous utiliserons l'outil Power BI de Microsoft. Les indicateurs clés affichés incluront la rentabilité, l'exactitude des prédictions et le volume de transactions.
Algorithme de prédiction
L'algorithme de prédiction sera conçu pour prédire les mouvements du marché et informer le robot des opportunités de trading. La méthodologie envisagée pourrait être basée sur un apprentissage supervisé ou non supervisé, en utilisant des modèles tels que la régression ou les réseaux de neurones. Le langage de programmation choisi sera Python, en utilisant des frameworks tels que TensorFlow ou Scikit-learn.
Robot
Le robot trader simulé vise à modéliser des transactions boursières basées sur les prédictions de l'algorithme, tout en opérant dans un environnement contrôlé. Plutôt que d'interagir avec de véritables marchés, le robot simule des achats et des ventes de titres en utilisant un budget prédéfini, permettant ainsi de tester et d'affiner les stratégies d'investissement sans risque financier réel.
Basé sur les signaux générés par l'algorithme de prédiction, le robot décidera d'acheter, de vendre ou de conserver des actions. Ces décisions seront enregistrées et reflétées dans le portefeuille simulé, qui évoluera en fonction des conditions de marché modélisées.
Le robot opérera avec un budget prédéfini pour simuler les transactions. Ce budget servira de référence pour évaluer la performance du robot en termes de gains ou de pertes sur la période de simulation.
Il est essentiel de comprendre que, bien que le robot trader simulé puisse fournir des indications précieuses sur la performance d'une stratégie d'investissement, les résultats obtenus dans un environnement simulé peuvent ne pas refléter exactement ce qui se passerait dans des conditions de marché réelles.

Portée du projet
La définition de la portée est essentielle pour cerner les contours de ce projet personnel. Elle permet d'identifier clairement les objectifs à atteindre, les éléments à développer, tout en délimitant les limites de ce qui sera réalisé dans le cadre de cette initiative individuelle.
Données exploiter
Le système traitera principalement trois types de données : les cotations boursières historiques, les informations détaillées sur les entreprises et les données macroéconomiques pertinentes. Toutes ces données seront stockées, traitées et analysées pour fournir des insights précieux.
Données sur les cotations boursières :
-Prix de clôture : Le prix auquel une action a été échangée à la clôture du marché.
-Prix d'ouverture : Le prix auquel une action a été échangée lors de l'ouverture du marché.
-Prix le plus haut et le plus bas : Les prix les plus élevés et les plus bas auxquels une action a été échangée pendant une journée donnée.
-Volume d'échanges : Le nombre d'actions échangées pendant une période donnée.
-Capitalisation boursière : La valeur totale de toutes les actions en circulation d'une entreprise.
-Période : Date et heure de début et de fin
Informations sur les entreprises : 
-Données financières : bilans, comptes de résultats, et déclarations des flux de trésorerie.
-Dividendes : Historique des dividendes versés aux actionnaires.
-Nouveaux contrats/partenariats : Informations sur les nouveaux contrats ou partenariats signés par l'entreprise.
Données Macroéconomiques :
-Taux d'intérêt : Les taux d'intérêt actuels, qui peuvent influencer les marchés boursiers.
-Taux de chômage : Un indicateur du bien-être économique d'un pays.
-Inflation : La mesure de l'augmentation du niveau général des prix des biens et des services.
Fonctionnalités du système
Une plateforme d'entrepôt de données pour le stockage.
Un processus ETL pour l'extraction, la transformation et le chargement des données.
Un tableau de bord pour la visualisation des analyses.
Un algorithme de prédiction pour anticiper les mouvements du marché.
Un robot pour exécuter des transactions simulées basées sur les prédictions.
Livrables
Liste des principaux livrables :
- Entrepôt de données fonctionnel.
- Jobs SSIS quotidiens configurés.
- Tableau de bord Power BI.
- Algorithmes de prédiction développées et testées.
- Un robot trader prêt à être déployé.
4. Spécifications Techniques
Plateformes et Outils :
- SSIS : Pour l'intégration et la transformation des données.
- SQL Server : Comme système de gestion de base de données.
- Power BI : Pour la visualisation des données et la création de rapports.
- Github Project : Pour la gestion du projet.
- Python : Pour le développement des algorithmes.

5. Conclusion

La clarification de la portée du projet aide à maintenir une direction claire et à reconnaître les limites inhérentes à une initiative axée sur la simulation.


