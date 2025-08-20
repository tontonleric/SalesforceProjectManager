/**
 * @description : This is an abstract class that serves as a base for Data Transfer Objects (DTOs).
 * It can be extended by other DTO classes to provide common functionality or properties.
 * @author : [ Eric Wartelle ]
 * @version : 1.0
 * @createdDate : 2025-08-17
 * @lastModifiedDate : 2025-08-17
 */
public abstract class Abstract_DTO {
    // Attributs of the class Abstract_DTO
    private static final String LOG_CLASS_NAME = 'Abstract_DTO';

    // Constructor of the class Abstract_DTO
    /**
     * @description : Constructor of the Abstract_DTO class.
     */
    public Abstract_DTO() {
        System.debug(LoggingLevel.INFO, LOG_CLASS_NAME + ' - Constructor start');

        System.debug(LoggingLevel.INFO, LOG_CLASS_NAME + ' - Constructor stop');
    }

    // Methods of the class Abstract_DTO
    public abstract boolean isValid();
}