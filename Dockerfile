FROM bitnami/drupal:10.0.3
# COPY add_files /opt/bitnami/drupal
RUN cd /opt/bitnami/drupal && composer require drupal/ctools:^3.11 drupal/admin_toolbar drupal/field_permissions drupal/search_api drupal/search_api_solr drupal/facets drupal/address drupal/pathauto drupal/smart_date drupal/smtp drupal/honeypot --update-with-dependencies


# RUN cd /opt/bitnami/drupal && composer update "drupal/core-*" --with-all-dependencies
# delete drupal/chosen drupal/geofield drupal/geofield_map drupal/leaflet drupal/taxonomy_manager drupal/geocoder:^3.29 drupal/geocoder_ajax_prepopulate geocoder-php/nominatim-provider  drupal/asset_injector
