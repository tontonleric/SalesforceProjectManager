---
mode: agent
model: GPT-4.1
description : créé une scratch org, génère toutes les metadata et les deploie
tools: ['changes', 'codebase', 'editFiles', 'extensions', 'fetch', 'findTestFiles', 'githubRepo', 'new', 'openSimpleBrowser', 'problems', 'readCellOutput', 'runCommands', 'runNotebooks', 'runTasks', 'runTests', 'search', 'searchResults', 'terminalLastCommand', 'terminalSelection', 'testFailure', 'updateUserPreferences', 'usages', 'vscodeAPI', 'salesforce']
---
Voici les étapes que tu dois suivre :
- Etape 1 : Essaie de créer une scratch org en utilisant le devub OrgPerso1 :
    - Si tu rencontres une erreur, tu t'arrêtes, tu analyses l'erreur et tu fais un rapport.
    - Si ty y arrives, tu passes à l'étape 2.
- Etape 2 : Génére toutes les metadata nécessaire.
    - Si tu rencontres une erreur, tu t'arrêtes, tu analyses l'erreur et tu fais un rapport.
    - Si ty y arrives, tu passes à l'étape 2.
- Etape 3 : Déploie les metadatas générées à l'etape 2 sur la scratch org généré à l'étape 1.
    - Si tu rencontres une erreur, tu analyses l'erreur et tu fais un rapport.
