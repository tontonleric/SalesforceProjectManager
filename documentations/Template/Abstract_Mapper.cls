/**
 * @description This is an abstract class that defines the contract for mappers in the application.
 * It provides methods to map between SObject entities and Data Transfer Objects (DTOs).
 * 
 */
public abstract class Abstract_Mapper {
    // Attributs of the class Abstract_Mapper
    private static final String LOG_CLASS_NAME = 'Abstract_Mapper';

    // Constructor of the class Abstract_Mapper
    public Abstract_Mapper() {
        System.debug(LoggingLevel.INFO, LOG_CLASS_NAME + ' - Constructor start');

        System.debug(LoggingLevel.INFO, LOG_CLASS_NAME + ' - Constructor stop');
    }

    // Methods of the class Abstract_Mapper
    public abstract Abstract_DTO mapToDTO(SObject entity);
    public abstract SObject mapToEntity(Abstract_DTO dto);
}