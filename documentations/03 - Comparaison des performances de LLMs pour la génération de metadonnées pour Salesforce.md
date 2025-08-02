# Performance de chacun des LLMs fournie avec Github Copilot pour la génération de métadonnées Salesforce :

# Introduction

## LLMs analysés

L'objectif de cet exercice est de comparer les LLMs suivants, qui sont disponibles à travers Github Copilot et qui sont recommandés pour le mode agent :
- GPT-4.1
- GPT-4o
- Claude Sonnet 3.5
- Claude Sonnet 3.7
- Claude Sonnet 4
- Gemini 2.5 Pro (Preview)
- o4-mini (Preview)

Attention, même si tous ces LLMs sont suggérés pour le mode Agent, Github ne les recommande pas toujours pour les mêmes besoins, les mêmes fonctions

## Test

Le test est simple :
- Je pars d'un projet Github que j'ai commencé à construire pour évaluer la capacité de Copilot à générer des métadonnées pour Salesforce.
- Dans le projet [Salesforce Project Manager](https://github.com/tontonleric/SalesforceProjectManager), on s'assure que les répertoires 'force-app' et 'manifest' sont bien vides.
- On exécute le prompt : GenerateMetadata

On va chercher à évaluer chaque LLM sur les 5 points suivant :
- Est-ce que l'agent a réussi à exécuter l'ensemble du prompt en une fois ?
- Combien de temps est-ce qu'il a mis pour générer le prompt ?
- Est-ce qu'il a respecté la structure du projet ?
- Est-ce que l'on peut déployer les métadonnées générées immédiatement ?
- Est-ce que le code respecte les guidelines ?

# Comparatif

## GPT-4.1

### Informations fournies par la documentation de Github :
Domaine d’application : codage et rédaction généralistes.
Excelle dans : complétion de code rapide et précise, ainsi qu’en explications.

### Constat :
- Est-ce que l'agent a réussi à exécuter l'ensemble du prompt en une fois ?
  - Oui
- Combien de temps est-ce qu'il a mis pour générer le prompt ?
  - 1min30.
- Est-ce qu'il a respecté la structure du projet ?
  - Oui
- Est-ce que l'on peut déployer les métadonnées générées immédiatement ?
  - Non
- Est-ce que le code respecte les guidelines ?
  - Il n'a pas respecté le template.
  - Il manque le fichier XML qui accompagne le fichier cls.
  - Pour la classe de test, il ne teste pas le résultat à l'aide de méthode de type AssertEquals.

### Conclusion :
  - Avec GPT-4.1, Copilot génère les données rapidement ( meilleur temps du test ). Il faut néanmoins contrebalancer ça par le travail à fournir pour rendre ce qu'il a généré utilisable.

## GPT-4o

### Informations fournies par la documentation de Github :
Domaine d’application : codage et rédaction généralistes
Excelle dans : complétions rapides et compréhension des entrées visuelles ( traduction, il peut analyser des schémas )

### Constat :
- Est-ce que l'agent a réussi à exécuter l'ensemble du prompt en une fois ?
  - Non.
- Combien de temps est-ce qu'il a mis pour générer le prompt ?
  - 4min. Il a passé beaucoup de temps pour valider les fichiers xml
- Est-ce qu'il a respecté la structure du projet ?
  - Oui
- Est-ce que l'on peut déployer les métadonnées générées immédiatement ?
  - Non
- Est-ce que le code respecte les guidelines ?
  - Il n'a pas créé la classe de test correspondant à la classe apex.
  - Il a bien généré un trigger et une classe Apex, mais il a mis le traitement directement dans le trigger.

### Conclusion :
  - Plus lent que GPT-4.1 et moins respectueux des consignes, il faut pousser l'utilisation sur de la complétion de code, mais je ne le recommanderais pas en mode Agent. En tout cas, je pense qu'il faut éviter de s'en servir pour des cas semblables à mon cas de test.
  - Il perd beaucoup de temps à corriger un problème de validation de structures XML ce qui n'est pas nécessaire dans le cas de Salesforce.

## Claude Sonnet 3.5

### Informations fournies par la documentation de Github :
Domaine d’application :	Aide rapide pour les tâches simples
Excelle dans : Réponses rapides pour le code, la syntaxe et la documentation

### Constat :
- Est-ce que l'agent a réussi à exécuter l'ensemble du prompt en une fois ?
  - Non.
- Combien de temps est-ce qu'il a mis pour générer le prompt ?
  - 3min30
- Est-ce qu'il a respecté la structure du projet ?
  - Oui
- Est-ce que l'on peut déployer les métadonnées générées immédiatement ?
  - Non
- Est-ce que le code respecte les guidelines ?
  - Il peut suivre le modèle ou non (TriggerHandler vs Classe de test du trigger handler).
  - La classe de test respecte les recommandations d'usage.

### Conclusion :
  - Même si Claude Sonnet 3.5 est suggéré pour le mode Agent, je ne le recommande pas pour des cas similaires à mon cas de test.
  - GPT-4o veut à tout prix corriger les erreurs de validation XML. De son côté, Claude Sonnet 3.5 les détecte aussi, mais il indique cependant que ces erreurs ne bloqueront pas le déploiement (c’est le cas dans la réalité).

## Claude Sonnet 3.7

### Informations fournies par la documentation de Github :
Domaine d’application : Raisonnement approfondi et débogage
Excelle dans : Raisonnement structuré à travers de grandes bases de code complexes

### Constat :
- Est-ce que l'agent a réussi à exécuter l'ensemble du prompt en une fois ?
  - Oui 
- Combien de temps est-ce qu'il a mis pour générer le prompt ?
  - 6min30
- Est-ce qu'il a respecté la structure du projet ?
  - Oui
- Est-ce que l'on peut déployer les métadonnées générées immédiatement ?
  - Oui
- Est-ce que le code respecte les guidelines ?
  - Oui.
  
### Conclusion :
  - C'est le plus long, mais le plus satisfaisant en termes de génération de métadonnées.
  - Comme il trace chacune de ses actions / réflexions, il est hyper simple à superviser.
  - N. B. : Il a pris tellement de temps que Copilot m'a proposé d'arrêter pour améliorer le prompt.

## Claude Sonnet 4

### Informations fournies par la documentation de Github :
Domaine d'application :	Raisonnement approfondi et débogage
Excelle dans : Performance et praticité, parfaitement équilibrée pour les workflows

### Résultat :
- Est-ce que l'agent a réussi à exécuter l'ensemble du prompt en une fois ?
  - Oui. 
- Combien de temps est-ce qu'il a mis pour générer le prompt ?
  - 4min
- Est-ce qu'il a respecté la structure du projet ?
  - Oui.
- Est-ce que l'on peut déployer les métadonnées générées immédiatement ?
  - Non.
- Est-ce que le code respecte les guidelines ?
  - Oui.

### Conclusion :
  - Il est plus rapide que Claude Sonnet 3.7, mais génère des métadonnées avec quelques erreurs.

## Gemini 2.5 Pro (Preview)

### Informations fournies par la documentation de Github :
Domaine d’application :	Raisonnement approfondi et débogage
Excelle dans : Génération de code complexe, débogage et workflows

### Résultat :
- Est-ce que l'agent a réussi à exécuter l'ensemble du prompt en une fois ?
  - Non. Il semble avoir ignoré les instructions et m'a demandé directement les informations.
- Combien de temps est-ce qu'il a mis pour générer le prompt ?
  - N/A
- Est-ce qu'il a respecté la structure du projet ?
  - N/A
- Est-ce que l'on peut déployer les métadonnées générées immédiatement ?
  - N/A
- Est-ce que le code respecte les guidelines ?
  - N/A

### Conclusion :
Je n'ai pas de conclusion à faire. Je ne suis pas certain si le comportement est attendu ou si le problème vient du fait qu’il s’agisse d’une version d’essai.

## o4-mini (Preview)

### Informations fournies par la documentation de Github :
Domaine d’application : Raisonnement approfondi et débogage
Excelle dans : résolution de problèmes en plusieurs étapes et analyse du code au niveau

### Résultat :
- Est-ce que l'agent a réussi à exécuter l'ensemble du prompt en une fois ?
  - Non. 
- Combien de temps est-ce qu'il a mis pour générer le prompt ?
  - 8 min. J'ai stoppé le traitement avant la fin.
- Est-ce qu'il a respecté la structure du projet ?
  - N/A
- Est-ce que l'on peut déployer les métadonnées générées immédiatement ?
  - N/A
- Est-ce que le code respecte les guidelines ?
  - N/A

### Conclusion :
Je n'ai pas de conclusion à faire. Je ne sais pas si ce comportement est normal, ou si c’est parce que l’application fonctionne avec une version préliminaire.

# Conclusion :
Attention, mes conclusions sont basées sur un test très spécifique. Il est possible que les LLMs se comportent différemment dans d'autres contextes.
- Pour le mode Agent, je recommande Claude Sonnet 3.7 ou Claude Sonnet 4. Si la qualité du résultat est plus importante que le temps de traitement, vous pouvez opter pour Claude Sonnet 3.7 : le résultat est vraiment de qualité. Si vous voulez un bon compromis entre qualité et rapidité, optez pour Claude Sonnet 4.
- GPT-4.1 est le plus rapide, mais il nécessite un travail de correction important pour rendre le résultat utilisable.
- Pour les autres LLMs, je ne les recommande pas pour un cas similaire à mon cas de test.

Dans l'ensemble, je vais surement utiliser GPT-4.1 pour la préparation d'un prompt ou pour la complétion de code. Une fois que le prompt est prêt, je passerais sur Claude Sonnet 3.7 ou Claude Sonnet 4 pour l'exécution.

# Lien important

[SalesforceProjectManager](https://github.com/tontonleric/SalesforceProjectManager)
[AI model comparison](https://docs.github.com/en/copilot/reference/ai-models/model-comparison)


