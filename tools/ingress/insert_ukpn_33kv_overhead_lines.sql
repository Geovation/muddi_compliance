--ORGANISATIONS
INSERT INTO muddi.organisations (name)
VALUES
('UK Power Networks');

--NETWORK
WITH object AS (
    INSERT INTO muddi.object (record_id, sf_geometry)
    SELECT
        md5(st_astext(st_collect(import.wkb_geometry))),
        st_collect(import.wkb_geometry) 
    FROM public."33kv_overhead_lines" AS import
    RETURNING id
), asset AS (
    INSERT INTO muddi.asset (object_id, asset_owner_id)
    SELECT
        object.id,
        organisations.id
    FROM object, muddi.organisations AS organisations
    WHERE organisations.name = 'UK Power Networks'
    RETURNING id
)
INSERT INTO muddi.network (asset_id, network_name, commodity_type)
SELECT 
    asset.id,
    'UKPN',
    'electricity'
FROM asset;

--SUBNETWORK
WITH object AS (
    INSERT INTO muddi.object (record_id, sf_geometry)
    SELECT
        md5(st_astext(st_collect(import.wkb_geometry))),
        st_collect(import.wkb_geometry) 
    FROM public."33kv_overhead_lines" AS import
    GROUP BY import.dno
    RETURNING id, record_id
), asset AS (
    INSERT INTO muddi.asset (object_id, asset_owner_id)
    SELECT
        object.id,
        organisations.id
    FROM object, muddi.organisations AS organisations
    WHERE organisations.name = 'UK Power Networks'
    RETURNING id, object_id
)
INSERT INTO muddi.network (asset_id, network_name, commodity_type, parent_network_id)
SELECT 
    asset.id,
    import.dno,
    'electricity',
    (SELECT id FROM muddi.network WHERE network_name = 'UKPN')
FROM asset
INNER JOIN object ON asset.object_id = object.id
INNER JOIN 
    (
        SELECT
            md5(st_astext(st_collect(wkb_geometry))) AS record_id,
            dno
        FROM public."33kv_overhead_lines"
        GROUP BY dno
    ) AS import 
    ON object.record_id = import.record_id;