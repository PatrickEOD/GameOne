package pl.odyssey.universe.service;

import org.springframework.stereotype.Service;
import pl.odyssey.universe.repository.UniverseRepository;

@Service
public class UniverseService {

    private final UniverseRepository universeRepository;


    public UniverseService(UniverseRepository universeRepository) {
        this.universeRepository = universeRepository;
    }

    public Universe getUniverseById(String id) {
        
    }
}
