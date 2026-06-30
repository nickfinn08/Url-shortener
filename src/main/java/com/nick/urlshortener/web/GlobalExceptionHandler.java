package com.nick.urlshortener.web;

import com.nick.urlshortener.exceptions.ShortUrlNotFoundException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class GlobalExceptionHandler {

    private static final Logger log = LoggerFactory.getLogger(GlobalExceptionHandler.class);

    @ExceptionHandler(ShortUrlNotFoundException.class)
    String handleShortUrlNotFoundException(ShortUrlNotFoundException e) {
        log.error("Short URL not found: {}", e.getMessage());
        return "error/404";
    }

    @ExceptionHandler(Exception.class)
    String handleUnexpectedException(Exception e) {
        log.error("Unexpected server error: {}", e.getMessage(), e);
        return "error/500";
    }
}
