# Comment faire fonctionner le serveur MCP, qui est livré avec la ligne de commande Salesforce et le chat de GitHub Copilot ?

Depuis peu, Salesforce a mis à notre disposition un serveur MCP. Il permet à l’agent IA d’exploiter la ligne de commande de Salesforce. On va voir avec cette rapide entrée en matière comment installer le serveur et comment en tirer parti dans un Visual Studio Code accompagné de copilot. 

Attention, je vais partir du principe que vous connaissez déjà plusieurs notions, soit la ligne de commande, la terminale, Visual Studio Code et Salesforce. Il est tout à fait possible de suivre ce tutoriel avec un compte Github Copilot gratuit.

## Étape 1 : Configuration des outils pour la ligne de commande Salesforce

On va d'abord s'occuper de l'installation de la ligne de commande et du serveur MCP. Avant de commencer, il est crucial de vous assurer que vous avez bien installé Node.js sur votre ordinateur. Pour cela, on exécute la commande suivante :
<pre><code>node --version/n
> v22.15.1</code></pre>
Si, après avoir entré la commande, vous obtenez uniquement un message d’erreur, cela signifie que Node.js n’est pas installé. Si vous obtenez un numéro de version similaire, vous pouvez continuer.

Ensuite, on s’assure que npm est correctement installé :
<pre><code>npm --version/n
> 10.9.2</code></pre>
De la même façon, si la commande ne retourne aucune information ou affiche une erreur, cela signifie que NPM n’est pas installé. Si vous obtenez un numéro de version similaire, vous pouvez continuer.

Ensuite, on va installer la ligne de commande Salesforce :
<pre><code>npm install --global @salesforce/cli</code></pre>
Si Node.js et NPM ont été correctement configurés, la commande suivante devrait s’exécuter sans encombre. Vous pouvez vérifier que la ligne de commande Salesforce est bien installée en tapant :
<pre><code>sf --version/n
> @salesforce/cli/2.96.4 linux-x64 node-v22.15.1</code></pre>

Pour finir, on va installer le serveur MCP :
<pre><code>npm install --global @salesforce/mcp</code></pre>


## Étape 2 : Configuration de visual studio code.

Ensuite, on va s'occuper de la configuration de Visual Studio Code. On va installer les extensions nécessaires pour que le serveur MCP fonctionne correctement avec Visual Studio Code et GitHub Copilot, mais aussi les extensions pour Salesforce.

On commence par installer l'extension Github Copilot. Pour cela, dans Visual Studio Code, allez dans l'onglet des extensions (icône de blocs empilés sur la barre latérale gauche). Recherchez "GitHub Copilot" et installez l'extension
![Installation de l'extension Github Copilot](<Screencap/Etape001.png>)

Ensuite, on va installer l'extension Salesforce Extension Pack. Toujours dans l'onglet des extensions, recherchez "Salesforce Extension Pack (expanded)" et installez l'extension. Cette suite logicielle comprend divers outils pratiques pour manipuler Salesforce, notamment la ligne de commande Salesforce.
![Installation de l'extension Salesforce Extension Pack](<Screencap/Etape002.png>)


## Étape 3 : Générer et configurer un projet Salesforce

On quitte temporairement Visual Studio Code pour revenir dans le terminal. On va maintenant créer un projet Salesforce. Pour cela, on va utiliser la ligne de commande Salesforce que l'on a installée précédemment.
<pre><code>sf project generate --name TestMCP</code></pre>
Cette commande va créer un nouveau projet Salesforce dans un répertoire nommé "TestMCP". Vous pouvez choisir un autre nom si vous le souhaitez. Une fois que vous aurez créé votre projet, vous pourrez y accéder à partir de l’éditeur de code Visual Studio en tapant la commande suivante :
<pre><code>code TestMCP</code></pre>

On revient à Visual Studio Code. Cette fois, on va configurer le projet afin qu’il fonctionne avec le serveur MCP. Pour ce faire, nous allons générer un fichier de paramétrage nommé « mcp.json » et l’enregistrer dans le dossier « .setup » du projet.
<pre><code>{/n
  "servers": {/n
    "salesforce": {/n
      "type": "stdio",/n
      "command": "npx",/n
      "args": ["-y", "@salesforce/mcp", "--orgs", "DEFAULT_TARGET_ORG", "--toolsets", "all"]/n
    }/n
  }/n
}</code></pre>

Il ne reste plus qu'à démarrer le serveur MCP. Pour cela, on utilise le raccourci ctrl+shift+p pour ouvrir la palette de commandes de Visual Studio Code et on tape "MCP: List Server". Vous devriez voir le serveur Salesforce que vous venez de configurer avec la mention stopped à côté. Cliquez une première fois sur le nom du serveur et vous devriez voir un deuxième menu apparaitre. Cliquez sur "Start Server". Le serveur devrait démarrer et vous devriez voir le message "Server started" dans la console de Visual Studio Code.

![Menu de sélection du serveur MCP](<Screencap/Etape003.png>)
![Message de démarrage du serveur MCP](<Screencap/Etape004.png>)

## Étape 4 : 

À partir de ce point, vous pouvez utiliser GitHub Copilot pour interagir avec le serveur MCP. Passez le tchat GitHub Copilot en mode « agent », puis demandez-lui des renseignements sur la manière dont il peut communiquer avec votre instance Salesforce. Attention, il est possible que Github Copilot ne détecte pas immédiatement le serveur MCP. Dans ce cas, vous pouvez essayer de redémarrer Visual Studio Code.




