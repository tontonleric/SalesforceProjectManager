---
applyTo: '**'
description: Definition de l'objet personnalisé affectation
---

# Spécification :
- Label Français : Affectation | Affectations
- Label Anglais : Assignment | Assignments
- Féminin : Oui
- Label API : Assignment__c

# Description :
Cet objet représente l'affectation d'un collaborateur à un projet. Il possède une date de début, une date de fin.

# Champs :
- Id :
    - Nom api : Id
    - Description : C'est l'Id Salesforce de l'affectation
    - Peut être vide : non
    - Peut être modifier : non
    - Type : Id
- Collaborateur :
    - Nom api : Collaborator__c
    - Description : Ce champ permet de stocker le collaborateur affecté au projet
    - Type : Lookup
    - Référence à : Contact
    - Relation label : Collaborateur
    - Relation nom : Collaborateur
    - Peut être vide : non
    - Peut être modifier : non
- Projet :
    - Nom api : Project__c
    - Description : Ce champ permet de stocker le projet auquel le collaborateur est affecté
    - Type : Lookup
    - Référence à : Project__c
    - Relation label : Projet
    - Relation nom : Projet
    - Peut être vide : non
    - Peut être modifier : non
- Date de début :
    - Nom api : StartDate__c
    - Description : Ce champ permet de stocker la date de début de l'affectation
    - Type : Date
    - Peut être vide : non
    - Peut être modifier : non
- Date de fin :
    - Nom api : EndDate__c
    - Description : Ce champ permet de stocker la date de fin de l'affectation
    - Type : Date
    - Peut être vide : oui
    - Peut être modifier : oui