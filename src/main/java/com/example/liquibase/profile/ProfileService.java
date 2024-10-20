package com.example.liquibase.profile;

import com.example.liquibase.breed.BreedRepository;
import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import org.springframework.stereotype.Service;

@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
@RequiredArgsConstructor
@Service
public class ProfileService {

    ProfileRepository profileRepository;
    BreedRepository breedRepository;

    public void addProfile(NewProfileRequest newProfileRequest) {
        Profile profile = new Profile();
        profile.setName(newProfileRequest.getName());
        profile.setHeight(newProfileRequest.getHeight());
        profile.setWeight(newProfileRequest.getWeight());
        profile.setDescription(newProfileRequest.getDescription());
        profile.setImageUrl("/img/sample.jpg");
        if (newProfileRequest.getBreedId() != null) {
            profile.setBreed(breedRepository.findById(newProfileRequest.getBreedId())
                    .orElse(null));
        }
        profileRepository.save(profile);
    }

}
