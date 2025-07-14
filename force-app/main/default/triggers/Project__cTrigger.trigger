trigger Project__cTrigger on Project__c (before insert, before update) {
    for(Project__c proj : Trigger.new) {
        if(Trigger.isInsert) {
            proj.Status__c = 'Non démarré';
        }
        if(Trigger.isUpdate) {
            Project__c oldProj = Trigger.oldMap.get(proj.Id);
            if(oldProj.Status__c == 'Non démarré' && proj.Status__c == 'En cours') {
                proj.ActualStartDate__c = Date.today();
            }
            if(oldProj.Status__c == 'En cours' && proj.Status__c == 'Terminé') {
                proj.ActualEndDate__c = Date.today();
            }
            if(oldProj.Status__c == 'Terminé' && proj.Status__c != 'Terminé') {
                proj.Status__c = 'Terminé';
            }
        }
    }
}
