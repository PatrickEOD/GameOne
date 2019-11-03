package pl.odyssey.universe.model.domain;

import com.sun.xml.internal.bind.v2.TODO;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "planet")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class PlanetDO {

    @Id
    private String id;

    @Column(name = "name")
    private String name;

    @Column(name = "fields")
    private int fields;

    @Column(name = "metal_index")
    private double metalIndex;

    @Column(name = "crystal_index")
    private double crystalIndex;

    @Column(name = "deuter_index")
    private double deuterIndex;

//    TODO change type to object representing user, add many-to-one relation
    @Column(name = "owner")
    private String owner;

//    TODO change type to object representing garbage field, add one-to-one relation
    @Column(name = "garbage_field")
    private String garbageField;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "solar_system_id")
    private SolarSystemDO solarSystem;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof PlanetDO)) return false;
        PlanetDO planetDO = (PlanetDO) o;
        return id.equals(planetDO.id) &&
                fields == planetDO.fields &&
                metalIndex == planetDO.metalIndex &&
                crystalIndex == planetDO.crystalIndex &&
                deuterIndex == planetDO.deuterIndex &&
                owner.equals(planetDO.owner) &&
                garbageField.equals(planetDO.garbageField) &&
                solarSystem.equals(planetDO.solarSystem);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, fields, metalIndex, crystalIndex, deuterIndex, owner, garbageField, solarSystem);
    }
}
