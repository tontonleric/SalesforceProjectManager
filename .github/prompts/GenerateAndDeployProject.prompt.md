---
mode: agent
model: GPT-4.1
description : créé une scratch org, génère toutes les metadata et les deploie
tools: ['changes', 'codebase', 'editFiles', 'extensions', 'fetch', 'findTestFiles', 'githubRepo', 'new', 'openSimpleBrowser', 'problems', 'readCellOutput', 'runCommands', 'runNotebooks', 'runTasks', 'runTests', 'search', 'searchResults', 'terminalLastCommand', 'terminalSelection', 'testFailure', 'updateUserPreferences', 'usages', 'vscodeAPI', 'salesforce']
---
Voici les étapes que tu dois suivre :
- Etape 1 :
    - Génère les fichiers avec l'extension object-meta.xml pour chaque objet
- Etape 2 :
    - Génère les fichiers avec l'extension field-meta.xml pour chaque champs 
- Etape 3 :
    - Si tu as rencontrés une erreur à l'étapes 2, tu t'arrêtes, tu analyses l'erreur et tu fais un rapport.
    - Si ty y arrives, tu passes à l'étape 4.
- Etape 4 : 
    - Déploie les metadatas générées à l'etape 1 sur l'org à laquelle je suis connecté.
- Etape 5 :
    - Si tu as rencontrés une erreur à l'étape 4, tu analyses l'erreur, tu fais un rapport et tu t'arrêtes.
