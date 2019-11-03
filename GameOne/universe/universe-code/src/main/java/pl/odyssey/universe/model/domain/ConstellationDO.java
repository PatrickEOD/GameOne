package pl.odyssey.universe.model.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.List;
import java.util.Objects;

@Entity
@Table(name = "constellation")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class ConstellationDO {

    @Id
    private String id;

    @Column(name = "name")
    private String name;

    @Column(name = "relative_distance")
    private Long relativeDistance;

    @Column(name = "distance")
    private Long distance;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "galaxy_id")
    private GalaxyDO galaxy;

    @OneToMany(mappedBy = "constellation", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<SolarSystemDO> solarSystemDOList;

    public void addSolarSystem(SolarSystemDO solarSystem) {
        solarSystemDOList.add(solarSystem);
        solarSystem.setConstellation(this);
    }

    // FIXME: 03.11.2019 not planned to be used
    public void removeSolarSystem(SolarSystemDO solarSystem) {
        solarSystemDOList.remove(solarSystem);
        solarSystem.setConstellation(null);
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof ConstellationDO)) return false;
        ConstellationDO that = (ConstellationDO) o;
        return id.equals(that.id) &&
                name.equals(that.name) &&
                relativeDistance.equals(that.relativeDistance) &&
                distance.equals(that.distance) &&
                galaxy.equals(that.galaxy);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, relativeDistance, distance, galaxy);
    }
}
