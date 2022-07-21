package com.example.openapi.us2.exceptions;

/**
 * Exception type when invalid schema instance is encountered.
 */
public class InvalidSchemaInstanceException extends RuntimeException {

    public InvalidSchemaInstanceException(String message, Throwable ex) {
        super(message, ex);
    }

    public InvalidSchemaInstanceException(String message) {
        super(message);
    }

    public InvalidSchemaInstanceException(Throwable ex) {
        super(ex);
    }

}
