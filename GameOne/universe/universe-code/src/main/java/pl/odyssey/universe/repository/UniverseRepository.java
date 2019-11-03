package pl.odyssey.universe.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.odyssey.universe.model.domain.UniverseDO;

import java.util.Optional;

@Repository
public interface UniverseRepository extends JpaRepository<UniverseDO, String> {

    Optional<UniverseDO> getById(String id);
}
