create index ix_cities_lower_name on cities(lower(name));
create index ix_cities_code on cities(code);

create index ix_facilities_city on facilities(city_id);

create index ix_categories_subscriber_id on categories(subscriber_id);
create index ix_providers_subscriber_id on providers(subscriber_id);
create index ix_provider_locations_subscriber_id on provider_locations(subscriber_id);
create index ix_payments_city on payments(subscriber_id);
create index ix_items_city on items(subscriber_id);
create index ix_fulfillments_city on fulfillments(subscriber_id);


create index ix_provider_locations_lat_lng on provider_locations(lat,lng);
create index ix_provider_locations_max_lat_lat on provider_locations(max_lat,lat);
create index ix_provider_locations_min_max_lat_lng on provider_locations(min_lat,max_lat,min_lng,min_lng);

create index ix_crypto_keys on crypto_keys(purpose,alias);

create index ix_fulfillments_object_id on fulfillments(object_id,provider_id);
create index ix_providers_object_id on providers(object_id,subscriber_id);
create index ix_provider_locations_object_id on provider_locations(object_id,provider_id);
create index ix_items_object_id on items(object_id,provider_id);
create index ix_items_domain on items(domain); 

create index ix_payments_object_id on payments(object_id,provider_id);
create index ix_categories_object_id on categories(object_id,provider_id);

create index ix_provider_tags_provider_id on provider_tags(provider_id);







