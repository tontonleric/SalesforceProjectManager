/**
 * @description : Abstract class for web service operations.
 * This class defines the contract for web service implementations in the application.
 * @author : [ Eric Wartelle ]
 * @version : 1.0
 * @createdDate : 2025-09-20
 * @lastModifiedDate : 2025-09-20
 */
public abstract class Abstract_Webservice {
    // Attributs of the class Abstract_Webservice
    private static final String LOG_CLASS_NAME = 'Abstract_Webservice';

    // Constructor of the class Abstract_Webservice
    /**
     * @description : Constructor of the Abstract_Webservice class.
     */
    public Abstract_Webservice() {
        System.debug(LoggingLevel.INFO, LOG_CLASS_NAME + ' - Constructor start');

        System.debug(LoggingLevel.INFO, LOG_CLASS_NAME + ' - Constructor stop');
    }

    // Methods of the class Abstract_Webservice
    public abstract void execute();

}