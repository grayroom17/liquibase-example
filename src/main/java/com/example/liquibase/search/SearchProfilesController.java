package com.example.liquibase.search;

import com.example.liquibase.profile.ProfileRepository;
import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.stream.Collectors;

@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
@RequiredArgsConstructor
@RestController
@RequestMapping(value = "/api/profiles")
public class SearchProfilesController {

    ProfileRepository profileRepository;

    @GetMapping("/")
    public ResponseEntity<List<ProfileDto>> getMainPage() {
        List<ProfileDto> profileList = profileRepository.findAll().stream()
                .map(ProfileDto::from)
                .toList();
        return ResponseEntity.ok(profileList);
    }

}
