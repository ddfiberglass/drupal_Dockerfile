FROM bitnami/drupal:9
RUN cd /opt/bitnami/drupal && COMPOSER_MEMORY_LIMIT=-1 composer require drupal/smtp drupal/field_permissions drupal/search_api drupal/facets drupal/chosen drupal/profile drupal/metatag drupal/pathauto drupal/geofield drupal/field_group drupal/leaflet drupal/geocoder drupal/geolocation drupal/gin:^3.0@alpha
