package com.example.openapi;

import java.util.List;

import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class BookConfig {
    
    @Bean
    CommandLineRunner commandLineRunner(BookRepository repository) {
        return args -> {

            Book book = new Book("The Great Spring Boot",
                                 "Frog Frogsen");
            Book book2 = new Book("The Great Spring Boot 2",
                                 "Frog Frogsen");
            Book book3 = new Book("The Great Spring Boot 3",
                                 "Frog Frogsen");

            repository.saveAll(List.of(book,book2,book3));
                                
        };
    }
}
