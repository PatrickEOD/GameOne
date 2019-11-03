package pl.odyssey.universe.model.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "universe")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class UniverseDO {

    @Id
    private String id;

    @Column(name = "name")
    private String name;

    @OneToMany(mappedBy = "universe", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<GalaxyDO> galaxyDOList;

    public void addGalaxy(GalaxyDO galaxy) {
        galaxyDOList.add(galaxy);
        galaxy.setUniverse(this);
    }

    public void removeGalaxy(GalaxyDO galaxy) {
        galaxyDOList.remove(galaxy);
        galaxy.setUniverse(null);
    }
}
