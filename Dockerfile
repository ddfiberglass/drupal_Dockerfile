FROM bitnami/drupal:9
RUN cd /opt/bitnami/drupal && COMPOSER_MEMORY_LIMIT=-1 composer require drupal/smtp drupal/field_permissions drupal/search_api drupal/facets drupal/chosen drupal/address drupal/profile drupal/metatag drupal/pathauto drupal/geofield drupal/field_group drupal/leaflet drupal/geocoder drupal/geolocation drupal/gin:^3.0@alpha drupal/taxonomy_manager --update-with-dependencies 
COPY add_files /opt/bitnami/drupal
RUN cd /opt/bitnami/drupal && drush then claro olivero && drush en smtp field_permissions search_api facets chosen address profile metatag pathauto geofield field_group leaflet geocoder geolocation taxonomy_manager 
