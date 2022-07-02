FROM bitnami/drupal:9.3.16-debian-11-r2
RUN cd /opt/bitnami/drupal && COMPOSER_MEMORY_LIMIT=-1 composer require drupal/chosen
COPY add_files /opt/bitnami/drupal

# delete drupal/geocoder geocoder-php/nominatim-provider drupal/geocoder_ajax_prepopulate   drupal/asset_injector:^2.8 drupal/search_api_solr:^4.2    drupal/admin_toolbar drupal/field_permissions drupal/search_api drupal/facets drupal/chosen drupal/address drupal/profile drupal/pathauto drupal/geofield drupal/geofield_map drupal/leaflet drupal/taxonomy_manager   drupal/smart_date drupal/smtp   --update-with-dependencies   
