FROM bitnami/drupal:9
RUN cd /opt/bitnami/drupal && COMPOSER_MEMORY_LIMIT=-1 composer require drupal/layout_builder_component_attributes:^1.2 drupal/search_api_solr drupal/smtp drupal/admin_toolbar drupal/field_permissions drupal/search_api drupal/facets drupal/chosen drupal/address drupal/profile drupal/pathauto drupal/geofield drupal/geofield_map drupal/leaflet drupal/geocoder geocoder-php/nominatim-provider drupal/geocoder_ajax_prepopulate:^2.0@RC drupal/taxonomy_manager --update-with-dependencies
COPY add_files /opt/bitnami/drupal
