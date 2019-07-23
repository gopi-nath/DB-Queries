create table computed_tags (client_code text, tag_id text, upin text, assignment_time timestamp, origin text, valid_till timestamp, active boolean, PRIMARY KEY (client_code, tag_id, upin));


create table origin_priority ( client_code text, tag_id text, origin text, priority integer CHECK (priority >= 0) NOT NULL, PRIMARY KEY (client_code, origin, tag_id));


create table tags ( tag_category text, tag_id text, PRIMARY KEY (tag_category, tag_id));


create table tag_rules (client_code text, origin text, tag_id text, rule text, ttl text, PRIMARY KEY (client_code, origin, tag_id));

