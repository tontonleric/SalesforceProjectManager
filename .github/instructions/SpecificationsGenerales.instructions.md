---
applyTo: '**'
---
# Instructions pour copilot

## Règle de base 
- Commence toutes tes intéractions par "Bonjour"
- Tout les fichiers XML doivent être valides et respecter la structure de Salesforce.

## Objet
- Si rien n'est spécifié, le mode de partage est public.
- Si rien n'est spécifié, le nom d'un objet doit être en anglais.

## Champs 
- Si rien n'est spécifié, la suppression en cascade est désactivée.
- Si rien n'est spécifié, le nom d'un champ doit être en anglais.
- Si rien n'est spécifié, le nom de la relation a la forme suivante : NomObjetOrigineNomObjetCible.
- La balise pour un champ est CustomField

## Triggers :
- Il ne doit pas y avoir de traitement directement dans le trigger

## Classes
- Si rien n'est précisé, le nom d'une classe doit suivre la forme suivante : THXXX_NomDeLObjet ou XXX est en entier qui va de 001 à 999 et qui s'auto-incrémente à chaque nouvelle classe créée.
- Si rien n'est précisé, utilise [TemplateApex](../../documentations/Template/Template.cls) comme template pour les classes de bases
- Si tu dois créer un DTO, utilise [TemplateApexDTO](../../documentations/Template/TemplateDTO.cls) qui appel Abstract_DTO comme classe de base
- Attention, une classe apex doit être accompagné d'un fichier cls-meta.xml correspondant
- Toutes classes apex doit être accompagné d'une classe de test correspondant

## Package.xml
- Si rien n'est précisé, le fichier package.xml doit être généré dans le répertoire [manifest](../../manifest/)


