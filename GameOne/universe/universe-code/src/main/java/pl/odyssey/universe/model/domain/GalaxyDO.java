package pl.odyssey.universe.model.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.List;
import java.util.Objects;

@Entity
@Table(name = "galaxy")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class GalaxyDO {

    @Id
    private String id;

    @Column(name = "name")
    private String name;

    @Column(name = "black_hole_index")
    private Double blackHoleIndex;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "universe_id")
    private UniverseDO universe;

    @OneToMany(mappedBy = "galaxy", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<ConstellationDO> constellationDOList;

    public void addConstellation(ConstellationDO constellation) {
        constellationDOList.add(constellation);
        constellation.setGalaxy(this);
    }

    // FIXME: 03.11.2019 not planned to be used
    public void removeConstellation(ConstellationDO constellation) {
        constellationDOList.remove(constellation);
        constellation.setGalaxy(null);
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if(!(o instanceof GalaxyDO)) return false;
        GalaxyDO galaxyDO = (GalaxyDO) o;
        return id != null &&
                id.equals(galaxyDO.id) &&
                name.equals(galaxyDO.name) &&
                blackHoleIndex.equals(galaxyDO.blackHoleIndex) &&
                universe.equals(galaxyDO.universe);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, blackHoleIndex, universe);
//        return 31;
    }
}
