FROM bitnami/drupal:9
RUN cd /opt/bitnami/drupal && COMPOSER_MEMORY_LIMIT=-1 composer require drupal/search_api_solr drupal/smtp drupal/admin_toolbar drupal/field_permissions drupal/search_api drupal/facets drupal/chosen drupal/address drupal/profile drupal/metatag drupal/pathauto drupal/geofield drupal/field_group drupal/leaflet drupal/geocoder geocoder-php/google-maps-provider drupal/geolocation drupal/gin:^3.0@alpha drupal/taxonomy_manager --update-with-dependencies
COPY add_files /opt/bitnami/drupal
