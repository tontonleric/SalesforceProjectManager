# Création d'un prompt et d'instruction permettant la génération de métadonnées Salesforce par Copilot

Bonjour à tous et à toutes, dans cet article, nous allons voir comment créer un prompt et des instructions permettant à GitHub Copilot de générer des métadonnées Salesforce. Ce poste fait suite à un précédent article qui expliquait comment faire fonctionner le serveur MCP de Salesforce avec Visual Studio Code et GitHub Copilot.

À partir de ce point, je vais présumer que votre environnement de travail est correctement configuré. C'est-à-dire :
    - Node.js et npm doivent être installé.
    - La CLI Salesforce et le serveur MCP de Salesforce doivent être installés.
    - Visual Studio Code doit être installé ainsi que les plugins pour Salesforce et Github Copilot.


## Phase 1 : Création des instructions

Visual Studio Code permet de créer des instructions qui vont permettre à GitHub Copilot de mieux comprendre ce que l'on attend de lui. Nous allons utiliser ce mécanisme pour deux choses :
    - proposer une définition de chacun des objets personnalisés que l'on souhaite créer
    - amener l'agent à suivre des directives précises dans ce qu'il doit générer.

### Comment créer une instruction dans Visual Studio Code ?

La génération d'instructions dans Visual Studio Code se fait assez facilement. Il suffit d'utiliser le raccourci `Ctrl + Maj + P` pour ouvrir la palette de commande, puis de taper "Chat: New Instructions File..." et de suivre les instructions à l'écran.
![Chat: New Instructions File...](<Image/Image005.png>)

Après avoir exécuté les directives, votre écran affichera un nouveau document intitulé « instructions.md ». Il devrait se présenter sous cette forme :
![Nouveau fichier d’instructions](<Image/Image006.png>)

À partir de là, vous pouvez commencer à rédiger vos instructions. Il est important de bien structurer le fichier pour que l'agent puisse les comprendre facilement.

### Instructions et template Apex

Dans le cadre de mon test, pour représenter un objet personnalisé, j'ai structuré mon fichier de la manière suivante :
![Fichier décrivant un objet](<Image/Image007.png>)

C'est un fichier qui respecte le format Markdown. Le caractère '#' permet de définir différents niveaux de titre et j'utilise le caractère '-' pour créer des listes et des sous-listes d'éléments.

De manière à pousser l'agent à se comporter d'une certaine manière, j'ai ajouté un fichier avec des instructions plus globales. C'est dans ce fichier que je pointe un template de base pour mes classes apex :
![Fichier d'instructions générales](<Image/Image008.png>)

## Phase 2 : Création d'un prompt

### Comment créer un prompt dans Visual Studio Code ?

La génération de prompt dans Visual Studio Code se fait également assez facilement. Il suffit d'utiliser le raccourci `Ctrl + Maj + P` pour ouvrir la palette de commande, puis de taper "Chat: New Prompt File..." et de suivre les instructions à l'écran.
![Chat: New Prompt File... ](<Image/Image009.png>)

Après avoir exécuté les étapes, vous verrez apparaitre sur votre écran un document nommé « prompt.md ». Il aura l’apparence suivante :
![Nouveau fichier de prompt](<Image/Image010.png>)

### Présentation des prompts

Dans le cadre de mon test, j'ai testé deux prompts différents :
    - Le premier se contente de générer toutes les métadonnées attendues
![Génération seul](<Image/Image011.png>)
    - Le second fait la même chose, mais assure aussi le déploiement sur une org, en tirant parti du serveur MCP de Salesforce.
![Génération et Déploiement](<Image/Image012.png>)

## Phase 3 : Premier retour d'expérience

La génération et le déploiement de métadonnées et de classe Apex fonctionnent. Cependant, il faut faire attention à la précision de ce que l'on demande à l'agent. 

Parmi les comportements que j'ai pu observer :
- L'agent a tendance à générer des métadonnées qui ne sont pas valides avec les spécifications
- L'agent a tendance à utiliser d'anciennes versions de la syntaxe XML qui compose les métadonnées que l'on veut déployer sur Salesofrce. Il lui arrive même parfois d'inventer une de ces balises. Attention, il est possible que ce problème soit lié au LLM utilisé par GitHub Copilot. 
— Généralement, une classe Apex se divise en deux fichiers : un fichier « .cls » et un fichier « .cls-meta.xml ». L'agent a tendance à ne générer que le fichier .cls. 

Enfin, on peut laisser l'agent se débrouiller pour corriger les métadonnées générées quand il rencontre une erreur lors du déploiement, mais les messages d'erreurs renvoyés par Salesforce peuvent l'induire facilement en erreur. Il ne faut pas hésiter, dans le prompt, à lui dire de s'arrêter dès qu'il rencontre un problème.

## Phase 4 : Conclusion

Dans l'ensemble, la génération de métadonnées Salesforce par GitHub Copilot fonctionne plus tôt bien. Cependant, il est important de bien structurer les instructions et les prompts pour obtenir des résultats satisfaisants. Il faut aussi être vigilant sur la précision des demandes faites à l'agent. 

## Phase 5 : Ensuite

De mon point de vue, on peut faire évoluer les tests dans plusieurs directions :
- Mettre en opposition différents modèles de LLM : GPT-4.1, Claude 3, Gemini Pro, etc.
- Faire évoluer le prompt pour qu'il gère d'autres types de métadonnées : Flow, LWC, Report, Dashboard, etc.
- Proposer un modèle de données plus complexe et des règles métiers plus avancées.