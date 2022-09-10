FROM bitnami/drupal:9.4.4
COPY add_files /opt/bitnami/drupal
RUN cd /opt/bitnami/drupal && composer require drupal/ctools:^3.11 drupal/chosen drupal/admin_toolbar drupal/field_permissions drupal/search_api drupal/search_api_solr drupal/facets drupal/chosen drupal/address drupal/profile drupal/pathauto drupal/geofield drupal/geofield_map drupal/leaflet drupal/taxonomy_manager drupal/smart_date drupal/smtp drupal/honeypot drupal/asset_injector drupal/geocoder:^3.29 drupal/geocoder_ajax_prepopulate geocoder-php/nominatim-provider drupal/simplenews:^3.0@beta --update-with-dependencies
# RUN cd /opt/bitnami/drupal && composer update "drupal/core-*" --with-all-dependencies
