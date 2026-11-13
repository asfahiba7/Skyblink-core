CREATE TABLE IF NOT EXISTS sky_objects (
    id INTEGER PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    category VARCHAR(80) NOT NULL,
    description TEXT,
    distance_light_years BIGINT,
    discovery_year VARCHAR(80)
);

INSERT INTO sky_objects
    (id, name, category, description, distance_light_years, discovery_year)
VALUES
    (1, 'Andromeda Galaxy', 'Galaxy',
     'A nearby spiral galaxy visible in the night sky.',
     2537000, 'Ancient observation'),
    (2, 'Orion Nebula', 'Nebula',
     'A star-forming region in the constellation Orion.',
     1344, '1610'),
    (3, 'Pleiades', 'Star Cluster',
     'A bright open star cluster also known as the Seven Sisters.',
     444, 'Ancient observation'),
    (4, 'Sombrero Galaxy', 'Galaxy',
     'A galaxy known for its bright central bulge and dark dust lane.',
     31000000, '1781')
ON CONFLICT (id) DO NOTHING;
