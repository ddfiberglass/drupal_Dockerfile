FROM bitnami/drupal:9
COPY add_files /opt/bitnami/drupal
RUN cd /opt/bitnami/drupal && composer require drupal/chosen drupal/admin_toolbar drupal/field_permissions drupal/search_api drupal/search_api_solr drupal/facets drupal/chosen drupal/address drupal/profile drupal/pathauto drupal/geofield drupal/geofield_map drupal/leaflet drupal/taxonomy_manager drupal/smart_date drupal/smtp drupal/honeypot drupal/asset_injector drupal/geocoder drupal/geocoder_ajax_prepopulate geocoder-php/nominatim-provider drupal/simplenews:^3.0 --update-with-dependencies
# COPY add_files /opt/bitnami/drupal
# RUN cp /opt/bitnami/drupal/composer.json.bak /opt/bitnami/drupal/composer.json
# RUN cd /opt/bitnami/drupal && composer update -W


# delete  drupal/simplenews:^3.0 
 
