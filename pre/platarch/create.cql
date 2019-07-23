CREATE TABLE record_linkage.member_coordinates_v2 (
                                                      upin text, last_updated timestamp, addresses map<text, frozen<address_udt>>, emails map<text, text>,
                                                      phone_numbers map<text, text>, source text PRIMARY KEY (upin, last_updated))
WITH CLUSTERING ORDER BY (last_updated DESC
);

/* New table for member_preferences */
CREATE TABLE eviveportal.member_preferences_v2 (
                                                   upin text, client_code text, last_updated timestamp, banner_optout_status text, locale text, mobile_os text,
                                                   mode_of_contact text, preferred_address_category text, preferred_email_category text, preferred_phone_category text,
                                                   source text, PRIMARY KEY ((upin, client_code), last_updated)) WITH CLUSTERING ORDER BY (last_updated DESC
);

/* New table for user_id */
CREATE TABLE record_linkage.user_id (
                                        id text,
                                        client_code text,
                                        type text,
                                        relationship_code text,
                                        upin text,
                                        PRIMARY KEY ((id, client_code), type, relationship_code, upin)
    ) WITH CLUSTERING ORDER BY (type ASC, relationship_code ASC, upin ASC);

