/**
 * @description This is an abstract class that defines the contract for mappers in the application.
 * It provides methods to map between SObject entities and Data Transfer Objects (DTOs).
 * @author : [ Eric Wartelle ]
 * @version : 1.0
 * @creationtDate : 2025-09-19
 * @lastModifiedDate : 2025-09-20
 */
public abstract class Abstract_Mapper {
    // Attributs of the class Abstract_Mapper
    private static final String LOG_CLASS_NAME = 'Abstract_Mapper';

    // Constructor of the class Abstract_Mapper
    /**
     * @description Constructor of the Abstract_Mapper class.
     */
    public Abstract_Mapper() {
        System.debug(LoggingLevel.INFO, LOG_CLASS_NAME + ' - Constructor start');

        System.debug(LoggingLevel.INFO, LOG_CLASS_NAME + ' - Constructor stop');
    }

    // Methods of the class Abstract_Mapper
    public abstract Abstract_DTO generateDTO();
    public abstract SObject generateSObject();
}