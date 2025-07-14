public with sharing class ProjectStatusHelper {
    public static Boolean isValidStatusTransition(String oldStatus, String newStatus) {
        if(oldStatus == 'Non démarré' && newStatus == 'En cours') return true;
        if(oldStatus == 'En cours' && newStatus == 'Terminé') return true;
        if(oldStatus == newStatus) return true;
        return false;
    }
}
