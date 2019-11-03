package pl.odyssey.universe.model.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import javax.validation.constraints.Size;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

@Entity
@Table(name = "solar_system")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class SolarSystemDO {

    @Id
    private String id;

    @Column(name = "name")
    private String name;

//    @Size(min = 16, max = 16)
    @OneToMany(mappedBy = "solarSystem", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<PlanetDO> planetList = new ArrayList<>();

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "constellation_id")
    private ConstellationDO constellation;

    public void addPlanet(PlanetDO planet) {
        planetList.add(planet);
        planet.setSolarSystem(this);
    }

    // FIXME: 03.11.2019 not planned to be used
    public void removePlanet(PlanetDO planet) {
        planetList.remove(planet);
        planet.setSolarSystem(null);
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof SolarSystemDO)) return false;
        SolarSystemDO that = (SolarSystemDO) o;
        return id.equals(that.id) &&
                name.equals(that.name) &&
                constellation.equals(that.constellation);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, constellation);
    }
}
