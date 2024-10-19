package com.example.liquibase.breed;

import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
@RequiredArgsConstructor
@RestController
@RequestMapping(value = "/api/breeds")
public class BreedController {

    BreedRepository breedRepository;

    @GetMapping("/")
    public ResponseEntity<List<Breed>> getBreeds() {
        return ResponseEntity.ok(breedRepository.findAll());
    }

}
