---
applyTo: '**'
description: Definition de l'objet personnalisé projet
---

# Spécification :
- Label Français : Projet | Projets
- Label Anglais : Project | Projects
- Féminin : Oui
- Label API : Project__c

# Description :
Cet objet représente un objet réalisé pour un compte spécifique. Il possède un statut, une description, des champs dates permettants de stocker les dates de début et de fin réelle et estimé.

# Champs :
- Id :
    - Nom api : Id
    - Description : C'est l'Id Salesforce du projet
    - Peut être vide : non
    - Peut être modifier : non
    - Type : Id
- Nom du projet :
    - Nom api : Name
    - Description : Ce champ permet de stocker le nom du projet
    - Type : Texte
    - Taille : 80
    - Peut être vide : non
    - Peut être modifier : non
- Statut :
    - Nom api : Status__c
    - Description : Ce champ permet de stocker le statut du projet
    - Type : Liste de valeur
    - Peut être vide : non
    - Peut être modifier : oui
    - Valeur :
        - Non démarré
        - En cours
        - Terminé
    - Règle métier :
        - Si le projet se trouve au statut "Non démarré", il ne peut passer qu'au statut "En cours".
        - Si le projet se trouve au statut "En cours", il ne peut passer qu'au statut "Terminé".
        - Si le projet se trouve au statut "Terminé", il ne peut pas changer de statut.
- Date de création estimée :
    - Nom api : EstimatedStartDate__c
    - Description : Ce champ permet de stocker la date de début estimée du projet
    - Type : Date
    - Peut être vide : non
    - Peut être modifier : non
- Date de création réelle :
    - Nom api : ActualStartDate__c
    - Description : Ce champ permet de stocker la date de début réelle du projet
    - Type : Date
    - Peut être vide : oui
    - Peut être modifier : oui
- Date de fin estimée :
    - Nom api : EstimatedEndDate__c
    - Description : Ce champ permet de stocker la date de fin estimée du projet
    - Type : Date
    - Peut être vide : non
    - Peut être modifier : non
- Date de fin réelle :
    - Nom api : ActualEndDate__c
    - Description : Ce champ permet de stocker la date de fin réelle du projet
    - Type : Date
    - Peut être vide : oui
    - Peut être modifier : oui
- Client :
    - Nom api : Account__c
    - Description : Ce champ permet de stocker le client du projet
    - Type : Recherche
    - Objet cible : Account
    - Peut être vide : non
    - Peut être modifier : oui
    - Nom de la relation : Projets

**IGNORE** # Automatisation :
**IGNORE** - Lors de la création d'un projet, le statut est automatiquement défini à "Non démarré".
**IGNORE** - Lors de la modification du statut d'un projet, si le statut est modifié à "En cours", la date de début réelle est automatiquement définie à la date actuelle.
**IGNORE** - Lors de la modification du statut d'un projet, si le statut est modifié à "Terminé", la date de fin réelle est automatiquement définie à la date actuelle.
