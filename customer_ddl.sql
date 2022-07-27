----CUSTOMER TABLE----
--CREATE DDL
create table MUNDI.DBT_SABRUZZINI_SEED_DATA.CUSTOMER
(
    ID                VARCHAR(256),
    APPLICANT_ID      VARCHAR(256),
    STATUS            VARCHAR(256),
    TAX_ID            VARCHAR(256),
    ADDRESS VARIANT,
    EMAIL             VARCHAR(256),
    PHONE_NUMBER      VARCHAR(256),
    FIRST_NAME        VARCHAR(256),
    LAST_NAME         VARCHAR(256),
    VERSION           VARCHAR(256),
    _FIVETRAN_DELETED BOOLEAN,
    _FIVETRAN_SYNCED TIMESTAMPTZ
);
--INSERT DATA--
INSERT INTO MUNDI.DBT_SABRUZZINI_SEED_DATA.CUSTOMER (ID, APPLICANT_ID, STATUS, TAX_ID, ADDRESS, EMAIL, PHONE_NUMBER,
                                                     FIRST_NAME, LAST_NAME, VERSION, _FIVETRAN_DELETED,
                                                     _FIVETRAN_SYNCED)
    (SELECT '5690ae86-5acb-4bcb-af03-a7888e5d20dd',
            '5690ae86-5acb-4bcb-af03-a7888e5d20dd',
            'active',
            'WFIIN4JUGW',
            TO_VARIANT(PARSE_JSON('{
            "city": "PANTLA DE OSA",
            "country": "MX",
            "number": "357",
            "state": "CDMX",
            "street": "CALLE NOMBRE",
            "zipCode": "540"
             }')),
            '1BLYZTBYEI.DNockMvDyO@gmail.com',
            '+288310933',
            '1BLYZTBYEI KFNDEH9Q0P',
            'DNockMvDyO',
            '0',
            null,
            '2021-09-14 19:43:43.004000000 +00:00');
--
INSERT INTO MUNDI.DBT_SABRUZZINI_SEED_DATA.CUSTOMER (ID, APPLICANT_ID, STATUS, TAX_ID, ADDRESS, EMAIL, PHONE_NUMBER,
                                                     FIRST_NAME, LAST_NAME, VERSION, _FIVETRAN_DELETED,
                                                     _FIVETRAN_SYNCED)
    (SELECT '82a19bfa-2af2-411a-972d-96b488d0776a',
            '82a19bfa-2af2-411a-972d-96b488d0776a',
            'active',
            'JTD63CS1MI',
            TO_VARIANT(PARSE_JSON('{
            "city": "Cuzco",
            "country": "PE",
            "number": "41890",
            "state": "Leon",
            "street": "CALLE STREET",
            "zipCode": "660"
            }')),
            'L1I7V8W2NQ.Bfk4VYw8ov@gmail.com',
            '+458034815',
            'L1I7V8W2NQ YYWTK4MXEJ',
            'Bfk4VYw8ov',
            '0',
            null,
            '2021-09-23 19:59:16.504000000 +00:00');
--
INSERT INTO MUNDI.DBT_SABRUZZINI_SEED_DATA.CUSTOMER (ID, APPLICANT_ID, STATUS, TAX_ID, ADDRESS, EMAIL, PHONE_NUMBER,
                                                     FIRST_NAME, LAST_NAME, VERSION, _FIVETRAN_DELETED,
                                                     _FIVETRAN_SYNCED)
    (SELECT '63a35215-a42d-4233-a62f-7f9430180314',
            '63a35215-a42d-4233-a62f-7f9430180314',
            'active',
            'USMYMTRPZ8',
            TO_VARIANT(PARSE_JSON('{
            "city": "SALTILLO",
            "country": "CO",
            "number": "457",
            "state": "Coahuila",
            "street": "NUBES DEL CIELO",
            "zipCode": "258"
            }')),
            'IDSR0VM1CI.I3ViFJJMol@gmail.com',
            '+268048412',
            'IDSR0VM1CI P73A7M4M5G',
            'I3ViFJJMol',
            '0',
            null,
            '2021-10-06 23:44:04.168000000 +00:00');
--
INSERT INTO MUNDI.DBT_SABRUZZINI_SEED_DATA.CUSTOMER (ID, APPLICANT_ID, STATUS, TAX_ID, ADDRESS, EMAIL, PHONE_NUMBER,
                                                     FIRST_NAME, LAST_NAME, VERSION, _FIVETRAN_DELETED,
                                                     _FIVETRAN_SYNCED)
    (SELECT '9a016308-5d8c-45c7-83cf-8dfb5dfe91a4',
            '9a016308-5d8c-45c7-83cf-8dfb5dfe91a4',
            'active',
            'XYKBGYRKZC',
            TO_VARIANT(PARSE_JSON('{
            "city": "De Loredo",
            "country": "CA",
            "number": "789",
            "state": "California",
            "street": "SOUTH PARK",
            "zipCode": "78511"
            }')),
            'ZQBU0BXOQ3.T0MEH1wJXS@gmail.com',
            '+216508366',
            'ZQBU0BXOQ3 BDNWC5PUNP',
            'T0MEH1wJXS',
            '0',
            null,
            '2021-09-08 21:28:48.550000000 +00:00');
--
INSERT INTO MUNDI.DBT_SABRUZZINI_SEED_DATA.CUSTOMER (ID, APPLICANT_ID, STATUS, TAX_ID, ADDRESS, EMAIL, PHONE_NUMBER,
                                                     FIRST_NAME, LAST_NAME, VERSION, _FIVETRAN_DELETED,
                                                     _FIVETRAN_SYNCED)
    (SELECT '8be46e08-19b3-4d97-9af0-0d9e0a915be3',
            '8be46e08-19b3-4d97-9af0-0d9e0a915be3',
            'active',
            'OCTGQ52WXI',
            TO_VARIANT(PARSE_JSON('{
            "city": "San Pedro",
            "country": "MX",
            "number": "51487",
            "state": "Baja Marea",
            "street": "Mediterraneo",
            "zipCode": "661"
            }')),
            'F1XFWNA6CZ.kogK0sXKWX@gmail.com',
            '+279217559',
            'F1XFWNA6CZ PBBLBKRXVD',
            'kogK0sXKWX',
            '1',
            null,
            '2021-08-15 05:33:45.840000000 +00:00');
--
INSERT INTO MUNDI.DBT_SABRUZZINI_SEED_DATA.CUSTOMER (ID, APPLICANT_ID, STATUS, TAX_ID, ADDRESS, EMAIL, PHONE_NUMBER,
                                                     FIRST_NAME, LAST_NAME, VERSION, _FIVETRAN_DELETED,
                                                     _FIVETRAN_SYNCED)
    (SELECT 'bb9922de-e773-4cd3-89f3-6343fd15564e',
            'bb9922de-e773-4cd3-89f3-6343fd15564e',
            'active',
            'O1EQU5SDZ8',
            TO_VARIANT(PARSE_JSON('{
            "city": "New York",
            "country": "US",
            "number": "1251",
            "state": "New York",
            "street": "13 St Blvd",
            "zipCode": "900-06"
            }')),
            'QBE3JCZFDY.yRlwSJ8JQT@gmail.com',
            '+643630257',
            'QBE3JCZFDY FOSDAOR4PV',
            'yRlwSJ8JQT',
            '4',
            null,
            '2022-05-04 15:13:45.951000000 +00:00');
--
INSERT INTO MUNDI.DBT_SABRUZZINI_SEED_DATA.CUSTOMER (ID, APPLICANT_ID, STATUS, TAX_ID, ADDRESS, EMAIL, PHONE_NUMBER,
                                                     FIRST_NAME, LAST_NAME, VERSION, _FIVETRAN_DELETED,
                                                     _FIVETRAN_SYNCED)
    (SELECT '07e85a5c-8b31-44ea-8106-0f8411222b64',
            '07e85a5c-8b31-44ea-8106-0f8411222b64',
            'active',
            'BGY6EFSQ8Z',
            TO_VARIANT(PARSE_JSON('{
            "city": "San Miguel",
            "country": "MX",
            "number": "11134",
            "state": "Capital",
            "street": "Calle Publica",
            "zipCode": "78225"
            }')),
            'J9ZAHDEABJ.CYigspxJ6G@gmail.com',
            '+129011760',
            'J9ZAHDEABJ JGCY63PKFU',
            'CYigspxJ6G',
            '1',
            null,
            '2021-08-15 05:33:45.824000000 +00:00');
--
INSERT INTO MUNDI.DBT_SABRUZZINI_SEED_DATA.CUSTOMER (ID, APPLICANT_ID, STATUS, TAX_ID, ADDRESS, EMAIL, PHONE_NUMBER,
                                                     FIRST_NAME, LAST_NAME, VERSION, _FIVETRAN_DELETED,
                                                     _FIVETRAN_SYNCED)
    (SELECT 'a0fb7c60-e707-475c-96be-1a47072a1f6a',
            'a0fb7c60-e707-475c-96be-1a47072a1f6a',
            'active',
            '6TGPCKRVLX',
            TO_VARIANT(PARSE_JSON('{
            "city": "SAN JUAN",
            "country": "PR",
            "number": "70079",
            "state": "CENTRAL",
            "street": "PARRA ALTA",
            "zipCode": "37600"
            }')),
            'FVWFIJZTEI.ZgxOAqoRXy@gmail.com',
            '+542628120',
            'FVWFIJZTEI SUWVJWW6ZK',
            'ZgxOAqoRXy',
            '1',
            null,
            '2021-08-15 05:33:45.841000000 +00:00');
--
INSERT INTO MUNDI.DBT_SABRUZZINI_SEED_DATA.CUSTOMER (ID, APPLICANT_ID, STATUS, TAX_ID, ADDRESS, EMAIL, PHONE_NUMBER,
                                                     FIRST_NAME, LAST_NAME, VERSION, _FIVETRAN_DELETED,
                                                     _FIVETRAN_SYNCED)
    (SELECT 'dfc35b3b-3090-4776-9eea-bc004c23976d',
            'dfc35b3b-3090-4776-9eea-bc004c23976d',
            'active',
            'L4OOURHYGH',
            TO_VARIANT(PARSE_JSON('{
            "city": "Gomez",
            "country": "CO",
            "number": "450",
            "state": "San Juan",
            "street": "Av. Yrigoyen",
            "zipCode": "328"
            }')),
            'NSQI2YGFJM.cdhTBkp0LQ@gmail.com',
            '+159671481',
            'NSQI2YGFJM 30TOQHFRZC',
            'cdhTBkp0LQ',
            '1',
            null,
            '2021-08-15 05:33:45.844000000 +00:00');
--
INSERT INTO MUNDI.DBT_SABRUZZINI_SEED_DATA.CUSTOMER (ID, APPLICANT_ID, STATUS, TAX_ID, ADDRESS, EMAIL, PHONE_NUMBER,
                                                     FIRST_NAME, LAST_NAME, VERSION, _FIVETRAN_DELETED,
                                                     _FIVETRAN_SYNCED)
    (SELECT 'c8d84613-e410-4f17-baed-2fb6ffc4ffed',
            'c8d84613-e410-4f17-baed-2fb6ffc4ffed',
            'active',
            'DPYFWQQ1GE',
            TO_VARIANT(PARSE_JSON('{
            "city": "Buenos Aires",
            "country": "AR",
            "number": "4390",
            "state": "Buenos Aires",
            "street": "Av. La Plata",
            "zipCode": "645"
            }')),
            'JOLDK9NJKS.UPjE8D4Dx9@gmail.com',
            '+971707093',
            'JOLDK9NJKS VEBQKXEEI2',
            'UPjE8D4Dx9',
            '1',
            null,
            '2021-08-17 01:15:02.608000000 +00:00');