\connect universe

CREATE SCHEMA AUTHORIZATION interstellar;

CREATE TABLE universe
(
    id character varying(255) COLLATE pg_catalog."default" NOT NULL,
    name character varying(255) COLLATE pg_catalog."default",
    CONSTRAINT universe_pkey PRIMARY KEY (id)
);
-----------------------------------------Universum 01------------------------------------------------------------------
INSERT INTO universe (id, name) VALUES ('UNI-01', 'Spiral');

CREATE TABLE galaxy
(
    id character varying(255) COLLATE pg_catalog."default" NOT NULL,
    black_hole_index double precision,
    name character varying(255) COLLATE pg_catalog."default",
    universe_id character varying(255) COLLATE pg_catalog."default",
    CONSTRAINT galaxy_pkey PRIMARY KEY (id),
    CONSTRAINT fkiwodd35eodwf148i5evspkw42 FOREIGN KEY (universe_id)
        REFERENCES universe (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);

-----------------------------------------Universum 01------------------------------------------------------------------
INSERT INTO galaxy (id, black_hole_index, name, universe_id) VALUES ('GAL-001', 0.03, 'Comet Galaxy', 'UNI-01');
INSERT INTO galaxy (id, black_hole_index, name, universe_id) VALUES ('GAL-002', 0.05, 'Andromeda Galaxy', 'UNI-01');
INSERT INTO galaxy (id, black_hole_index, name, universe_id) VALUES ('GAL-003', 0.02, 'Black Eye Galaxy', 'UNI-01');

CREATE TABLE constellation
(
    id character varying(255) COLLATE pg_catalog."default" NOT NULL,
    distance bigint,
    name character varying(255) COLLATE pg_catalog."default",
    relative_distance bigint,
    galaxy_id character varying(255) COLLATE pg_catalog."default",
    CONSTRAINT constellation_pkey PRIMARY KEY (id),
    CONSTRAINT fkmchemmj0bllui149mlpgo4gvy FOREIGN KEY (galaxy_id)
        REFERENCES galaxy (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
-----------------------------------------Universum 01------------------------------------------------------------------
INSERT INTO constellation (id, distance, name, relative_distance, galaxy_id) VALUES ('CON-0001', 200, 'Horn Constellation', 150, 'GAL-001');
INSERT INTO constellation (id, distance, name, relative_distance, galaxy_id) VALUES ('CON-0002', 320, 'Grizzly Constellation', 100, 'GAL-001');
INSERT INTO constellation (id, distance, name, relative_distance, galaxy_id) VALUES ('CON-0003', 250, 'Boar Constellation', 140, 'GAL-002');
INSERT INTO constellation (id, distance, name, relative_distance, galaxy_id) VALUES ('CON-0004', 200, 'Lynx Constellation', 110, 'GAL-002');
INSERT INTO constellation (id, distance, name, relative_distance, galaxy_id) VALUES ('CON-0005', 380, 'Wolf Constellation', 220, 'GAL-003');
INSERT INTO constellation (id, distance, name, relative_distance, galaxy_id) VALUES ('CON-0006', 410, 'Deer Constellation', 250, 'GAL-003');

CREATE TABLE solar_system
(
    id character varying(255) COLLATE pg_catalog."default" NOT NULL,
    name character varying(255) COLLATE pg_catalog."default",
    constellation_id character varying(255) COLLATE pg_catalog."default",
    CONSTRAINT solar_system_pkey PRIMARY KEY (id),
    CONSTRAINT fkecmb3m440sutb5y4d5gfx2xc4 FOREIGN KEY (constellation_id)
        REFERENCES constellation (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
-----------------------------------------Universum 01------------------------------------------------------------------
INSERT INTO solar_system (id, name, constellation_id) VALUES ('SOL-000001', 'Say Goodbye', 'CON-0001');
INSERT INTO solar_system (id, name, constellation_id) VALUES ('SOL-000002', 'New Adventure', 'CON-0001');
INSERT INTO solar_system (id, name, constellation_id) VALUES ('SOL-000003', 'I dont get it', 'CON-0001');
INSERT INTO solar_system (id, name, constellation_id) VALUES ('SOL-000004', 'Brick in the wall', 'CON-0002');
INSERT INTO solar_system (id, name, constellation_id) VALUES ('SOL-000005', 'Close to nothing', 'CON-0002');
INSERT INTO solar_system (id, name, constellation_id) VALUES ('SOL-000006', 'Good job', 'CON-0002');

CREATE TABLE planet
(
    id character varying(255) COLLATE pg_catalog."default" NOT NULL,
    crystal_index double precision,
    deuter_index double precision,
    fields integer,
    garbage_field character varying(255) COLLATE pg_catalog."default",
    metal_index double precision,
    name character varying(255) COLLATE pg_catalog."default",
    owner character varying(255) COLLATE pg_catalog."default",
    solar_system_id character varying(255) COLLATE pg_catalog."default",
    CONSTRAINT planet_pkey PRIMARY KEY (id),
    CONSTRAINT fk324kviu39hpit21i6jvl3g4pj FOREIGN KEY (solar_system_id)
        REFERENCES solar_system (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
-----------------------------------------Universum 01------------------------------------------------------------------
INSERT INTO planet (id, name, garbage_field, metal_index, crystal_index, deuter_index, fields, owner, solar_system_id) VALUES ('PLT-00000001', 'Planet1', '', 0.8, 1.1, 0.9, 220, '', 'SOL-000001');
INSERT INTO planet (id, name, garbage_field, metal_index, crystal_index, deuter_index, fields, owner, solar_system_id) VALUES ('PLT-00000002', 'Planet2', '', 0.9, 0.8, 1.5, 200, '', 'SOL-000001');
INSERT INTO planet (id, name, garbage_field, metal_index, crystal_index, deuter_index, fields, owner, solar_system_id) VALUES ('PLT-00000003', 'Planet3', '', 0.9, 0.9, 1.4, 180, '', 'SOL-000001');
INSERT INTO planet (id, name, garbage_field, metal_index, crystal_index, deuter_index, fields, owner, solar_system_id) VALUES ('PLT-00000004', 'Planet4', '', 1.0, 1.1, 0.8, 250, '', 'SOL-000001');
INSERT INTO planet (id, name, garbage_field, metal_index, crystal_index, deuter_index, fields, owner, solar_system_id) VALUES ('PLT-00000005', 'Planet5', '', 1.0, 1.1, 0.9, 330, '', 'SOL-000001');
INSERT INTO planet (id, name, garbage_field, metal_index, crystal_index, deuter_index, fields, owner, solar_system_id) VALUES ('PLT-00000006', 'Planet6', '', 1.1, 1.1, 1.0, 168, '', 'SOL-000001');
INSERT INTO planet (id, name, garbage_field, metal_index, crystal_index, deuter_index, fields, owner, solar_system_id) VALUES ('PLT-00000007', 'Planet7', '', 0.7, 1.1, 0.95, 145, '', 'SOL-000001');
INSERT INTO planet (id, name, garbage_field, metal_index, crystal_index, deuter_index, fields, owner, solar_system_id) VALUES ('PLT-00000008', 'Planet8', '', 0.8, 1.1, 1.05, 77, '', 'SOL-000001');
INSERT INTO planet (id, name, garbage_field, metal_index, crystal_index, deuter_index, fields, owner, solar_system_id) VALUES ('PLT-00000009', 'Planet9', '', 1.2, 1.1, 0.7, 220, '', 'SOL-000001');
INSERT INTO planet (id, name, garbage_field, metal_index, crystal_index, deuter_index, fields, owner, solar_system_id) VALUES ('PLT-00000010', 'Planet10', '', 0.6, 1.1, 1.0, 240, '', 'SOL-000001');
INSERT INTO planet (id, name, garbage_field, metal_index, crystal_index, deuter_index, fields, owner, solar_system_id) VALUES ('PLT-00000011', 'Planet11', '', 0.9, 1.1, 0.65, 180, '', 'SOL-000001');
INSERT INTO planet (id, name, garbage_field, metal_index, crystal_index, deuter_index, fields, owner, solar_system_id) VALUES ('PLT-00000012', 'Planet12', '', 0.8, 1.1, 1.1, 120, '', 'SOL-000001');
INSERT INTO planet (id, name, garbage_field, metal_index, crystal_index, deuter_index, fields, owner, solar_system_id) VALUES ('PLT-00000013', 'Planet13', '', 0.95, 1.1, 0.95, 250, '', 'SOL-000001');
INSERT INTO planet (id, name, garbage_field, metal_index, crystal_index, deuter_index, fields, owner, solar_system_id) VALUES ('PLT-00000014', 'Planet14', '', 0.75, 1.1, 0.8, 198, '', 'SOL-000001');
INSERT INTO planet (id, name, garbage_field, metal_index, crystal_index, deuter_index, fields, owner, solar_system_id) VALUES ('PLT-00000015', 'Planet15', '', 1.05, 1.1, 0.86, 211, '', 'SOL-000001');
INSERT INTO planet (id, name, garbage_field, metal_index, crystal_index, deuter_index, fields, owner, solar_system_id) VALUES ('PLT-00000016', 'Planet16', '', 1.15, 1.1, 0.65, 221, '', 'SOL-000001');

