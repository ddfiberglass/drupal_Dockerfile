FROM bitnami/drupal:9
COPY add_files /opt/bitnami/drupal
RUN cd /opt/bitnami/drupal && composer require drupal/chosen drupal/admin_toolbar drupal/field_permissions drupal/search_api drupal/search_api_solr drupal/facets drupal/chosen drupal/address drupal/profile drupal/pathauto drupal/geofield drupal/geofield_map drupal/leaflet drupal/taxonomy_manager drupal/smart_date drupal/smtp drupal/honeypot drupal/simplenews drupal/search_api_solr --update-with-dependencies
# COPY add_files /opt/bitnami/drupal
# RUN cp /opt/bitnami/drupal/composer.json.bak /opt/bitnami/drupal/composer.json
# RUN cd /opt/bitnami/drupal && composer update -W


# delete  drupal/asset_injector:^2.8 drupal/simplenews:^3.0 
# drupal/geocoder geocoder-php/nominatim-provider drupal/geocoder_ajax_prepopulate   drupal/asset_injector:^2.8 drupal/search_api_solr:^4.2    drupal/admin_toolbar drupal/field_permissions drupal/search_api drupal/facets drupal/chosen drupal/address drupal/profile drupal/pathauto drupal/geofield drupal/geofield_map drupal/leaflet drupal/taxonomy_manager   drupal/smart_date drupal/smtp   --update-with-dependencies   
