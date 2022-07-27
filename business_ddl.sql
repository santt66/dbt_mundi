----BUSINESS TABLE----
--CREATE DDL
create table MUNDI.DBT_SABRUZZINI_SEED_DATA.BUSINESS
(
    ID                  VARCHAR(256),
    CUSTOMER_ID         VARCHAR(256),
    STATUS              VARCHAR(256),
    NAME                VARCHAR(256),
    TAX_ID              VARCHAR(256),
    REGISTRATION_NUMBER VARCHAR(256),
    TYPE                VARCHAR(256),
    ADDRESS VARIANT,
    _FIVETRAN_DELETED   BOOLEAN,
    _FIVETRAN_SYNCED TIMESTAMPTZ
);
--INSERT DATA--
INSERT INTO MUNDI.DBT_SABRUZZINI_SEED_DATA.BUSINESS (ID, CUSTOMER_ID, STATUS, NAME, TAX_ID, REGISTRATION_NUMBER, TYPE,
                                                   ADDRESS, _FIVETRAN_DELETED, _FIVETRAN_SYNCED)
    (SELECT 'USMYMTRPZ8',
            '63a35215-a42d-4233-a62f-7f9430180314',
            'active',
            'GGO3P8BTFE DRGFJ5D4AH',
            'USMYMTRPZ8',
            'USMYMTRPZ8',
            'exporter',
            TO_VARIANT(PARSE_JSON('{
            "city": "SALTILLO",
            "country": "CO",
            "number": "457",
            "state": "Coahuila",
            "street": "NUBES DEL CIELO",
            "zipCode": "258"
            }')),
            null,
            '2021-10-06 23:44:03.169000000 +00:00');
--
INSERT INTO MUNDI.DBT_SABRUZZINI_SEED_DATA.BUSINESS (ID, CUSTOMER_ID, STATUS, NAME, TAX_ID, REGISTRATION_NUMBER, TYPE,
                                                   ADDRESS, _FIVETRAN_DELETED, _FIVETRAN_SYNCED)
    (SELECT 'XYKBGYRKZC',
            '9a016308-5d8c-45c7-83cf-8dfb5dfe91a4',
            'active',
            'Y4SQPJ1BMI MJOP0KRFAE',
            'XYKBGYRKZC',
            'XYKBGYRKZC',
            'forwarder',
            TO_VARIANT(PARSE_JSON('{
            "city": "De Loredo",
            "country": "CA",
            "number": "789",
            "state": "California",
            "street": "SOUTH PARK",
            "zipCode": "78511"
            }')),
            null,
            '2021-09-08 21:28:48.528000000 +00:00');
--
INSERT INTO MUNDI.DBT_SABRUZZINI_SEED_DATA.BUSINESS (ID, CUSTOMER_ID, STATUS, NAME, TAX_ID, REGISTRATION_NUMBER, TYPE,
                                                   ADDRESS, _FIVETRAN_DELETED, _FIVETRAN_SYNCED)
    (SELECT 'JTD63CS1MI',
            '82a19bfa-2af2-411a-972d-96b488d0776a',
            'active',
            '2V4AR8S2LJ DJPWTBLB0W',
            'JTD63CS1MI',
            'JTD63CS1MI',
            'exporter',
            TO_VARIANT(PARSE_JSON('{})
            "city": "Cuzco",
            "country": "PE",
            "number": "41890",
            "state": "Leon",
            "street": "CALLE STREET",
            "zipCode": "660"
                }')),
            null,
            '2021-09-23 19:59:16.199000000 +00:00');
--
INSERT INTO MUNDI.DBT_SABRUZZINI_SEED_DATA.BUSINESS (ID, CUSTOMER_ID, STATUS, NAME, TAX_ID, REGISTRATION_NUMBER, TYPE,
                                                   ADDRESS, _FIVETRAN_DELETED, _FIVETRAN_SYNCED)
    (SELECT 'WFIIN4JUGW',
            '5690ae86-5acb-4bcb-af03-a7888e5d20dd',
            'active',
            '2BRGXPI0XA S5NI7YWFP0',
            'WFIIN4JUGW',
            'WFIIN4JUGW',
            'exporter',
            TO_VARIANT(PARSE_JSON('{
            "city": "PANTLA DE OSA",
            "country": "MX",
            "number": "357",
            "state": "CDMX",
            "street": "CALLE NOMBRE",
            "zipCode": "540"
            }')),
            null,
            '2021-09-14 20:02:55.612000000 +00:00');
--
INSERT INTO MUNDI.DBT_SABRUZZINI_SEED_DATA.BUSINESS (ID, CUSTOMER_ID, STATUS, NAME, TAX_ID, REGISTRATION_NUMBER, TYPE,
                                                   ADDRESS, _FIVETRAN_DELETED, _FIVETRAN_SYNCED)
    (SELECT 'DPYFWQQ1GE',
            'c8d84613-e410-4f17-baed-2fb6ffc4ffed',
            'active',
            'PTGXMSWWME GKT6HSYBXO',
            'DPYFWQQ1GE',
            'DPYFWQQ1GE',
            'forwarder',
            TO_VARIANT(PARSE_JSON('{})
            "city": "Buenos Aires",
            "country": "AR",
            "number": "4390",
            "state": "Buenos Aires",
            "street": "Av. La Plata",
            "zipCode": "645"
                }')),
            null,
            '2021-08-15 05:33:45.357000000 +00:00');
--
INSERT INTO MUNDI.DBT_SABRUZZINI_SEED_DATA.BUSINESS (ID, CUSTOMER_ID, STATUS, NAME, TAX_ID, REGISTRATION_NUMBER, TYPE,
                                                   ADDRESS, _FIVETRAN_DELETED, _FIVETRAN_SYNCED)
    (SELECT 'OCTGQ52WXI',
            '8be46e08-19b3-4d97-9af0-0d9e0a915be3',
            'active',
            'IMFXPV8ZTR IC7JCWGUPG',
            'OCTGQ52WXI',
            'OCTGQ52WXI',
            'exporter',
            TO_VARIANT(PARSE_JSON('{
            "city": "San Pedro",
            "country": "MX",
            "number": "51487",
            "state": "Baja Marea",
            "street": "Mediterraneo",
            "zipCode": "661"
            }')),
            null,
            '2021-08-15 05:33:45.369000000 +00:00');
--
INSERT INTO MUNDI.DBT_SABRUZZINI_SEED_DATA.BUSINESS (ID, CUSTOMER_ID, STATUS, NAME, TAX_ID, REGISTRATION_NUMBER, TYPE,
                                                   ADDRESS, _FIVETRAN_DELETED, _FIVETRAN_SYNCED)
    (SELECT 'O1EQU5SDZ8',
            'bb9922de-e773-4cd3-89f3-6343fd15564e',
            'active',
            'XPS5RGHNKY 68MPMOBRLM',
            'O1EQU5SDZ8',
            'O1EQU5SDZ8',
            'exporter',
            TO_VARIANT(PARSE_JSON('{})
            "city": "New York",
            "country": "US",
            "number": "1251",
            "state": "New York",
            "street": "13 St Blvd",
            "zipCode": "900-06"
                }')),
            null,
            '2022-05-04 15:13:46.655000000 +00:00');
--
INSERT INTO MUNDI.DBT_SABRUZZINI_SEED_DATA.BUSINESS (ID, CUSTOMER_ID, STATUS, NAME, TAX_ID, REGISTRATION_NUMBER, TYPE,
                                                   ADDRESS, _FIVETRAN_DELETED, _FIVETRAN_SYNCED)
    (SELECT 'L4OOURHYGH',
            'dfc35b3b-3090-4776-9eea-bc004c23976d',
            'active',
            'WOZGSIOK2V KIKARCJ3H5',
            'L4OOURHYGH',
            'L4OOURHYGH',
            'exporter',
            TO_VARIANT(PARSE_JSON('{
            "city": "Gomez",
            "country": "CO",
            "number": "450",
            "state": "San Juan",
            "street": "Av. Yrigoyen",
            "zipCode": "328"
            }')),
            null,
            '2021-08-15 05:33:45.354000000 +00:00');
--
INSERT INTO MUNDI.DBT_SABRUZZINI_SEED_DATA.BUSINESS (ID, CUSTOMER_ID, STATUS, NAME, TAX_ID, REGISTRATION_NUMBER, TYPE,
                                                   ADDRESS, _FIVETRAN_DELETED, _FIVETRAN_SYNCED)
    (SELECT 'BGY6EFSQ8Z',
            '07e85a5c-8b31-44ea-8106-0f8411222b64',
            'active',
            'IAB4HCWMFN Q0UZZAZ7N7',
            'BGY6EFSQ8Z',
            'BGY6EFSQ8Z',
            'forwarder',
            TO_VARIANT(PARSE_JSON('{})
            "city": "San Miguel",
            "country": "MX",
            "number": "11134",
            "state": "Capital",
            "street": "Calle Publica",
            "zipCode": "78225"
                }')),
            null,
            '2022-01-19 18:43:42.833000000 +00:00');
--
INSERT INTO MUNDI.DBT_SABRUZZINI_SEED_DATA.BUSINESS (ID, CUSTOMER_ID, STATUS, NAME, TAX_ID, REGISTRATION_NUMBER, TYPE,
                                                   ADDRESS, _FIVETRAN_DELETED, _FIVETRAN_SYNCED)
    (SELECT '6TGPCKRVLX',
            'a0fb7c60-e707-475c-96be-1a47072a1f6a',
            'active',
            'MT0K0TQAVL N2UCCPJAAE',
            '6TGPCKRVLX',
            '6TGPCKRVLX',
            'forwarder',
            TO_VARIANT(PARSE_JSON('{
            "city": "SAN JUAN",
            "country": "PR",
            "number": "70079",
            "state": "CENTRAL",
            "street": "PARRA ALTA",
            "zipCode": "37600"
            }')),
            null,
            '2021-08-15 05:33:45.365000000 +00:00');