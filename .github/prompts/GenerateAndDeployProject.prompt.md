---
mode: agent
model: GPT-4.1
description : génère toutes les metadata et les deploie
tools: ['changes', 'codebase', 'editFiles', 'extensions', 'fetch', 'findTestFiles', 'githubRepo', 'new', 'openSimpleBrowser', 'problems', 'readCellOutput', 'runCommands', 'runNotebooks', 'runTasks', 'runTests', 'search', 'searchResults', 'terminalLastCommand', 'terminalSelection', 'testFailure', 'updateUserPreferences', 'usages', 'vscodeAPI', 'salesforce']
---
Voici les étapes que tu dois suivre :
- Etape 1 :
    - Génère les fichiers avec l'extension object-meta.xml pour chaque objet
- Etape 2 :
    - Génère les fichiers avec l'extension field-meta.xml pour chaque champs 
- Etape 3 :
    - Si nécessaire génère le trigger et la classe apex nécessaire pour les automatisations nécessaires.
- Etape 4 :
    - Génère un fichier package.xml qui va contenir toutes les metadonnées que tu as génèré.
- Etape 5 : 
    - Déploie les metadatas générées à l'etape 1 sur l'org à laquelle je suis connecté.
- Etape 6 :
    - Si tu as rencontrés une erreur à l'étape 5, tu analyses l'erreur, tu fais un rapport et tu t'arrêtes.
