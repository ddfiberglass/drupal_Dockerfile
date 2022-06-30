FROM bitnami/drupal:9.3.16-debian-11-r2
RUN cd /opt/bitnami/drupal && COMPOSER_MEMORY_LIMIT=-1 composer drupal/geocoder geocoder-php/nominatim-provider drupal/geocoder_ajax_prepopulate require drupal/automatic_updates:^2.0@beta drupal/symfony_mailer:^1.0@alpha drupal/asset_injector:^2.8 drupal/honeypot:^2.0 drupal/simplenews:^3.0@alpha drupal/metatag drupal/search_api_solr:^4.2 drupal/smart_date drupal/smtp drupal/admin_toolbar drupal/field_permissions drupal/search_api drupal/facets drupal/chosen drupal/address drupal/profile drupal/pathauto drupal/geofield drupal/geofield_map drupal/leaflet drupal/taxonomy_manager --update-with-dependencies
COPY add_files /opt/bitnami/drupal

# delete drupal/geocoder geocoder-php/nominatim-provider drupal/geocoder_ajax_prepopulate  
